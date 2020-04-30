//
//  AddSightingViewCrontroller.h
//  Score
//
//  Created by Ji ZHANG on 2020/4/30.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSighting;

NS_ASSUME_NONNULL_BEGIN

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

@property (strong, nonatomic) BirdSighting *birdSighting;

@end

NS_ASSUME_NONNULL_END
