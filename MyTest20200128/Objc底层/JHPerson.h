//
//  JHPerson.h
//  Objc底层
//
//  Created by Kevin on 2020/1/30.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JHPerson : NSObject{
    int _age;//4
    int _num;//4
    double _height;//8
    float _size;//4
    NSString *sex;//8
}

- (void)testSetHeight:(int)ht;
- (int)testheigt;
@end

NS_ASSUME_NONNULL_END
