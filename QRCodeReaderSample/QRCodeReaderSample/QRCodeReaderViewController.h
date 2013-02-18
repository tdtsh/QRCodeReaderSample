//
//  QRCodeReaderViewController.h
//  QRCodeReaderSample
//
//  Created by tdtsh on 2012/12/17.
//  Copyright (c) 2012年 tadatoshi_hanazaki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXingWidgetController.h"

@interface QRCodeReaderViewController : UIViewController <ZXingDelegate> {
    UITextView *resultView;
    NSString *resultStr;
}

@property (nonatomic, retain) UITextView *resultView;
@property (nonatomic, copy) NSString *resultStr;
- (void)scanPressed:(id)sender;

@end
