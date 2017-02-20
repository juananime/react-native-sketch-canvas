//
//  RNSketchCanvasView.m
//  RNSketchCanvas
//
//  Created by juan Jimenez on 16/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>

#import "RNSketchCanvasView.h"
#import <React/RCTResizeMode.h>
#import "UIView+React.h"




@implementation RNSketchCanvasView {
    __weak RCTBridge *_bridge;
    
    
    
}

- (instancetype)initWithBridge:(RCTBridge *)bridge
{
    if ((self = [super init])) {
        _bridge = bridge;
    }
    return self;
}

-(void)drawInitSquarePosX:(NSNumber *)posX andPosY:(NSNumber*)posY{
    CGPoint startingPoint = CGPointMake([posX floatValue], [posY floatValue]);
    RNSketchCanvasSquare * newSquare = [[RNSketchCanvasSquare alloc] initWithFrame:self.frame andStartingPoint:startingPoint];
    [newSquare setFillColor:_UIFillColor];
    [newSquare setOutlineColor:_UIOutlineColor];
    
    [newSquare onEndPoint:CGPointMake(startingPoint.x+40, startingPoint.y+40)];
    [self addSubview:newSquare];
    
    _currentSquare = newSquare;
   // NSLog(@"OBJC :: START posY:: %f  :: %@",posY,newSquare);

    
}
-(void)updateSquarePosX:(NSNumber *)posX andPosY:(NSNumber*)posY{
    CGPoint endPoint = CGPointMake([posX floatValue], [posY floatValue]);
    NSLog(@"OBJC :: MOVE posY:: %f :: %@",endPoint.x, _currentSquare);
    [_currentSquare onEndPoint:endPoint];

    
}
-(void)drawInitTrianglePosX:(NSNumber *)posX andPosY:(NSNumber*)posY{
    CGPoint startingPoint = CGPointMake([posX floatValue], [posY floatValue]);
    RNSketchCanvasTriangle * newTriangle = [[RNSketchCanvasTriangle alloc] initWithFrame:self.frame andStartingPoint:startingPoint];
    [newTriangle setFillColor:_UIFillColor];
    [newTriangle setOutlineColor:_UIOutlineColor];
    
    [newTriangle onEndPoint:CGPointMake(startingPoint.x+40, startingPoint.y+40)];
    [self addSubview:newTriangle];
    
    _currentTriangle = newTriangle;
}
-(void)updateTrianglePosX:(NSNumber *)posX andPosY:(NSNumber*)posY{
    CGPoint endPoint = CGPointMake([posX floatValue], [posY floatValue]);
    
    [_currentTriangle onEndPoint:endPoint];
}


-(void)setCanvasStyle:(NSDictionary *)canvasStyle{
    
    _UIFillColor = [RCTConvert UIColor:[canvasStyle objectForKey:@"fillColor"]];
    _UIOutlineColor = [RCTConvert UIColor:[canvasStyle objectForKey:@"outlineColor"]];
}




-(void)reactSetFrame:(CGRect)frame{
    self.frame=frame;
    

    NSLog(@"self :: %@",self);
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
