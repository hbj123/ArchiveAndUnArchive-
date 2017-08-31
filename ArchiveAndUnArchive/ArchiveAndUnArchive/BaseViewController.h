//
//  BaseViewController.h
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
@property (nonatomic, strong) UILabel *statueLabel;
@property (nonatomic, strong) UIButton *archiveBtn;
@property (nonatomic, strong) UIButton *unArchiveBtn;

- (void)startArchive;
- (void)startUnArchive;
- (void)statueLabelWithAnimation:(BOOL)animation tag:(NSInteger)tag;
@end
