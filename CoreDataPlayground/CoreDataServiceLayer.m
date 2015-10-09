//
//  CoreDataServiceLayer.m
//  CoreDataPlayground
//
//  Created by Andrew Medvedev on 08/10/15.
//  Copyright © 2015 Andrew Medvedev. All rights reserved.
//

#import "CoreDataServiceLayer.h"

static CoreDataServiceLayer* instance;

@implementation CoreDataServiceLayer

+ (instancetype)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CoreDataServiceLayer alloc] init];
    });
    return instance;
}


//- (void)saveStudent:
@end
