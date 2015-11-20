//
//  testVCTL.m
//  FastEnum
//
//  Created by user on 15/11/20.
//  Copyright © 2015年 user. All rights reserved.
//

#import "testVCTL.h"
#import "TestBlockCycle.h"

@interface testVCTL ()

@property (nonatomic, retain) TestBlockCycle* testCycle;
@property (nonatomic, retain) NSData* fetchData;

@end

@implementation testVCTL

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	[self downloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView*)myview {
	
	UIView* view = [[UIView alloc] init];
	
	return view;
}

- (void)downloadData {
	
	NSURL *url = [[NSURL alloc] initWithString:@"http://dlsw.baidu.com/sw-search-sp/soft/ce/12934/TencentVideo_9.10.1066.0_setup.1447644721.exe"];
	
	_testCycle = [[TestBlockCycle alloc] initWithURL:url];
	
	[_testCycle startWithComplete:^(NSData *date) {
		
//		_testCycle = nil;
		
		NSString* str = _testCycle.url.absoluteString;
		
		NSLog(@"%@", str);
	}];
}

- (void)viewWillDisappear:(BOOL)animated {
	
	[super viewWillDisappear:animated];
}

- (void)dealloc {
	
	NSLog(@"卸载");
}


@end
