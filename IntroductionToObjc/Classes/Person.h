//
//  Person.h
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Sweater;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, strong) Sweater *sweater;
@property (nonatomic, strong) NSString *name;

-(instancetype)initWithName: (NSString*)name;
-(NSString*)quote;

@end

NS_ASSUME_NONNULL_END
