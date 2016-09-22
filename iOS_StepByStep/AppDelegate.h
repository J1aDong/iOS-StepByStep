//
//  AppDelegate.h
//  iOS_StepByStep
//
//  Created by J1aDong on 2016/9/22.
//  Copyright © 2016年 J1aDong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

