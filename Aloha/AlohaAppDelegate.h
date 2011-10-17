//
//  AlohaAppDelegate.h
//  Aloha
//
//  Created by App on 2011/9/29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AlohaViewController;

@interface AlohaAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AlohaViewController *viewController;

@end
