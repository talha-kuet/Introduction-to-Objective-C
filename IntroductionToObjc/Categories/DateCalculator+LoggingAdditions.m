//
//  DateCalculator+LoggingAdditions.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "DateCalculator+LoggingAdditions.h"

@implementation DateCalculator (LoggingAdditions)

-(void)log {
    NSLog(@"A Calculator for %@, age %d.", self.hisName, (int)self.hisAge);
}

@end
