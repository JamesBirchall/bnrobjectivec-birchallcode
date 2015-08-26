//
//  main.c
//  BMICalc
//
//  Created by James Birchall on 25/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>

//struct Person{
//    char *name;
//    float heightInMeters;
//    int weightInKilos;
//};

typedef struct {
    char *name;
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

void printDetails(Person subject){
    printf("%s is %.2f meters tall and weighs %d kilos, BMI = %.2f.\n",subject.name, subject.heightInMeters, subject.weightInKilos, bodyMassIndex(subject));
}

int main(int argc, const char * argv[]) {

    Person jimmy;
    
    jimmy.name = "Jimmy";
    jimmy.heightInMeters = 1.7;
    jimmy.weightInKilos = 60;
    
    Person johnny;
    
    johnny.name = "Johnny";
    johnny.heightInMeters = 1.6;
    johnny.weightInKilos = 76;
    
    printDetails(jimmy);
    printDetails(johnny);
    
    
    
    return 0;
}
