//
//  Member.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "Member.h"

@implementation Member
/**
 *  将某个对象写入文件时会调用
 *  在这个方法中说清楚哪些属性需要存储
 */
- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.sex forKey:@"sex"];
    [encoder encodeInt:self.age forKey:@"age"];
    [encoder encodeObject:self.name forKey:@"name"];
}

/**
 *  从文件中解析对象时会调用
 *  在这个方法中说清楚哪些属性需要存储
 */
- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init]) {
        // 读取文件的内容
        self.sex = [decoder decodeObjectForKey:@"sex"];
        self.age = [decoder decodeIntForKey:@"age"];
        self.name = [decoder decodeObjectForKey:@"name"];
    }
    return self;
}
@end
