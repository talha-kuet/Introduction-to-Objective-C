//
//  User.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name Age:(float)age {
    
    if ((self = [super init])) {
        _name = name;
        _age = age;
    }
    
    return self;
}

- (BOOL)shouldHeDateIfHerAgeIs:(float)age {
    
    float minAgeToDate = _age/2 + 7;
    return age > minAgeToDate;
}

@end
