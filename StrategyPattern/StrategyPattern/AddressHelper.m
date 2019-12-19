//
//  AddressHelper.m
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import "AddressHelper.h"
#import "Address.h"

@interface AddressHelper ()

@property (nonatomic, strong) id<AddressStrategy> strategy;

@end

@implementation AddressHelper

+ (instancetype)helperWithAddress:(Address *)address {
    NSDictionary *strategies = @{
        @"US": [USAddressStrategy new],
        @"CN": [ChinaAddressStrategy new]
    };
    if ([strategies objectForKey:address.country]) {
        AddressHelper *helper = [[AddressHelper alloc] initWithStrategy:strategies[address.country]];
        return helper;
    }
    return nil;
}

- (instancetype)initWithStrategy:(id<AddressStrategy>)strategy {
    if (self = [super init]) {
        self.strategy = strategy;
    }
    return self;
}

- (NSString *)getFullName:(Address *)address {
    return [self.strategy fullName:address];
}

@end
