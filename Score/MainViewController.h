//
//  MasterV2ViewController.h
//  Score
//
//  Created by Ji ZHANG on 2020/5/3.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

@end

NS_ASSUME_NONNULL_END
