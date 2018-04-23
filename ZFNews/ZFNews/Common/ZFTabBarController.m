//
//  ZFTabBarController.m
//  ZFNews
//
//  Created by yanzifan-mini on 2018/4/23.
//  Copyright © 2018年 yanzifan-mini. All rights reserved.
//

#import "ZFTabBarController.h"

#import "ZFNavigationViewController.h"

#import "ZFHomeViewController.h"
#import "ZFVideoViewController.h"

#import "ZFCustomTabBar.h"
#import "MSCustomTabBar.h"

@interface ZFTabBarController ()

@end

@implementation ZFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setValue:[[ZFCustomTabBar alloc] init] forKey:@"tabBar"];
    [self addChildViewControllerS];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)addChildViewControllerS {
    ZFHomeViewController *homeVC = [[ZFHomeViewController alloc]init];
    [self addChildViewController:homeVC withImage:@"tabbar_entertainment" selectedImage:@"tabbar_entertainment_sel" title:@"首页"];
    
    ZFVideoViewController *videoVC =  [[ZFVideoViewController alloc]init];
    [self addChildViewController:videoVC withImage:@"tabbar_home" selectedImage:@"tabbar_home_sel" title:@"视频"];
    
    ZFHomeViewController *touVC = [[ZFHomeViewController alloc]init];
    [self addChildViewController:touVC withImage:@"tabbar_entertainment" selectedImage:@"tabbar_entertainment_sel" title:@"首页"];
    
    ZFVideoViewController *mineVC =  [[ZFVideoViewController alloc]init];
    [self addChildViewController:mineVC withImage:@"tabbar_home" selectedImage:@"tabbar_home_sel" title:@"视频"];
}

- (void)addChildViewController:(UIViewController *)childController withImage:(NSString *)strImageName selectedImage:(NSString *)strSelectedImage title:(NSString *)strTitle {
    
    ZFNavigationViewController *navi = [[ZFNavigationViewController alloc]initWithRootViewController:childController];
    navi.tabBarItem.image = [UIImage imageNamed:strImageName];
    navi.tabBarItem.selectedImage = [UIImage imageNamed:strSelectedImage];
    navi.tabBarItem.title = strTitle;
    [self addChildViewController:navi];
    
}


@end
