//
//  ViewController.m
//  DQYImage-TextButton
//
//  Created by mac on 16/1/13.
//  Copyright © 2016年 dqy. All rights reserved.
//

#import "ViewController.h"
#import "DQYImage-TextBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    DQYImage_TextBtn * btn = [[DQYImage_TextBtn alloc] initWithFrame: CGRectMake(10, 20, 100,30)];
    [btn setImage:[UIImage imageNamed:@"bar-location"]];
    [btn setTitle:@"南京"];
    [btn addTarget:self action:@selector(actionBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)actionBtn {
    
    NSLog(@"111");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
