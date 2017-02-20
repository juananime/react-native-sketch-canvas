//
//  RNSketchCanvasTriangle.m
//  RNSketchCanvas
//
//  Created by juan Jimenez on 19/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNSketchCanvasTriangle.h"

@implementation RNSketchCanvasTriangle
-(instancetype)initWithFrame:(CGRect)frame andStartingPoint:(CGPoint)startPoint{
    if(self=[super initWithFrame:frame]){
        
        _startingPoint = startPoint;
        
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    float rectangleWidth = _endPoint.x -_startingPoint.x;
    float rectangleHeight = _endPoint.y -_startingPoint.y;

    CGRect currentRect =CGRectMake(_startingPoint.x,_startingPoint.y,rectangleWidth,rectangleHeight);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    CGContextMoveToPoint   (ctx, CGRectGetMidX(currentRect), CGRectGetMinY(currentRect));  // top left
    CGContextAddLineToPoint(ctx, CGRectGetMinX(currentRect), CGRectGetMaxY(currentRect));  // mid right
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(currentRect), CGRectGetMaxY(currentRect));  // bottom left
    CGContextClosePath(ctx);
    CGContextSetLineWidth(ctx, 2);
    CGContextSetStrokeColorWithColor(ctx, [_outlineColor CGColor]);
    CGContextSetFillColorWithColor(ctx,[_fillColor CGColor]);
    CGContextDrawPath(ctx,kCGPathEOFillStroke);
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
