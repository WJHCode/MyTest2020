//
//  JHStudent.m
//  Objc底层
//
//  Created by Kevin on 2020/2/7.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import "JHStudent.h"

@implementation JHStudent
+(void)initialize{
    NSLog(@"JHStudent initialize");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@",[self class]);
        NSLog(@"%@",[super class]);
    }
    return self;
}
@end
