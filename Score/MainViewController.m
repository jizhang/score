//
//  MainViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/5.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "Masonry.h"
#import "HexColors.h"

#import "MainViewController.h"

@implementation MainViewController

- (void)loadView {
    NSArray *scores = @[@"1", @"2", @"3", @"5", @"8", @"13", @"?"];
    NSArray *colors = @[
        [UIColor hx_colorWithHexRGBAString:@"#0EAB5E"],
        [UIColor hx_colorWithHexRGBAString:@"#F3413D"],
    ];
    CGRect bounds = [UIScreen mainScreen].bounds;

    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(bounds.size.width * (scores.count + colors.count), bounds.size.height);
    scrollView.pagingEnabled = YES;
    self.view = scrollView;

    for (int i = 0; i < scores.count; ++i) {
        CGRect frame = CGRectMake(i * bounds.size.width, 0, bounds.size.width, bounds.size.height);
        UILabel *label = [[UILabel alloc] initWithFrame:frame];
        label.text = scores[i];
        label.font = [UIFont systemFontOfSize:(label.text.length > 1 ? 333 : 444)];
        label.textAlignment = NSTextAlignmentCenter;
        [scrollView addSubview:label];
    }

    for (int i = 0; i < colors.count; ++i) {
        int x = (i + scores.count) * bounds.size.width;
        CGRect frame = CGRectMake(x, 0, bounds.size.width, bounds.size.height);
        UIView *colorView = [[UIView alloc] initWithFrame:frame];
        colorView.backgroundColor = colors[i];
        [scrollView addSubview:colorView];
    }
}

@end
