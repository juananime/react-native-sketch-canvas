//
//  RNSketchCanvasView.h
//  RNSketchCanvas
//
//  Created by juan Jimenez on 16/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RNSketchCanvasSquare.h"
#import "RNSketchCanvasTriangle.h"
@class RCTBridge;

@interface RNSketchCanvasView : UIView
@property(nonatomic,strong) RNSketchCanvasSquare * currentSquare;
@property(nonatomic,strong) RNSketchCanvasTriangle * currentTriangle;
@property(nonatomic) NSDictionary * canvasStyle;

@property(nonatomic) UIColor * UIFillColor;
@property(nonatomic) UIColor * UIOutlineColor;
@property(nonatomic) CGRect reactFrame;
-(void)drawLine;

-(void)drawInitSquarePosX:(NSNumber *)posX andPosY:(NSNumber*)posY;
-(void)drawEndSquarePosX:(NSNumber*)posX andPosY:(NSNumber*)posY;
-(void)updateSquarePosX:(NSNumber *)posX andPosY:(NSNumber*)posY;

-(void)drawInitTrianglePosX:(NSNumber *)posX andPosY:(NSNumber*)posY;
-(void)updateTrianglePosX:(NSNumber *)posX andPosY:(NSNumber*)posY;

- (instancetype)initWithBridge:(RCTBridge *)bridge NS_DESIGNATED_INITIALIZER;


@end
