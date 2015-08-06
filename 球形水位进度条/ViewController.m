//
//  ViewController.m
//  球形水位进度条
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "FGGWaterProgressView.h"

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setWaterProgressViewWithProgress:0.7458];
}
-(void)setWaterProgressViewWithProgress:(float)progress
{
    FGGWaterProgressView *progressView=[[FGGWaterProgressView alloc] initWithFrame:CGRectMake(kWidth/2-100, kHeight/2-100, 200, 200) andProgressColor:[UIColor redColor]];
    [self.view addSubview:progressView];
    progressView.progress=progress;
}
@end
