//
//  AddViewController.h
//  Score
//
//  Created by Ji ZHANG on 2020/5/1.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSighting;

NS_ASSUME_NONNULL_BEGIN

@interface AddViewController : UITableViewController

@property (copy, nonatomic) void (^doneHandler)(BirdSighting *sighting);
@property (copy, nonatomic) void (^cancelHandler)(void);

@end

NS_ASSUME_NONNULL_END
