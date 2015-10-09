//
//  ObjectContext.h
//  CoreDataPlayground
//
//  Created by Andrew Medvedev on 06/10/15.
//  Copyright © 2015 Andrew Medvedev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (ObjectContext)

+ (instancetype)mainObjectContext;
+ (instancetype)backgroundContext;

- (void)saveBackgroundContext;
- (void)saveMainContext;

@end
