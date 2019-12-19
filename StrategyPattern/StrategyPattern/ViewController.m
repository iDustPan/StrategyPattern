//
//  ViewController.m
//  StrategyPattern
//
//  Created by borderxlab_pan on 2019/12/19.
//  Copyright © 2019 pan. All rights reserved.
//

#import "ViewController.h"
#import "Address.h"
#import "AddressHelper.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Address *address = [Address new];
    address.country = @"CN";
    address.firstName = @"Tony";
    address.lastName = @"Zhang";
    
    AddressHelper *helper = [AddressHelper helperWithAddress:address];
    NSLog(@"%@", [helper getFullName:address]);
}


@end
