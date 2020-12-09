//
//  JHArrayTool.h
//  TestDemoA
//
//  Created by 王建华 on 2020/12/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JHArrayTool : NSObject
//移除排序数组中重复的元素
+(void)removeDulicates:(NSArray *)dataArray;

/// 数组排序
+(void)sortArray:(NSArray *)dataArray isDes:(BOOL)isDes;
@end

NS_ASSUME_NONNULL_END
