//
//  LSPerson.m
//  LSKVO
//
//  Created by lhs7248 on 2018/4/9.
//  Copyright © 2018年 lhs7248. All rights reserved.
//

#import "LSPerson.h"
#import <objc/runtime.h>
@implementation LSPerson

-(void)setValue:(id)value forKey:(NSString *)key{
    [super setValue:value forKey:key];
    
    NSLog(@"KVC-%@",object_getClass(self));
    NSLog(@"KVC--self class:%@",[self class]);
}

//object_getClass 输出 NSKVONotifying_LSPerson 和 Class 方法的区别  LSPerson
-(void)willChangeValueForKey:(NSString *)key{
    
    [super willChangeValueForKey:key];
    
    NSLog(@"KVO----%@",object_getClass(self));
    NSLog(@"KVO--self class:%@",[self class]);
    
}
-(void)didChangeValueForKey:(NSString *)key{
    [super didChangeValueForKey:key];
    
    NSLog(@"KVO---%@",object_getClass(self));
    NSLog(@"KVO--self class:%@",[self class]);
}

//-(void)setValue:(id)value forKey:(NSString *)key{
//
//    [self willChangeValueForKey:key];
//
//
//    [self didChangeValueForKey:key];
//
//
//}

@end
