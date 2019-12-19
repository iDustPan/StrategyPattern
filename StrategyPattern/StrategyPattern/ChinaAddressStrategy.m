//
//  ChinaAddressStrategy.m
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import "ChinaAddressStrategy.h"
#import "USAddressStrategy.h"
#import "Address.h"

@implementation ChinaAddressStrategy

- (NSString *)fullName:(Address *)address {
    return [address.lastName stringByAppendingFormat:@" %@", address.firstName];
}

@end
