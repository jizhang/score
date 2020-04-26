//
//  DetailViewController.m
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import "DetailViewController.h"
#import "BirdSighting.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    BirdSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    
    if (theSighting) {
        self.birdNameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate:theSighting.date];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

#pragma mark - Managing the detail item

- (void)setSighting:(BirdSighting *) newSighting {
    if (_sighting != newSighting) {
        _sighting = newSighting;
        [self configureView];
    }
}

@end
