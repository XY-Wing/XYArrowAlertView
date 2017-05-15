//
//  ViewController.m
//  XYArrowAlertView
//
//  Created by Xue Yang on 2017/5/15.
//  Copyright © 2017年 Xue Yang. All rights reserved.
//

#import "ViewController.h"
#import "XYArrowAlertView.h"
@interface ViewController ()

@end
#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1Clicked:(UIButton *)btn {
    XYArrowAlertView *arrowAlertV = [[XYArrowAlertView alloc] initWithFrame:CGRectMake(0, 0, screenW, screenH) alertContentString:@"张三 李四 张三 李四 张三 李四 " withSpecificUI:btn];
    [self.view addSubview:arrowAlertV];
}

- (IBAction)button2Clicked:(UIButton *)btn {
    XYArrowAlertView *arrowAlertV = [[XYArrowAlertView alloc] initWithFrame:CGRectMake(0, 0, screenW, screenH) alertContentString:@"张三 李四 张三 李四 张三 李四 张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四 " withSpecificUI:btn];
    [self.view addSubview:arrowAlertV];
}

- (IBAction)button3Clicked:(UIButton *)btn {
    XYArrowAlertView *arrowAlertV = [[XYArrowAlertView alloc] initWithFrame:CGRectMake(0, 0, screenW, screenH) alertContentString:@"张三 李四 张三 李四 张三 李四 张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四 " withSpecificUI:btn];
    [self.view addSubview:arrowAlertV];
}

- (IBAction)button4Clicked:(UIButton *)btn {
    XYArrowAlertView *arrowAlertV = [[XYArrowAlertView alloc] initWithFrame:CGRectMake(0, 0, screenW, screenH) alertContentString:@"张三 李四 张三 李四 张三 李四 张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四张三 李四 张三 李四 张三 李四 " withSpecificUI:btn];
    [self.view addSubview:arrowAlertV];
}

@end
