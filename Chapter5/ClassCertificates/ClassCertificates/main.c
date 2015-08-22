//
//  main.c
//  ClassCertificates
//
//  Created by James Birchall on 22/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays){
    printf("%s has done as much %s programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {

    congratulateStudent("Emily", "Cocoa", 9);
    sleep(2);
    
    congratulateStudent("James", "Objective-C", 23);
    sleep(2);
    
    congratulateStudent("Mike", "Java", 32);
    sleep(2);
    
    congratulateStudent("Jimmy", "Perl", 12);
    
    // sleep() is a function that causes the calling thread to stop execution
    
    return 0;
}
