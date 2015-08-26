//
//  main.c
//  Challenge-DateIn4MillionSeconds
//
//  Created by James Birchall on 26/08/2015.
//  Copyright (c) 2015 James Birchall. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {

    long timeInSecondsSince1970ToNow = time(NULL);
    
    struct tm nowTimeStruct;
    
    localtime_r(&timeInSecondsSince1970ToNow, &nowTimeStruct);
    
    printf("Date and time now is: %d/%d/%d - %d:%d:%d.\n", nowTimeStruct.tm_mday, nowTimeStruct.tm_mon+1, nowTimeStruct.tm_year+1900, nowTimeStruct.tm_hour, nowTimeStruct.tm_min, nowTimeStruct.tm_sec);
    
    long timeIn4millionseconds = timeInSecondsSince1970ToNow + 4000000;
    
    struct tm fourMillionSecondsFromNowTimeStruct;
    
    localtime_r(&timeIn4millionseconds, &fourMillionSecondsFromNowTimeStruct);
    
    printf("Date and time in 4M secs is: %d/%d/%d - %d:%d:%d.\n", fourMillionSecondsFromNowTimeStruct.tm_mday, fourMillionSecondsFromNowTimeStruct.tm_mon+1, fourMillionSecondsFromNowTimeStruct.tm_year+1900, fourMillionSecondsFromNowTimeStruct.tm_hour, fourMillionSecondsFromNowTimeStruct.tm_min, fourMillionSecondsFromNowTimeStruct.tm_sec);
    
    return 0;
}
