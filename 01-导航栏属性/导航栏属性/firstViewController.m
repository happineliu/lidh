//
//  firstViewController.m
//  导航栏属性
//
//  Created by 徐文京 on 15/12/28.
//  Copyright © 2015年 fengying. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"第一个视图控制器";
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    [self createNavagition];
    // Do any additional setup after loading the view.
}

//设置导航栏
- (void)createNavagition
{
    


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
