//
//  AppDelegate.h
//  MyFirstApp
//
//  Created by ruroot on 10/4/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

