//
//  ViewController.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/3/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "ViewController.h"
#import "Utility/Constants.h"
#import "User.h"
#import "DateCalculator.h"
#import "Person.h"
#import "Sweater.h"
#import "DateCalculator+LoggingAdditions.h"
#import "BlockTester.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MARK:- ENUM
    VideoGameType gameType = VideoGameTypeFPS;
    NSLog(@"Game Type: %d", gameType);
    ShapeType shapeType = kCircle;
    NSLog(@"Shape Type: %u", shapeType);
    
    //MARK:- Class
    User *newUser = [[User alloc] initWithName:@"Shakib" Age:32];
    if ([newUser shouldHeDateIfHerAgeIs:22]) {
        NSLog(@"OK to Date %@", newUser.name);
    }
    else {
        NSLog(@"%@, you shouldn't date. You old man!!!", newUser.name);
    }
    
    DateCalculator *calc = [[DateCalculator alloc] init];
    [calc setHisAge:34];
    calc.hisAge = 35;
    [calc setHisName:@"Ray Wenderlich"];
    
    //MARK:- Category
    [calc log];
    
    BOOL shouldDate = [calc shouldHeDateIfHerAgeIs:24];
    
    if (shouldDate) {
        NSLog(@"%@, it's OK to Date brother", [calc hisName]);
    }
    else {
        NSLog(@"%@, you shouldn't date brother. You old man!!!", calc.hisName);
    }
    
    
    //MARK:- Memory Management With ARC
    /*
     retain - use for object before ARC
     strong - use for object in ARC. Synonym of retain
     weak - use for object
     assign - use for primitive types like char, int, float, double etc.
     */
    
    Person *ray = [[Person alloc] initWithName:@"Ray"];
    Person *vicky = [[Person alloc] initWithName:@"Vicky"];
    Sweater *graySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeGray];
    Sweater *blueSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlue];
    
    ray.sweater = graySweater;
    graySweater.person = ray;
    
    vicky.sweater = blueSweater;
    blueSweater.person = vicky;
    
    vicky.sweater = graySweater;
    graySweater.person = vicky;
    
    blueSweater.person = nil;
    ray.sweater = nil;
    
    NSLog(@"%@", ray.quote);
    
    
    //MARK:- Block
    BlockTester *tester = [[BlockTester alloc] init];
    [tester runTests];
    
}


@end
