//
//  Sweater.h
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(unsigned char, SweaterType) {
    SweaterTypeGray,
    SweaterTypeBlue
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
@property (nonatomic, weak) Person *person;

-(instancetype)initWithSweaterType: (SweaterType)type;

@end

NS_ASSUME_NONNULL_END
