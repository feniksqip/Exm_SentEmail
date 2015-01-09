//
//  ViewController.h
//  Exm_SentEmail
//
//  Created by Admin on 09.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)sentMain:(id)sender;

@end

