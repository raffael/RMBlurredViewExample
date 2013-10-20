//
//  AppDelegate.m
//  RMBlurredViewExample
//
//  Created by Raffael Hannemann on 26.06.13.
//  Copyright (c) 2013 Raffael Hannemann. All rights reserved.
//

/** Note: check out the corresponding repository on https://github.com/raffael/RMBlurredView/. */

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	/** Creating a NSWindow with RMBlurredViews is easy: create a NSWindow and add some NSViews to it.
	 We make sure, the window's content view is layer-backed. */
	_window = [[NSWindow alloc] initWithContentRect:NSMakeRect(200, 200, 450, 300) styleMask:NSTitledWindowMask|NSClosableWindowMask backing:NSBackingStoreBuffered defer:YES];
	[_window makeKeyAndOrderFront:self];
	[_window.contentView setWantsLayer:YES];
	
	/** Let's create a scroll view with an image view attached to it. */
	NSScrollView *scroll = [[NSScrollView alloc] initWithFrame:NSMakeRect(0,0, 450, 300)];
	NSImageView *img = [[NSImageView alloc] initWithFrame:NSMakeRect(0, 0, 450, 680)];
	[img setBounds:NSMakeRect(0, 0, 450, 680)];
	[img setImage:[NSImage imageNamed:@"Wallpaper"]];
	[scroll setDocumentView:img];
	[scroll setHasVerticalScroller:YES];
	[scroll setBorderType:NSNoBorder];
	[scroll setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
	
	[_window.contentView addSubview:scroll];
	
	/** Now let's create two RMBlurredViews on top of it. */
	_view1 = [[RMBlurredView alloc] initWithFrame:NSMakeRect(0, 300-50, 450, 50)];
	_view2 = [[RMBlurredView alloc] initWithFrame:NSMakeRect(0, 0, 450, 50)];
	
	/** Set up the effect parameters. */
	[_view1 setBlurRadius:5.0]; // Hardly blurred
	[_view1 setSaturationFactor:2.0];
	[_view2 setBlurRadius:40.0]; // Heavily blurred
	[_view2 setSaturationFactor:3.0];
	
	/** And finally add them to the window's content view. */
	[_window.contentView addSubview:_view1];
	[_window.contentView addSubview:_view2];
	
	[_window setDelegate:self];
	
	/** Now run the app and scroll! */
}

@end
