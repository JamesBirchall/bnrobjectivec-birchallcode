//
//  main.m
//  ClassAct
//
//  Created by James Birchall on 28/09/2015.
//  Copyright © 2015 James Birchall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/objc-runtime.h>
#import "JABTowel.h"

NSArray *JABHierachyForClass(Class cls){
    NSMutableArray *classHierachy = [NSMutableArray array];
    
    for (Class c = cls; c != nil; c = class_getSuperclass(c)) {
        NSString *className  = NSStringFromClass(c);
        [classHierachy insertObject:className atIndex:0];
    }
    
    return classHierachy;
}

NSArray *methodsForClass(Class cls){
    unsigned int methodCount = 0;
    
    Method *methodList = class_copyMethodList(cls, &methodCount);
    
    NSMutableArray *methodArray = [NSMutableArray array];
    
    for (int m = 0; m < methodCount; m++) {
        Method currentMethod = methodList[m];
        
        SEL methodSelector = method_getName(currentMethod);
        
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    
    return methodArray;
}

NSArray *instanceVariables(Class cls){
    NSMutableArray *instanceVariableList = [NSMutableArray array];
    
    unsigned int instanceCount = 0;
    
    Ivar *iVarList = class_copyIvarList(cls, &instanceCount);
    
    for (int i = 0; i < instanceCount; i++) {
        Ivar currentVar = iVarList[i];
        
        NSString *iVarName = [NSString stringWithCString:ivar_getName(currentVar) encoding:NSUTF8StringEncoding];
        
        [instanceVariableList addObject:iVarName];
    }
    
    return instanceVariableList;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        JABTowel *myTowel = [JABTowel new];
        
        [myTowel addObserver:nil forKeyPath:@"location" options:NSKeyValueObservingOptionNew context:NULL];
        
        
        NSMutableArray *runtimeClassesInfo = [NSMutableArray array];

        unsigned int classCount = 0;
        
        Class *classList = objc_copyClassList(&classCount);
        
        for (int i = 0; i < classCount; i++) {
            Class currentClass = classList[i];
            
            NSString *className = NSStringFromClass(currentClass);
            
            //NSLog(@"%@", className);
            
            NSArray *hierachy = JABHierachyForClass(currentClass);
            NSArray *methods = methodsForClass(currentClass);
            NSArray *instanceVars = instanceVariables(currentClass);
            
            NSDictionary *classInfoDict = @{@"classname" : className,
                                            @"instanceVars" : instanceVars,
                                            @"hierachy" : hierachy,
                                            @"methods" : methods};
            
            [runtimeClassesInfo addObject:classInfoDict];
        }
        free(classList);
        
        NSSortDescriptor *alphaAsc = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
        
        NSArray *sortedArray = [runtimeClassesInfo sortedArrayUsingDescriptors:@[alphaAsc]];
        
        NSLog(@"There are %ld classes registered with this program's runtime.\n", sortedArray.count);
        
        NSLog(@"%@", sortedArray);
        
        
        [myTowel removeObserver:nil forKeyPath:@"location"];
    }
    return 0;
}
