//
//  RNSketchCanvasManager.m
//  RNSketchCanvas
//
//  Created by juan Jimenez on 16/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNSketchCanvasManager.h"
#import "RNSketchCanvasView.h"

@implementation RNSketchCanvasManager
- (UIView *)view
{
    
    RNSketchCanvasView *OGWaveformView =  [[RNSketchCanvasView alloc] initWithBridge:self.bridge];
    [RNSketchCanvasView setDelegate:self];
    return RNSketchCanvas;
}
RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
@end
