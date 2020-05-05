//
//  MainViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/5/5.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "Masonry.h"

#import "MainViewController.h"

@implementation MainViewController

- (void)loadView {
    NSArray *scores = @[@"1", @"2", @"3", @"5", @"8", @"13", @"?"];
    CGRect bounds = [UIScreen mainScreen].bounds;

    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(bounds.size.width * scores.count, bounds.size.height);
    scrollView.pagingEnabled = YES;
    self.view = scrollView;

    for (int i = 0; i < scores.count; ++i) {
        CGRect frame = CGRectMake(i * bounds.size.width, 0, bounds.size.width, bounds.size.height);
        UILabel *label = [[UILabel alloc] initWithFrame:frame];
        label.text = scores[i];
        label.font = [UIFont systemFontOfSize:280];
        label.textAlignment = NSTextAlignmentCenter;
        [scrollView addSubview:label];
    }
}

@end
