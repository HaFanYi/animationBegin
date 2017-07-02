//
//  ViewController.m
//  ViewAnimation-OC
//
//  Created by watchman on 2017/7/2.
//  Copyright © 2017年 Hervey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIButton *loginButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginButton = [[UIButton alloc]initWithFrame:CGRectMake(-394, 230, self.view.frame.size.width- 20*2, 50)];
    self.loginButton.backgroundColor = [UIColor colorWithRed:50/255.0 green:185/255.0 blue:170/255.0 alpha:1.0];
    [self.loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:self.loginButton];
}

- (void)viewWillAppear:(BOOL)animated {
//    [UIView animateWithDuration:1.0 animations:^{
//        self.loginButton.frame = CGRectMake(20, self.loginButton.frame.origin.y, self.loginButton.frame.size.width, self.loginButton.frame.size.height);
//    }];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    self.loginButton.frame = CGRectMake(20, self.loginButton.frame.origin.y, self.loginButton.frame.size.width, self.loginButton.frame.size.height);
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
