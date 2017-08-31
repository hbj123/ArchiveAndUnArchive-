//
//  BJ_Model.h
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJ_Model : NSObject<NSCoding>

@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign, readwrite) int age;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *ato;
@property (nonatomic, assign, readwrite) int hight;
@property (nonatomic, copy) NSString *sport;
@property (nonatomic, strong) NSArray *picUrls;
@property (nonatomic, copy) NSString *className;
@property (nonatomic, assign) float score;

@end
