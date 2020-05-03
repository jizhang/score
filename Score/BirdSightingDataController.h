//
//  BirdSightingDataController.h
//  Score
//
//  Created by Ji ZHANG on 2020/4/24.
//  Copyright © 2020 Ji ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BirdSighting;

NS_ASSUME_NONNULL_BEGIN

@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (NSUInteger)countOfList;
- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addBirdSightingWithSighting:(BirdSighting *)sighting;

@end

NS_ASSUME_NONNULL_END
