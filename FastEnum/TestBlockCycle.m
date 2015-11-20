//
//  TestBlockCycle.m
//  FastEnum
//
//  Created by user on 15/11/19.
//  Copyright © 2015年 user. All rights reserved.
//

#import "TestBlockCycle.h"

@interface TestBlockCycle()

@property(nonatomic, copy) networkFetchCompletionHandler handler;
@property(nonatomic, retain) NSData *downloadedDate;

@end

@implementation TestBlockCycle

- (id)initWithURL:(NSURL *)url {
	
	self = [super init];
	
	if (self) {
		
		_url = url;
	}
	
	return self;
}

- (void)startWithComplete:(networkFetchCompletionHandler)completion {
	
	self.handler = completion;
	
	for (int i = 0; i < 5; ++i) {
		
//		sleep(1);
		
		NSLog(@"%d", (int)i);
	}
	
	[self onCompletion:nil];
}

- (void)onCompletion:(NSData*)date {
	
	_handler(date);
}

- (void)dealloc {
	
	NSLog(@"abc");
}

@end
