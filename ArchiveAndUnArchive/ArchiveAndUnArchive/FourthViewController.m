//
//  FourthViewController.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "FourthViewController.h"
#import "PrefixHeader.pch"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startArchive {
    NSString *filePath = kSearchPath(@"BJ_Model.plist");
    BJ_Model *model = [[BJ_Model alloc] init];
    model.score = 9.9;
    model.picUrls = @[@"北京", @"上海", @"杭州"];
    BOOL isTure = [NSKeyedArchiver archiveRootObject:model toFile:filePath];
    [self statueLabelWithAnimation:isTure tag:0];
}

- (void)startUnArchive {
    /*解归档*/
    NSString *filePath = kSearchPath(@"BJ_Model.plist");
    id idObject = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"idObject=%@",idObject);
    if (idObject) {
        [self statueLabelWithAnimation:YES tag:1];
    } else
        [self statueLabelWithAnimation:false tag:1];
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
