//
//  AddCell.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/4.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "Masonry.h"

#import "AddCell.h"

#define VALUE_TAG 1

@implementation AddCell

- (instancetype)initWithLabel:(NSString *)label {
    return [self initWithLabel:label value:@""];
}

- (instancetype)initWithLabel:(NSString *)label value:(NSString *)value {
    self = [super init];
    if (self) {
        [self configureView:label value:value];
    }
    return self;
}

- (void)configureView:(NSString *)label value:(NSString *)value {
    UIView *parent = self.contentView;

    UILabel *labelView = [[UILabel alloc] init];
    labelView.text = label;
    [parent addSubview:labelView];

    [labelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(parent.mas_leadingMargin);
        make.top.equalTo(parent.mas_topMargin);
        make.bottom.equalTo(parent.mas_bottomMargin);
    }];

    [labelView setContentHuggingPriority:UILayoutPriorityRequired
                             forAxis:UILayoutConstraintAxisHorizontal];

    UITextField *input = [[UITextField alloc] init];
    input.tag = VALUE_TAG;
    input.text = value;
    input.borderStyle = UITextBorderStyleRoundedRect;
    input.delegate = self;
    [parent addSubview:input];

    [input mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(labelView.mas_trailing).offset(8);
        make.baseline.equalTo(labelView.mas_baseline);
        make.trailing.equalTo(parent.mas_trailingMargin);
    }];
}

- (NSString *)value {
    UITextField *input = [self viewWithTag:VALUE_TAG];
    return input.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    UITextField *input = [self viewWithTag:VALUE_TAG];
    if (input == textField) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
