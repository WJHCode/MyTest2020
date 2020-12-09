//
//  ViewController.m
//  算法基础
//
//  Created by Kevin on 2020/1/29.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "JHArrayTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //1、删除排序数组中的重复元素
    NSArray *data = @[@5,@7,@8,@8,@8,@13];
    data = @[@2,@3,@5,@5,@5,@9,@12,@14,@14,@15];
//    [JHArrayTool removeDulicates:data];
    
    //深思 nsset的底层实现
    
    //2、排序
    data = @[@19,@15,@28,@9,@17,@1];
    data = @[@5,@4,@3,@1,@2];
    [JHArrayTool sortArray:data isDes:NO];
}
@end
