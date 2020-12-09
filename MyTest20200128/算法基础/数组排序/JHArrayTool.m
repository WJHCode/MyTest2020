//
//  JHArrayTool.m
//  TestDemoA
//
//  Created by 王建华 on 2020/12/9.
//

#import "JHArrayTool.h"

@implementation JHArrayTool
//移除排序数组中重复的元素
+(void)removeDulicates:(NSArray *)dataArray{
    NSMutableArray *tempArray = [NSMutableArray arrayWithArray:dataArray];
    NSLog(@"removeDulicates begin--->%@",tempArray);
    for (int i = 0,j = 1; j < tempArray.count; j++) {
        if (tempArray[i] != tempArray[j]) {
            i++;
        }else{
            [tempArray removeObjectAtIndex:j];
            j--;
        }
    }
    NSLog(@"removeDulicates end--->%@",tempArray);
}

/// 数组排序
/// @param dataArray 数据
/// @param isDes YES 增序   NO降序
+(void)sortArray:(NSArray *)dataArray isDes:(BOOL)isDes{
    //冒泡排序
//    [self solution1:dataArray isDes:isDes];
    [self solution2:dataArray isDes:isDes];
}

#pragma mark - 冒泡排序
+(void)solution1:(NSArray *)dataArray isDes:(BOOL)isDes{
    NSMutableArray *data = [NSMutableArray arrayWithArray:dataArray];
    NSLog(@"sortArray begin--->%@",data);
    for (int i = 0; i < data.count - 1; i++) {
        for (int j = i + 1; j < data.count; j++) {
            if (isDes) {
                if ([data[i] intValue] > [data[j] intValue]) {
                    int temp = [data[i] intValue];
                    data[i] = data[j];
                    data[j] = [NSNumber numberWithInt:temp];
                    NSLog(@">>i = %d, j = %d, data[i] = %d, data[j] = %d", i ,j ,[data[i] intValue], [data[j] intValue]);
                }else{
                    NSLog(@"<<i = %d, j = %d, data[i] = %d, data[j] = %d", i ,j ,[data[i] intValue], [data[j] intValue]);
                }
            }else{
                if ([data[i] intValue] < [data[j] intValue]) {
                    int temp = [data[i] intValue];
                    data[i] = data[j];
                    data[j] = [NSNumber numberWithInt:temp];
                    NSLog(@">>i = %d, j = %d, data[i] = %d, data[j] = %d", i ,j ,[data[i] intValue], [data[j] intValue]);
                }else{
                    NSLog(@"<<i = %d, j = %d, data[i] = %d, data[j] = %d", i ,j ,[data[i] intValue], [data[j] intValue]);
                }
            }
        }
    }
    NSLog(@"sortArray end--->%@",data);
}

#pragma mark -  冒泡排序
+(void)solution2:(NSArray *)dataArray isDes:(BOOL)isDes{
    NSMutableArray *data = [NSMutableArray arrayWithArray:dataArray];
    NSLog(@"sortArray begin--->%@",data);
    for (int i = 0; i < data.count - 1; i++) {
        //第一次优化，添加flag，如果发现flag没有变化，则说明已经排好序了
        /*
        BOOL flag = YES;
        for (int j = 0; j < data.count - i - 1; j++) {
            if ([data[j] intValue] > [data[j + 1] intValue]) {
                int temp = [data[j] intValue];
                data[j] = data[j + 1];
                data[j + 1] = [NSNumber numberWithInt:temp];
                flag = NO;
            };
        }
        if (flag) break;
        */
        
        //第二种优化方案  设置冒泡边界，缩小冒泡范围，减少已排好序的冒泡工作
        for (int i = 0; i < data.count - 1; i++) {
            int border = (int)data.count -1;
            int lastExchange = 0;
            
            for (int j = 0; j < border; j++) {
                if ([data[j] intValue] > [data[j + 1] intValue]) {
                    int temp = [data[j] intValue];
                    data[j] = data[j + 1];
                    data[j + 1] = [NSNumber numberWithInt:temp];
                    lastExchange = j;
                }
            }
            border = lastExchange;
        }
        
    }
    NSLog(@"sortArray end--->%@",data);
}
@end
