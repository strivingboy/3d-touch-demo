//
//  ViewController.m
//  3DTouchDemo
//
//  Created by tusu on 15/10/19.
//  Copyright © 2015年 strivingboy. All rights reserved.
//

#import "ViewController.h"
#import "PreviewViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>
@property (weak, nonatomic) IBOutlet UIButton *clickBtn;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([self is3DTouchAvailable]) {
        [self registerForPreviewingWithDelegate:self sourceView:_clickBtn];
    }
}

- (BOOL)is3DTouchAvailable
{
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        return YES;
    }
    return NO;
}
- (IBAction)btnClicked:(id)sender
{
     PreviewViewController *vc = [[PreviewViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    
    previewingContext.sourceRect = CGRectMake(0, 0, previewingContext.sourceView.frame.size.width, previewingContext.sourceView.frame.size.height);
    PreviewViewController *vc = [[PreviewViewController alloc] init];
    vc.preferredContentSize = CGSizeMake(0, 300);
    return vc;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
}


@end
