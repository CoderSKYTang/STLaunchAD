# STLaunchAD
两行代码增加广告 , 并且进入后台暂停广告倒计时

# 示范代码
	NSString *imageUrl = @"http://im6.tongbu.com/wallpaper/20140919/c1efa2390a.jpg.234_416.jpg";
	NSString *adURL = @"http://tieba.baidu.com/";
	ADView *adView = [[ADView alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.bounds withImageUrl:imageUrl withADUrl:adURL withClickBlock:^(NSString *clikADUrl) {
	    NSLog(@"广告页面: %@",clikADUrl);
	    ADViewController *adVC = [[ADViewController alloc] init];
	    adVC.adUrl = clikADUrl;
	    [self.navigationController pushViewController:adVC animated:YES];
	}];
	
	[adView show];