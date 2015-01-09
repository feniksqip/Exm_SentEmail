//
//  ViewController.m
//  Exm_SentEmail
//
//  Created by Admin on 09.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)sentMain:(id)sender {
    
    NSString *messageBody = @"Bodyyy ............ .. . . . .. .. . .";
    NSArray *BCC = [NSArray arrayWithObjects:@"BCC array", nil];
    NSString *title = @"My Title";
    NSArray *mailRecipients = [[NSArray alloc] initWithObjects:@"feniksqip@yandex.ru", nil];

    MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
    mailCont.mailComposeDelegate = self;
    
    [mailCont setMessageBody:messageBody isHTML:NO];
    [mailCont setTitle:title];
    [mailCont setSubject:title];
    [mailCont setToRecipients:mailRecipients];
    [mailCont setBccRecipients:BCC];
    
    [self presentViewController:mailCont animated:YES completion:Nil];
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
   
    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"Message: SENT");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Message: SAVED");
            break;
        case MFMailComposeResultCancelled:
            NSLog(@"Message: CANCELLED");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Message: FAILED, error %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:Nil];
}

@end
