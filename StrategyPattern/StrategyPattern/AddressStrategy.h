//
//  AddressStrategy.h
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Address.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AddressStrategy <NSObject>

- (NSString *)fullName:(Address *)address;

@end

NS_ASSUME_NONNULL_END
