//
//  RNSketchCanvasTriangle.h
//  RNSketchCanvas
//
//  Created by juan Jimenez on 19/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNSketchCanvasTriangle : UIView
@property(nonatomic) CGPoint startingPoint;
@property(nonatomic) CGPoint endPoint;
@property(nonatomic) CGContextRef context;
@property(nonatomic) UIColor * fillColor;
@property(nonatomic) UIColor * outlineColor;
-(instancetype)initWithFrame:(CGRect)frame andStartingPoint:(CGPoint)startPoint;

-(void)onEndPoint:(CGPoint)endPoint;
@end
