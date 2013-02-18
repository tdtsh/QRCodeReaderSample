//
//  QRCodeReaderViewController.m
//  QRCodeReaderSample
//
//  Created by tdtsh on 2012/12/17.
//  Copyright (c) 2012年 tadatoshi_hanazaki. All rights reserved.
//

#import "QRCodeReaderViewController.h"
#import "QRCodeReader.h"

@interface QRCodeReaderViewController ()

@end

@implementation QRCodeReaderViewController

@synthesize resultView;
@synthesize resultStr;
 
- (void)scanPressed:(id)sender
{
	ZXingWidgetController *widController = [[ZXingWidgetController alloc] initWithDelegate:self showCancel:YES OneDMode:NO];
	QRCodeReader* qrcodeReader = [[QRCodeReader alloc] init];
	NSSet *readers = [[NSSet alloc ] initWithObjects:qrcodeReader,nil];
	widController.readers = readers;
 
	[self presentModalViewController:widController animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) 
	{
	}
	return self;
}

- (void)dealloc {
	//[resultView release];
}
 
#pragma mark - View lifecycle
- (void)loadView
{
	[super loadView];
	 
	UIButton *btnStamp = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[btnStamp setFrame:CGRectMake(40, 220, 240, 50)];
	[btnStamp setTitle:@"QRコードを読み取る" forState:UIControlStateNormal];
	[btnStamp setTag:1];
	[btnStamp addTarget:self action:@selector(scanPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btnStamp];
	 
	resultView = [[UITextView alloc] initWithFrame:CGRectMake(40 , 280, 240, 50)];
	[self.view addSubview:resultView];
}

- (void)viewDidUnload
{
	[super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 
#pragma mark -
#pragma mark ZXingDelegateMethods
- (void)zxingController:(ZXingWidgetController*)controller didScanResult:(NSString *)result {
	self.resultStr = result;
	if (self.isViewLoaded) 
	{
		[resultView setText:resultStr];
		[resultView setNeedsDisplay];
	}
	[self dismissModalViewControllerAnimated:NO];
}

- (void)zxingControllerDidCancel:(ZXingWidgetController*)controller {
	[self dismissModalViewControllerAnimated:YES];
}

@end
