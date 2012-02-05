//
//  DetectingTapsAppDelegate.h
//  DetectingTaps
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetectingTapsViewController;

@interface DetectingTapsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DetectingTapsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DetectingTapsViewController *viewController;

@end

