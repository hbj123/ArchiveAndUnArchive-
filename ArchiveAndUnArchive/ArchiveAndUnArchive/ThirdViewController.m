//
//  ThirdViewController.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "ThirdViewController.h"
#import "PrefixHeader.pch"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)startArchive {
    // 1.新的模型对象
    Member *member = [[Member alloc] init];
    member.age = 18;
    member.sex = @"男";
    member.name = @"bj";
    // 2.归档模型对象
    // 2.1.获得Documents的全路径
    // 2.2.获得文件的全路径
    NSString *filePath = kSearchPath(@"member.plist");
    NSLog(@"filePath=%@", filePath);
    // 2.3.将对象归档
    BOOL isTure = [NSKeyedArchiver archiveRootObject:member toFile:filePath];
    [self statueLabelWithAnimation:isTure tag:0];
}

- (void)startUnArchive {
     NSString *filePath = kSearchPath(@"member.plist");
    Member *member = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"name=%@", member.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
