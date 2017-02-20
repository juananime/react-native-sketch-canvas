//
//  RNSketchCanvasManager.m
//  RNSketchCanvas
//
//  Created by juan Jimenez on 16/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNSketchCanvasManager.h"


@implementation RNSketchCanvasManager
- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}



- (UIView *)view
{
    
    if(_rnView==nil){
       _rnView =  [[RNSketchCanvasView alloc] initWithBridge:self.bridge];
    }
     NSLog(@"RNSketchCanvasView :: ");
    return _rnView;
}


- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(drawLine: (nonnull NSNumber *)posX){
    RNSketchCanvasView * RNSketchView = (RNSketchCanvasView *) self.view ;
    [RNSketchView drawLine];
    
    
}
RCT_EXPORT_METHOD(drawSquare: (nonnull NSNumber *)posX posY:(nonnull NSNumber *)posY){
    RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch drawInitSquarePosX:posX andPosY:posY];
    
}
RCT_EXPORT_METHOD(updateSquare: (nonnull NSNumber *)posX posY:(nonnull NSNumber *)posY){
    RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch updateSquarePosX:posX andPosY:posY];
    
}
RCT_EXPORT_METHOD(drawTriangle: (nonnull NSNumber *)posX posY:(nonnull NSNumber *)posY){
    RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch drawInitTrianglePosX:posX andPosY:posY];
    
}
RCT_EXPORT_METHOD(updateTriangle: (nonnull NSNumber *)posX posY:(nonnull NSNumber *)posY){
    RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch updateTrianglePosX:posX andPosY:posY];
    
}
RCT_EXPORT_METHOD(updateFillColor: (nonnull NSNumber *)fillColor){
    
    RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch setUIFillColor:[RCTConvert UIColor:fillColor]];
}

RCT_EXPORT_METHOD(updateOutlineColor: (nonnull NSNumber *)outlineColor){
      RNSketchCanvasView *rnSketch = (RNSketchCanvasView *)self.view;
    [rnSketch setUIOutlineColor:[RCTConvert UIColor:outlineColor]];
    
    
}

RCT_EXPORT_VIEW_PROPERTY(canvasStyle, NSDictionary);


@end
