//
//  SecondViewController.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "SecondViewController.h"
#import "PrefixHeader.pch"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)startArchive {
    NSArray *array = [NSArray arrayWithObjects:@"世界那么大我想去看看", @"编程是一门学问不是代码的搬运工", nil];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"0123456789", @"数学", @"1010101000111", @"计算机科学", nil];
    NSMutableData *data = [NSMutableData data];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    //编码
    [archiver encodeObject:array forKey:@"array"];
    [archiver encodeObject:dictionary forKey:@"dictionary"];
    //完成编码，将上面的归档数据填充到data中，此时data中已经存储了归档对象的数据
    [archiver finishEncoding];
    
    NSString *filePath = kSearchPath(@"mutable.bj");
    BOOL isTure = [data writeToFile:filePath atomically:YES];
    [self statueLabelWithAnimation:isTure tag:0];

}

- (void)startUnArchive {
 
    NSString *filePath = kSearchPath(@"mutable.bj");
    //读取归档数据
    NSData *data = [[NSData alloc] initWithContentsOfFile:filePath];
    NSLog(@"data==%@", data);
    //创建解归档对象，对data中的数据进行解归档
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    //解归档
    NSArray *array = [unarchiver decodeObjectForKey:@"array"];
    NSLog(@"array=%@",array);
    [self statueLabelWithAnimation:data!=nil ? YES : NO tag:1];
  
}
- (void)statueLabelWithAnimation:(BOOL)animation tag:(NSInteger)tag {
    [super statueLabelWithAnimation:animation tag:tag];
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
