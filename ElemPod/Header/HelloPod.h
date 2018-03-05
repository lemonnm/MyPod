//
//  HelloPod.h
//  MyPod
//
//  Created by Matthieu Lemonnier on 02/03/2018.
//  Copyright © 2018 La Poste. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HelloPod : NSObject
- (NSString *) helloWorld;
- (void) france:(void (^)(NSString *))block;
@end
