//
//  Person.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    if(self = [super init]) {
        _name = name;
        _sweater = nil;
    }
    
    return self;
}

-(NSString*)quote {
    return [[NSString alloc] initWithFormat:@"%@ says, Give my sweater back!", _name];
}

- (NSString *)description {
    if(_sweater) {
        return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
    }
    else {
        return _name;
    }
}

- (void)dealloc {
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
}

@end
