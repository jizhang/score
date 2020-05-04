//
//  AddCell.h
//  Score
//
//  Created by Ji ZHANG on 2020/5/4.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddCell : UITableViewCell <UITextFieldDelegate>

@property (readonly, nonatomic) NSString *value;

- (instancetype)initWithLabel:(NSString *)label;
- (instancetype)initWithLabel:(NSString *)label value:(NSString *)value;

@end

NS_ASSUME_NONNULL_END
