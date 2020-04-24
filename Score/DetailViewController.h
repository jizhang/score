//
//  DetailViewController.h
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

