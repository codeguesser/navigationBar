//
//  SecondViewController.m
//  testnavigation
//
//  Created by  on 2012/5/23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "RootViewController.h"
@implementation SecondViewController




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    self.navigationItem.title = @"Second";
    UILabel *titleview = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, self.navigationController.navigationBar.frame.size.height)];
    
    [titleview setText:@"Second"];
    [titleview setFont:[UIFont fontWithName:@"Snell Roundhand" size:40.0f]];
    titleview.backgroundColor = [UIColor clearColor];
    titleview.textAlignment = UITextAlignmentCenter;
    self.navigationItem.titleView = titleview;
    
    
    
    UIButton *next = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [next addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:next];
}

-(void)click{
    RootViewController *second = [[RootViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    [second release];
}
@end
