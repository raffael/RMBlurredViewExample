//
//  AppDelegate.h
//  RMBlurredViewExample
//
//  Created by Raffael Hannemann on 26.06.13.
//  Copyright (c) 2013 Raffael Hannemann. All rights reserved.
//

/** Note: check out the corresponding repository on https://github.com/raffael/RMBlurredView/. */

#import <Cocoa/Cocoa.h>
#import <QuartzCore/QuartzCore.h>
#import "RMBlurredView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>
@property (strong) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSScrollView *scrollView;
@property (strong) IBOutlet RMBlurredView *view1;
@property (strong) IBOutlet RMBlurredView *view2;
@end
