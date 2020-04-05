//
//  ViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/4/5.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)changeGreeting:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *greeting = [self.userName length] == 0 ? @"world" : self.userName;
    self.label.text = [NSString stringWithFormat:@"hello %@", greeting];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textField) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
