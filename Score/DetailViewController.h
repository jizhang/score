//
//  DetailViewController.h
//  Score
//
//  Created by Ji ZHANG on 2020/5/3.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSighting;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) BirdSighting *sighting;

@end

NS_ASSUME_NONNULL_END
