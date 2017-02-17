//
//  AppDelegate.m
//  aaaa
//
//  Created by admin on 17/2/9.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.wc = [[WC alloc] initWithWindowNibName:@"WC"];
    [self.wc.window center];
    [self.wc.window makeKeyAndOrderFront:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
//- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag{
//    if (flag) {
//        return NO;
//    } else{
//    
//        [theApplication.windows.lastObject makeKeyAndOrderFront:nil];
//        
//        return YES;
//    }
//    
//}
@end
