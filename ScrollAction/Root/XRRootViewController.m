//
//  XRRootViewController.m
//  SouGu
//
//  Created by sougu on 2017/4/17.
//  Copyright © 2017年 NextXavier. All rights reserved.
//

#import "XRRootViewController.h"

@interface XRRootViewController ()

@end

@implementation XRRootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   


  
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = YES;
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
