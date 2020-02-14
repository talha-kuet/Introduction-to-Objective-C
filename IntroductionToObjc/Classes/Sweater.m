//
//  Sweater.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

- (instancetype)initWithSweaterType:(SweaterType)type {
    if(self = [super init]) {
        _type = type;
    }
    return self;
}

-(NSString*)description {
    switch (_type) {
        case SweaterTypeGray:
            return @"Gray Sweater";
        case SweaterTypeBlue:
            return @"Blue Sweater";
            break;
    }
}

- (void)dealloc {
    NSLog(@"%s %@ Deallocated", __PRETTY_FUNCTION__, self);
}

@end
