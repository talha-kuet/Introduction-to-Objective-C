//
//  DateCalculator.h
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

// put public methods here

// property create getter and setter method autometically
@property (strong, nonatomic) NSString* hisName;


-(void) setHisAge: (float)hisAge;
-(float) hisAge;

-(BOOL) shouldHeDateIfHerAgeIs: (float)herAge;

@end

NS_ASSUME_NONNULL_END
