//
//  BirdSighting.h
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BirdSighting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

- (instancetype)initWithName:(NSString *)name location:(NSString * )location date:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
