//
//  AddressHelper.h
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressStrategy.h"
#import "ChinaAddressStrategy.h"
#import "USAddressStrategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddressHelper : NSObject

+ (instancetype)helperWithAddress:(Address *)address;

- (instancetype)initWithStrategy:(id<AddressStrategy>)strategy;

- (NSString *)getFullName:(Address *)address;

@end

NS_ASSUME_NONNULL_END
