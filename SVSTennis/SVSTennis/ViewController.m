//
//  ViewController.m
//  SVSTennis
//
//  Created by twiedow on 16.04.14.
//  Copyright (c) 2014 twiedow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
		CGRect viewBounds = [self.webView bounds];
		viewBounds.origin.y = 20;
		viewBounds.size.height = viewBounds.size.height - 20;
		self.webView.frame = viewBounds;
	}

	self.webView.scalesPageToFit = YES;
	[self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]]]];
}

@end
