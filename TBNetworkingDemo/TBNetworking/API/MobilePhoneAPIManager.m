//
//  MobilePhoneAPIManager.m
//  TBNetworking
//
//  Created by ChenHao on 7/31/15.
//  Copyright (c) 2015 Teambition. All rights reserved.
//

#import "MobilePhoneAPIManager.h"

@interface MobilePhoneAPIManager() <TBAPIBaseManagerParamSourceDelegate>

@end

@implementation MobilePhoneAPIManager

- (instancetype)init {
    self = [super init];
    if (self) {
        self.parameSource = self;
    }
    return self;
}

- (NSString *)requestUrl {
    return @"mobilephoneservice/mobilephone";
}


- (NSDictionary *)jsonValidator {
    return @{
             @"errMsg":TBValidatorPredicate.isNotNull,
             @"errNum":TBValidatorPredicate.isNotNull,
             @"retData":@{
                     @"carrier":TBValidatorPredicate.isNotNull,
                     @"province":TBValidatorPredicate.isNotNull,
                     @"telString":TBValidatorPredicate.isNotNull
                     }
             };
}

- (NSString *)getPhoneNumber {
    if(self.response.responseObject) {
        return [self.response.responseObject valueForKeyPath:@"retData.telString"];
    }
    return nil;
}

#pragma mark - TBAPIBaseManagerParamSourceDelegate
- (NSDictionary *)parametersForAPI:(TBAPIBaseManager *)manager {
    return @{@"tel":@"18679211201"};
}

@end
