//
//  ViewController.m
//  FastEnum
//
//  Created by user on 15/11/19.
//  Copyright © 2015年 user. All rights reserved.
//

#import "ViewController.h"
#import "testVCTL.h"

@interface ViewController ()

@property (nonatomic, retain) NSTimer *pollTimer;


@end

@implementation ViewController

- (void)viewDidLoad {
	
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)selector:(id)sender {
	
	testVCTL* vctl = [[testVCTL alloc] init];
	
	[self.navigationController pushViewController:vctl animated:YES];
}

@end
