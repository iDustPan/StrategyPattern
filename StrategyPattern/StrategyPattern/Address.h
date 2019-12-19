//
//  Address.h
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Address : NSObject

@property (nonatomic, copy) NSString *country;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *firstName;

@end

NS_ASSUME_NONNULL_END
