//
//  ViewController.m
//  PanBackNavController
//
//  Created by zhaoqihao on 11/24/14.
//  Copyright (c) 2014 com.zhaoqihao. All rights reserved.
//

#import "ViewController.h"
#import "VC2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"VC1";
    
    UIButton *b=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    [b addTarget: self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [b setTitle:@"click" forState:UIControlStateNormal];
    [b setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:b];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.navigationItem setLeftBarButtonItem:nil];
}

-(void)buttonClick{
    VC2 *vc2=[[VC2 alloc]init];
    
    [self.navigationController pushViewController:vc2 animated:YES];
}

@end
