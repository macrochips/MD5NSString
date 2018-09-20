//
//  ViewController.m
//  MD5NSStringExample
//
//  Created by Vaibhav Nath on 19/09/18.
//  Copyright © 2018 Vaibhav Nath. All rights reserved.
//

#import "ViewController.h"
#import "NSString+MD5NSString.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UILabel *MD5OutputLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputTextField.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)generateMD5Action:(id)sender
{
    self.MD5OutputLabel.text = [self.inputTextField.text getMD5OfNSString];
    NSLog(@"MD5 of \"%@\" :-\n%@", @"sampler", [@"sampler" getMD5OfNSString]);
}

- (IBAction)dismissKeyboard:(id)sender
{
    [self.inputTextField resignFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if([string isEqualToString:@"\n"])
    {
        [self dismissKeyboard:textField];
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
