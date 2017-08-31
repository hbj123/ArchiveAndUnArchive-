//
//  BaseViewController.m
//  ArchiveAndUnArchive
//
//  Created by hbj on 2017/8/31.
//  Copyright © 2017年 宝剑. All rights reserved.
//

#import "BaseViewController.h"
#import "PrefixHeader.pch"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.view setBackgroundColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.statueLabel];
    
    
    self.archiveBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _archiveBtn.frame = CGRectMake((SCREENW - 200)/ 2, 240, 200, 40);
    [_archiveBtn setTitle:@"开始归档" forState:UIControlStateNormal];
    [_archiveBtn setBackgroundColor:[UIColor lightGrayColor]];
    [_archiveBtn addTarget:self action:@selector(startArchive) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_archiveBtn];
    
    self.unArchiveBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _unArchiveBtn.frame = CGRectMake((SCREENW - 200)/ 2, 300, 200, 40);
    [_unArchiveBtn setTitle:@"开始解档" forState:UIControlStateNormal];
    [_unArchiveBtn setBackgroundColor:[UIColor lightGrayColor]];
    [_unArchiveBtn addTarget:self action:@selector(startUnArchive) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_unArchiveBtn];
    
    
}


- (UILabel *)statueLabel {
    if (!_statueLabel) {
        _statueLabel = [[UILabel alloc] initWithFrame:CGRectMake( 0, 100, SCREENW, 40)];
        _statueLabel.textAlignment = NSTextAlignmentCenter;
        _statueLabel.textColor = [UIColor redColor];
        _statueLabel.text = @"状态判断";
    }
    return _statueLabel;
}

- (void)startArchive {

}

- (void)startUnArchive {
   
}
- (void)statueLabelWithAnimation:(BOOL)animation tag:(NSInteger)tag {
    switch (tag) {
        case 0:
        {
            if(animation){
                self.statueLabel.text = @"保存成功";
            } else {
                self.statueLabel.text = @"保存失败";
            }
        }
            break;
        case 1:
        {
            if(animation){
                self.statueLabel.text = @"解档成功";
            } else {
                self.statueLabel.text = @"解档失败";
            }
        }
            break;
            
        default:
            break;
    }
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
