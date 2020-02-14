//
//  User.h
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, copy) NSString *name;
@property (assign) float age;

-(BOOL)shouldHeDateIfHerAgeIs: (float)age;
-(instancetype)initWithName: (NSString*) name Age: (float)age;

@end

NS_ASSUME_NONNULL_END
