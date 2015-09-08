//
//  TBAPIUploadManager.m
//  TBNetworking
//
//  Created by ChenHao on 9/8/15.
//  Copyright (c) 2015 Teambition. All rights reserved.
//

#import "TBAPIUploadManager.h"


@interface TBAPIUploadManager()

@property (nonatomic, strong) NSData *uploadData;
@property (nonatomic, strong) NSURL  *uploadURL;

@end

@implementation TBAPIUploadManager

- (instancetype)initWithUploadData:(NSData *)data {
    self = [super init];
    if (self) {
        self.uploadData = data;
    }
    return self;
}

- (instancetype)initWithUploadFile:(NSURL *)url {
    self = [super init];
    if (self) {
        self.uploadURL = url;
    }
    return self;
}




@end
