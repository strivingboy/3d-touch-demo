//
//  PreviewViewController.m
//  3DTouchDemo
//
//  Created by tusu on 15/10/20.
//  Copyright © 2015年 strivingboy. All rights reserved.
//

#import "PreviewViewController.h"

@interface PreviewViewController ()
@property (nonatomic) UIImageView *imageView;
@end

@implementation PreviewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"3D Touch Preview";
    [self initSubViews];
}

- (void)initSubViews
{
    _imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    _imageView.image = [UIImage imageNamed:@"menu4.png"];
    [self.view addSubview:_imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action1"
                                                          style:UIPreviewActionStyleDefault handler:
                                ^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController)
    {
        NSLog(@"action1 selected.");
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action2"
                                                          style:UIPreviewActionStyleSelected handler:
                                ^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController)
    {
        NSLog(@"action2 selected.");
    }];
    UIPreviewAction *action3_1 = [UIPreviewAction actionWithTitle:@"action3-1"
                                                            style:UIPreviewActionStyleDefault handler:
                                  ^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController)
    {
        NSLog(@"action3-1 selected.");
    }];
    UIPreviewAction *action3_2 = [UIPreviewAction actionWithTitle:@"action3-2"
                                                            style:UIPreviewActionStyleDefault handler:
                                  ^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController)
    {
        NSLog(@"action3-2 selected.");
    }];
    UIPreviewActionGroup *action3 = [UIPreviewActionGroup actionGroupWithTitle:@"action3" style:UIPreviewActionStyleDestructive actions:@[action3_1, action3_2]];
    
    return @[action1, action2, action3];
    
}
@end
