//
//  TBLogger.h
//  TBNetworking
//
//  Created by ChenHao on 7/30/15.
//  Copyright (c) 2015 Teambition. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBAPIBaseRequest.h"

@interface TBLogger : NSObject

+ (void)loggerWithRequest:(TBAPIBaseRequest *)request;

@end
