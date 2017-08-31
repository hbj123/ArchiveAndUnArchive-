//
//  BJ_Model.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "BJ_Model.h"
#import <objc/runtime.h>

@implementation BJ_Model
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        unsigned int count = 0;
        /******取到所有的属性******/
        objc_property_t *propertes = class_copyPropertyList([self class], &count);
        /******遍历所有的属性******/
        for (int i = 0; i<count; i++) {
            //获取当前遍历到的属性名称
            const char *propertyName = property_getName(propertes[i]);
            NSString *name = [NSString stringWithUTF8String:propertyName];
            /******解归档前遍历得到的属性的值******/
            id value = [aDecoder decodeObjectForKey:name];
            [self setValue:value forKey:name];
        }
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    unsigned int count = 0;
    //1.取出所有的属性
    objc_property_t *propertes = class_copyPropertyList([self class], &count);
    //2.遍历的属性
    for (int i=0; i<count; i++) {
        //获取当前遍历的属性的名称
        const char *propertyName = property_getName(propertes[i]);
        NSString *name = [NSString stringWithUTF8String:propertyName];
        //利用KVC取出对应属性的值
        id value = [self valueForKey:name];
        //归档到文件中
        [aCoder encodeObject:value forKey:name];
        
    }
}



@end
