//
//  main.m
//  Objc底层
//
//  Created by Kevin on 2020/1/29.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "JHPerson.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        //一、Objc对象的本质---内存分配
        NSObject *obj = [[NSObject alloc] init];
        
        //实际使用内存占用 8字节
        NSLog(@"%zd",class_getInstanceSize([NSObject class]));
        //系统分配的内存 16字节
        NSLog(@"%zd",malloc_size((__bridge const void *)obj));
        
        //eg
        NSLog(@"%zd",class_getInstanceSize([JHPerson class]));//36-->N*8 = 40
        NSLog(@"%zd",malloc_size((__bridge const void *)[JHPerson new]));//36 --> N*16 = 48
        
        /*
        总结：OC分配内存是以16字节的倍数进行分配的，16*n，进行内存对齐
        */
        
        //二、Objc对象的本质---实例对象&&类对象
        //1、获取类对象的方法
        NSObject *obj1 = [[NSObject alloc] init];
        NSObject *obj2 = [[NSObject alloc] init];
        Class objectClass1 = [obj1 class];
        Class objectClass2 = [obj2 class];
        Class objectClass3 = [NSObject class];
        Class objectClass4 = objc_getClass("NSObject");
        Class objectClass5 = object_getClass(obj1);
        NSLog(@"\n%p\n%p\n%p\n%p\n%p",
              objectClass1,
              objectClass2,
              objectClass3,
              objectClass4,
              objectClass5);
        
        //三、基础数据类型的内存占用长度
        NSString *tesStr = @"abcdefghijkdededrfr";
        JHPerson *person = [JHPerson new];
        NSLog(@"size int-> %d float-> %d double-> %d char-> %d u_int-> %d long-> %d tesStr-> %d person-> %d bool-> %d",
              sizeof(int),
              sizeof(float),
              sizeof(double),
              sizeof(char),
              sizeof(u_int),
              sizeof(long),
              sizeof(tesStr),
              sizeof(person),sizeof(BOOL));
    }
    return UIApplicationMain(argc , argv, nil, appDelegateClassName);
}

/**
 1、OC文件转C++代码
   xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc main.m -o main-arm64.cpp
 
 
 
 */
