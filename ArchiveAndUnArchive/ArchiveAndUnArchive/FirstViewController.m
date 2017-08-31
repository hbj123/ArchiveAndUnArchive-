//
//  FirstViewController.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "FirstViewController.h"
#import "PrefixHeader.pch"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
/******一个对象归档成一个文件  ******/
- (void)startArchive {
    NSArray *array = @[@"中国", @"河南", @"信阳"];
    NSString *filePath = kSearchPath(@"single.plist");
    NSLog(@"filePath=%@", filePath);
    BOOL isTure = [NSKeyedArchiver archiveRootObject:array toFile:filePath];
    [self statueLabelWithAnimation:isTure tag:0];

}

- (void)startUnArchive {
    /*解归档*/
     NSString *filePath = kSearchPath(@"single.plist");
     id idObject = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
     NSLog(@"idObject=%@",idObject);
    if (idObject) {
        [self statueLabelWithAnimation:YES tag:1];
    } else
    [self statueLabelWithAnimation:false tag:1];
}


- (void)statueLabelWithAnimation:(BOOL)animation tag:(NSInteger)tag {
    NSLog(@"statueLabelWithAnimation");
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
