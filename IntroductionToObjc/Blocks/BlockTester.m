//
//  BlockTester.m
//  IntroductionToObjc
//
//  Created by Mazegeek Mac Mini 2018 on 2/4/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "BlockTester.h"

//private interface
@interface BlockTester()

@property (nonatomic, copy) void (^block)(id, NSUInteger, BOOL*);

@end

@implementation BlockTester

-(void)runTests {
    
    //1 - Creating and calling a Block
    void (^MyBlock) (id, NSUInteger, BOOL*) = ^(id obj, NSUInteger index, BOOL *stop) {
        NSLog(@"This is a Block. Video Games: %@", (NSString*)obj);
    };

    BOOL stop;
    MyBlock(@"PUBG", 0, &stop);
    
    //2 - Passing a block to a method
    NSArray *videoGames = @[@"Commados", @"Need For Speed", @"Clash Royals"];
    [videoGames enumerateObjectsUsingBlock:MyBlock];
    
    //3 - Inline Form
    [videoGames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"Video Games: %@", (NSString*)obj);
    }];
    
    //4 - Test calling a method with a block as a parameter
    [self doSomethingWithBlock:^(id obj, NSUInteger index, BOOL *stop) {
        NSLog(@"Done!");
    }];
}

-(void)doSomethingWithBlock:(void (^)(id, NSUInteger, BOOL*)) block {
    self.block = block;
    [self performSelector:@selector(afterOneSecond) withObject:nil afterDelay:1.0];
}

-(void)afterOneSecond {
    BOOL stop;
    _block(@"Clash of Clans", 0, &stop);
}

@end
