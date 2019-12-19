//
//  USAddressStrategy.m
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import "USAddressStrategy.h"
#import "USAddressStrategy.h"
#import "Address.h"

@implementation USAddressStrategy

- (NSString *)fullName:(Address *)address {
    return [address.firstName stringByAppendingFormat:@" %@", address.lastName];
}

@end
