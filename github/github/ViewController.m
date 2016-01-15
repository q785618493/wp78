//
//  ViewController.m
//  github
//
//  Created by ma c on 16/1/13.
//  Copyright © 2016年 ftzs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.view.backgroundColor = [UIColor yellowColor];
    NSLog(@"11111");
    
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    titleLabel.text = @"你好春哥";
    [self.view addSubview:titleLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
    
}

@end
