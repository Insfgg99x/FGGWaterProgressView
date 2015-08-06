//
//  FGGWaterProgressView.m
//  FGGWaterProgressView
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGWaterProgressView.h"


@implementation FGGWaterProgressView

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.progressColor=progressColor;
    }
    return self;
}
- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    if (progress >= 0.0&&progress<=1.0)
        [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    [FGGBackProgressColor set];
    
    CGFloat radius = MIN(rect.size.width * 0.5, rect.size.height * 0.5);
    
    
    CGFloat w = radius * 2;
    CGFloat h = w;
    CGFloat x = (rect.size.width - w) * 0.5;
    CGFloat y = (rect.size.height - h) * 0.5;
    CGContextAddEllipseInRect(ctx, CGRectMake(x, y, w, h));
    CGContextFillPath(ctx);
    
    [self.progressColor set];
    CGFloat startAngle = M_PI * 0.5 - self.progress * M_PI;
    CGFloat endAngle = M_PI * 0.5 + self.progress * M_PI;
    CGContextAddArc(ctx, xCenter, yCenter, radius, startAngle, endAngle, 0);
    CGContextFillPath(ctx);
}

@end
