////
////  ObjectContext.m
////  CoreDataPlayground
////
////  Created by Andrew Medvedev on 06/10/15.
////  Copyright © 2015 Andrew Medvedev. All rights reserved.
////
//
//#import "ObjectContext.h"
//
//static NSManagedObjectContext* mainContext;
//static NSManagedObjectContext* backgroundContext;
//
//
//@implementation NSManagedObjectContext (ObjectContext)
//
////---------------------------------------------------------------------
//+ (instancetype)mainObjectContextWith {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        mainContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
//    });
//    
//    return mainContext;
//}
//
////---------------------------------------------------------------------
//+ (instancetype)backgroundContext {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        backgroundContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSPrivateQueueConcurrencyType];
//        NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"CoreDataPlayground" withExtension:@"momd"];
//        NSManagedObjectModel* managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
//        NSPersistentStoreCoordinator* persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedObjectModel];
//        NSError *error = nil;
//        NSURL* stoderURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
//        if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:stoderURL options:nil error:&error]) {
//            [[NSFileManager defaultManager] removeItemAtURL:stoderURL error:&error];
//            [persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:stoderURL options:nil error:&error];
//        }
//        backgroundContext.persistentStoreCoordinator = persistentStoreCoordinator;
//    });
//    
//    return backgroundContext;
//}
//
////---------------------------------------------------------------------
//- (NSURL *)applicationDocumentsDirectory {
//    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
//}
//
////---------------------------------------------------------------------
//- (NSManagedObjectModel *)managedObjectModel {
//    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"CoreDataPlayground" withExtension:@"momd"];
//    NSManagedObjectModel* managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
//    return managedObjectModel;
//}
//
////---------------------------------------------------------------------
//- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
//    NSPersistentStoreCoordinator* persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
//    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"CoreDataPlayground.sqlite"];
//    NSError *error = nil;
//
//    if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
//        [[NSFileManager defaultManager] removeItemAtURL:storeURL error:&error];
//        [persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error];
//    }
//    
//    return persistentStoreCoordinator;
//}
//
//
//#pragma mark - Core Data Saving support
//
//- (void)saveMainContext {
//    if (mainContext != nil) {
//        NSError *error = nil;
//        if ([mainContext hasChanges] && ![mainContext save:&error]) {
//            // Replace this implementation with code to handle the error appropriately.
//            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
//            abort();
//        }
//    }
//}
//
//- (void)saveBackgroundContext {
//    if (mainContext != nil) {
//        NSError *error = nil;
//        if ([mainContext hasChanges] && ![mainContext save:&error]) {
//            // Replace this implementation with code to handle the error appropriately.
//            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
//            abort();
//        }
//    }
//}
//
//@end
