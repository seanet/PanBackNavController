//
//  VC2.m
//  PanBackNavController
//
//  Created by zhaoqihao on 11/24/14.
//  Copyright (c) 2014 com.zhaoqihao. All rights reserved.
//

#import "VC2.h"
#import "ViewController.h"

@interface VC2 ()

@end

@implementation VC2

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.navigationItem setTitle:@"vc2"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIBarButtonItem *back=[[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    [self.navigationItem setLeftBarButtonItem:back];
    
    
    UIButton *b=[[UIButton alloc]initWithFrame:CGRectMake(100, 80, 100, 60)];
    [b setBackgroundColor:[UIColor blueColor]];
    [b setTitle:@"click me " forState:UIControlStateNormal];
    [b addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:b];
}

-(void)click{
    ViewController *v=[[ViewController alloc]init];
    [self.navigationController pushViewController:v animated:YES];
}

-(void)backClick{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
