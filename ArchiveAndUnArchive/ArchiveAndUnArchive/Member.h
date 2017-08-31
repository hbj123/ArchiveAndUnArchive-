//
//  Member.h
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import <Foundation/Foundation.h>
/******遵循NSCoding协议，然后实现NSCoding中得两个方法******/
@interface Member : NSObject <NSCoding>
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign, readwrite) int age;
@property (nonatomic, copy) NSString *name;

@end
