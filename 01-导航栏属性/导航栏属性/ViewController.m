//
//  ViewController.m
//  导航栏属性
//
//  Created by 徐文京 on 15/12/28.
//  Copyright © 2015年 fengying. All rights reserved.
//

#import "ViewController.h"
#import "firstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    [self setAttrusNavigation];
}

//对导航栏属性的设置
- (void)setAttrusNavigation
{
  /**********设置导航栏标题******************/
     //第一种： 自定义title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    title.text = @"自定义title";
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = [UIColor redColor];
    title.font=[UIFont systemFontOfSize:20];
    self.navigationItem.titleView = title;
    
//    //第二种：设置系统自带title的属性值
//    self.title=@"设置系统自带title";
//    NSDictionary *titleAtt=[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:20],NSFontAttributeName,[UIColor blackColor],NSForegroundColorAttributeName,nil];
//    [self.navigationController.navigationBar setTitleTextAttributes:titleAtt];
    
    
    /*******设置导航栏的左右按钮*********/
     //第一种方式(系统自带的)
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:self action:@selector(pushFirstVC)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //第二种方式（自定义方式）
    UIButton *rightButn=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 80, 40)];
    [rightButn setBackgroundColor:[UIColor yellowColor]];
    [rightButn setTitle:@"自定义" forState:UIControlStateNormal];
    [rightButn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:rightButn];
    
    
    //设置导航栏背景颜色
    self.navigationController.navigationBar.barTintColor=[UIColor cyanColor];
    
    //通过设置navigationItem的backBarButtonItem可以直接更换文字，【注意，要在父视图的Controller中设置】
    UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithTitle:@"fanhui" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem=backItem;
    
    //自定义返回按钮
    UIImage *backButtonImage = [[UIImage imageNamed:@"fanhui.jpg"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    将返回按钮的文字position设置不在屏幕上显示
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, NSIntegerMin) forBarMetrics:UIBarMetricsDefault];

    
    
}

-(void)pushFirstVC
{
    firstViewController *firstVC=[[firstViewController alloc]init];
    [self.navigationController pushViewController:firstVC animated:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
