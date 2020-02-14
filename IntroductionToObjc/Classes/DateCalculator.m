//
//  DateCalculator.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator {
    
    // private instance variable here
    float _hisAge;
}

//implementation

-(void) setHisAge: (float)hisAge {
    _hisAge = hisAge;
}

-(float) hisAge {
    return _hisAge;
}

-(BOOL) shouldHeDateIfHerAgeIs: (float)herAge {
    float minAgeToDate = _hisAge/2 + 7;
    return herAge > minAgeToDate;
}

@end
