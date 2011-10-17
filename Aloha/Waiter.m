//
//  Waiter.m
//  Aloha
//
//  Created by App on 2011/10/5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Waiter.h"

@implementation Waiter

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSString*)sayHelloWithName:(NSString*)name
{
    return [NSString stringWithFormat:@"Aloha ,%@!",name];
}

@end
