//
//  THDockView.m
//  McAnimation_AnimationCombo_Dock
//
//  Created by Hao Tan on 12-5-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "THDockView.h"

@implementation THDockView


- (void)mouseDown:(NSEvent *)theEvent
{
    
    NSRect  windowFrame = [self.window frame];
//    initialLocation = [self.window convertBaseToScreen:[theEvent locationInWindow]];
    NSRect rect = NSMakeRect([theEvent locationInWindow].x, [theEvent locationInWindow].y, windowFrame.size.width, windowFrame.size.height);
    NSRect  rectConvert = [self.window convertRectToScreen:rect];
    initialLocation = NSMakePoint(rectConvert.origin.x, rectConvert.origin.y);
    initialLocation.x -= windowFrame.origin.x;
    initialLocation.y -= windowFrame.origin.y;
}

- (void)mouseDragged:(NSEvent *)theEvent
{
    
    NSPoint currentLocation;
    NSPoint newOrigin;
    NSRect  screenFrame = [[NSScreen mainScreen] frame];
    NSRect  windowFrame = [self.window frame];
    NSRect  rectConvert = [self.window convertRectToScreen:NSMakeRect([self.window mouseLocationOutsideOfEventStream].x, [self.window mouseLocationOutsideOfEventStream].y, windowFrame.size.width, windowFrame.size.height)];
    currentLocation = NSMakePoint(rectConvert.origin.x, rectConvert.origin.y);
    newOrigin.x = currentLocation.x - initialLocation.x;
    newOrigin.y = currentLocation.y - initialLocation.y;
    if( (newOrigin.y+windowFrame.size.height) > (screenFrame.origin.y+screenFrame.size.height))
    {
        newOrigin.y=screenFrame.origin.y + (screenFrame.size.height-windowFrame.size.height);
    }
    [self.window setFrameOrigin:newOrigin];
}



@end
