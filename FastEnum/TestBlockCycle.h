//
//  TestBlockCycle.h
//  FastEnum
//
//  Created by user on 15/11/19.
//  Copyright © 2015年 user. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^networkFetchCompletionHandler)(NSData* date);

@interface TestBlockCycle : NSObject

@property (nonatomic, retain, readonly) NSURL* url;

- (id)initWithURL:(NSURL*)url;

- (void)startWithComplete:(networkFetchCompletionHandler)completion;

@end
