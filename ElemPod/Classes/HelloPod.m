//
//  HelloPod.m
//  MyPod
//
//  Created by Matthieu Lemonnier on 02/03/2018.
//  Copyright © 2018 La Poste. All rights reserved.
//

#import "HelloPod.h"
#import "AFNetworking.h"
#import "Define.h"

@implementation HelloPod

- (NSString *) helloWorld {
    return @"Hello World";
}

- (void) france:(void (^)(NSString *))block {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URL_FRA parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject[@"capital"]);
        NSString * capital = responseObject[@"capital"];
        block(capital);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
