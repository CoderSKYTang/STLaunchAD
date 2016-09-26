//
//  ViewController.m
//  STLaunchAD
//
//  Created by 研发部 on 16/9/22.
//  Copyright © 2016年 SKYTang. All rights reserved.
//

#import "ViewController.h"
#import "ADView.h"
#import "ADViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    self.view.backgroundColor = [UIColor orangeColor];
    [self setupADView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)setupADView {
    NSString *imageUrl = @"http://im6.tongbu.com/wallpaper/20140919/c1efa2390a.jpg.234_416.jpg";
    NSString *adURL = @"http://tieba.baidu.com/";
    ADView *adView = [[ADView alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.bounds withImageUrl:imageUrl withADUrl:adURL withClickBlock:^(NSString *clikADUrl) {
        NSLog(@"广告页面: %@",clikADUrl);
        ADViewController *adVC = [[ADViewController alloc] init];
        adVC.adUrl = clikADUrl;
        [self.navigationController pushViewController:adVC animated:YES];
    }];
    
    [adView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
