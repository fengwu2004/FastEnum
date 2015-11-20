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

//@property (nonatomic, retain) TestBlockCycle* testCycle;
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

- (void)downloadData {
	
	NSURL *url = [[NSURL alloc] initWithString:@"http://dlsw.baidu.com/sw-search-sp/soft/ce/12934/TencentVideo_9.10.1066.0_setup.1447644721.exe"];
	
	TestBlockCycle* testCycle = [[TestBlockCycle alloc] initWithURL:url];
	
	__weak TestBlockCycle* weakthis = testCycle;
	
	[testCycle startWithComplete:^(NSData *date) {
		
		NSLog(@"finish, %@", weakthis.url);

//		_fetchData = date;
	}];
}

- (void)dealloc {
	
	NSLog(@"卸载");
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
