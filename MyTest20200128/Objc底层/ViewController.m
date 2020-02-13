//
//  ViewController.m
//  Objc底层
//
//  Created by Kevin on 2020/1/29.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "JHStudent.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JHStudent *student = [[JHStudent alloc] init];
    [student testSetHeight:12];
    
    JHStudent *student2 = [[JHStudent alloc] init];
    [student2 testSetHeight:15];
    //    NSLog(@"------>height:%d",[student testheigt]);
    
    //引用全局变量
//    extern int number;
//    NSLog(@">>>>>>>>>%d",number);
}


@end
