//
//  QRCodeReaderViewController.h
//  QRCodeReaderSample
//
//  Created by tdtsh on 2012/12/17.
//  Copyright (c) 2012年 tadatoshi_hanazaki. All rights reserved.
//

///Users/tadatoshi_hanazaki/workspace/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderViewController.h:10:9: 'ZXingWidgetController.h' file not found

///Users/tadatoshi_hanazaki/workspace/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderViewController.h:10:9: 'ZXingWidgetController.h' file not found

///Users/tadatoshi_hanazaki/workspace/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderSample/QRCodeReaderViewController.h:10:9: 'ZXingWidgetController.h' file not found

/*
/Users/tadatoshi_hanazaki/workspace/QRCodeReaderSample/ZXimg/iphone/ZXingWidget/Classes
/Users/tadatoshi_hanazaki/workspace/QRCodeReaderSample/ZXimg/cpp/core/src
../../iphone/ZXingWidget/Classes
../../cpp/core/src

*/

//(null): "std::string::c_str() const", referenced from:

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
