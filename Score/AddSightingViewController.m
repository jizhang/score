//
//  AddSightingViewCrontroller.m
//  Score
//
//  Created by Ji ZHANG on 2020/4/30.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "AddSightingViewController.h"
#import "BirdSighting.h"

@interface AddSightingViewController ()

@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;

@end

@implementation AddSightingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        if ([self.birdNameInput.text length] || [self.locationInput.text length]) {
            NSDate *today = [NSDate date];
            BirdSighting *sighting = [[BirdSighting alloc] initWithName:self.birdNameInput.text location:self.locationInput.text date:today];
            self.birdSighting = sighting;
        }
    }
}

@end
