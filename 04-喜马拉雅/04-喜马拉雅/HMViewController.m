//
//  HMViewController.m
//  04-喜马拉雅
//
//  Created by apple on 14-8-18.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "HMViewController.h"

@interface HMViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;

@end

@implementation HMViewController
/**
 contentSize    会根据边距调整offset
 contentInset   不会调整offset
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 设置间距
    // 只是指定内容外侧边距，并不会根据contentSize自动调整contentOffset
    self.scrollView.contentInset = UIEdgeInsetsMake(64, 0, 49, 0);
//    // 修改contentOffset
//    self.scrollView.contentOffset = CGPointMake(0, -64);
    
    
    // 设置滚动视图内容
    // 1> 如果当前有间距，根据间距自动调整contentOffset
    // 2> 如果没有间距，contentOffset是(0,0)
    CGFloat h = CGRectGetMaxY(self.lastButton.frame) + 10;
    self.scrollView.contentSize = CGSizeMake(0, h);

    

}


@end
