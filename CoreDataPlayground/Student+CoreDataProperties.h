//
//  Student+CoreDataProperties.h
//  CoreDataPlayground
//
//  Created by Andrew Medvedev on 06/10/15.
//  Copyright © 2015 Andrew Medvedev. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *group;
@property (nullable, nonatomic, retain) NSNumber *mark;

@end

NS_ASSUME_NONNULL_END
