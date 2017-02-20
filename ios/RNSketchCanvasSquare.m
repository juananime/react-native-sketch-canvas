//
//  RNSketchCanvasSquare.m
//  RNSketchCanvas
//
//  Created by juan Jimenez on 17/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>

#import "RNSketchCanvasSquare.h"

@implementation RNSketchCanvasSquare

-(instancetype)initWithFrame:(CGRect)frame andStartingPoint:(CGPoint)startPoint{
    if(self=[super initWithFrame:frame]){
        
        _startingPoint = startPoint;
        
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    // Now draw the line and save to your image
    float rectangleWidth = _endPoint.x -_startingPoint.x;
    float rectangleHeight = _endPoint.y -_startingPoint.y;
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect currentRect =CGRectMake(_startingPoint.x,_startingPoint.y,rectangleWidth,rectangleHeight);
    
    //4
    CGContextAddRect(ctx, currentRect);
    CGContextSetLineWidth(ctx, 2);
    CGContextSetStrokeColorWithColor(ctx, [_outlineColor CGColor]);
    CGContextSetFillColorWithColor(ctx,[_fillColor CGColor]);
    CGContextDrawPath(ctx,kCGPathEOFillStroke);
    
//    NSLog(@"refresing square _startingPoint.x :: %f",_startingPoint.x);
    
  //  NSLog(@"refresing square _endPoint :: %f",_endPoint.x);
    
    
}

-(void)onEndPoint:(CGPoint)endPoint{
    _endPoint = endPoint;
   
    [self setNeedsDisplay];
    [self setBackgroundColor:[UIColor clearColor]];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
