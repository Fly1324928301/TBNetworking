//
//  TBAPIBaseManager.m
//  TBNetworking
//
//  Created by ChenHao on 7/29/15.
//  Copyright (c) 2015 Teambition. All rights reserved.
//

#import "TBAPIBaseRequest.h"
#import "TBAPIProxy.h"

@implementation TBAPIBaseRequest

- (instancetype)init {

    self = [super init];
    if (self) {
        self.delegate = nil;
    }
    return self;
}

- (NSString *)baseUrl {
    return @"https://www.v2ex.com/api/";
}

- (NSString *)requestUrl {

    return @"";
}

- (TBAPIRequestType )requestType {

    return TBAPIManagerRequestTypeGET;
}

- (NSInteger)responseStatusCode {
    NSHTTPURLResponse *response = (NSHTTPURLResponse *)self.dataTask.response;
    return response.statusCode;
}

- (void)start {

    [[TBAPIProxy sharedInstance] addRequest:self];
}

- (void)startWithParameters:(NSDictionary *)parameters {

    
}

- (void)stop {
    
    [self.dataTask cancel];
    [self setDelegate:nil];
    
}

- (BOOL)isExcuting {
    return self.dataTask.state == NSURLSessionTaskStateRunning;
}

- (NSTimeInterval )requestTimeOutInterval {
    return 0;
}

@end
