//
//  ScoreViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/14.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "Masonry.h"
#import "HexColors.h"

#import "ScoreViewController.h"

@interface ScoreViewController ()

@end

@implementation ScoreViewController

- (void)loadView {
    CGRect bounds = [UIScreen mainScreen].bounds;

    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(bounds.size.width * self.scores.count, bounds.size.height);
    scrollView.pagingEnabled = YES;
    scrollView.backgroundColor = UIColor.whiteColor;
    self.view = scrollView;

    for (int i = 0; i < self.scores.count; ++i) {
        CGRect frame = CGRectMake(i * bounds.size.width, 0, bounds.size.width, bounds.size.height);
        UIView *view;
        NSString *score = self.scores[i];
        if ([score hasPrefix:@"#"]) {
            view = [self createColorView:score frame:frame];
        } else {
            view = [self createTextView:score frame:frame];
        }
        [scrollView addSubview:view];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.hidesBarsOnTap = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.hidesBarsOnTap = NO;
}

- (UIView *)createTextView:(NSString *)text frame:(CGRect)frame {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.font = [UIFont systemFontOfSize:(label.text.length > 1 ? 333 : 444)];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

- (UIView *)createColorView:(NSString *)color frame:(CGRect)frame {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor hx_colorWithHexRGBAString:color];
    return view;
}

@end
