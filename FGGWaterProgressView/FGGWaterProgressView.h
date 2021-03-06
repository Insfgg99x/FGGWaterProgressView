//
//  FGGWaterProgressView.h
//  FGGWaterProgressView
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>

//底衬的颜色
#define FGGBackProgressColor ([UIColor yellowColor])

@interface FGGWaterProgressView : UIView

@property(nonatomic,assign)CGFloat progress;

@property (nonatomic,strong)UIColor *progressColor;

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor;

@end
