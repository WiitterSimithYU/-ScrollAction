//
//  XRHomeViewController.m
//  ScrollAction
//
//  Created by 我来修修——developer on 2018/4/17.
//  Copyright © 2018年 SG-XR. All rights reserved.
//

#import "XRHomeViewController.h"
#import "ScrollActionView.h"

@interface XRHomeViewController()<ScrollActionViewDelegate>
@property (nonatomic,strong) ScrollActionView *actionView;
@end

@implementation XRHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self initScrollActionView];
    
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
   
}
#pragma mark - 初始化视图
- (void)initScrollActionView{
    CGFloat actionView_H = ((SCREEN_WIDTH-15*5) / 2.0 + 65);
    self.actionView = [[ScrollActionView alloc] initWithFrame: CGRectMake(0, SCREEN_HEIGHT-actionView_H, SCREEN_WIDTH, actionView_H) WithSourceArray:@[@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02"] WithIconArray:@[@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02",@"a_01",@"a_02"]];
    self.actionView.delegate = self;
    self.actionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.actionView];
}
#pragma mark - ScrollActionViewDelegate
-(void)actionToPlatWithIndex:(NSInteger)index{
    NSLog(@"index   %ld",(long)index);
    self.title = [NSString stringWithFormat:@"%ld",(long)index];
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
