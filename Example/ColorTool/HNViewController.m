//
//  HNViewController.m
//  ColorTool
//
//  Created by iOSweepingMonk on 03/26/2019.
//  Copyright (c) 2019 iOSweepingMonk. All rights reserved.
//

#import "HNViewController.h"
#import "UIColor+HexColor.h"
#import "UIImage+Scale.h"

@interface HNViewController ()

@end

@implementation HNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIImage imageWithImage:nil scaledToSize:CGSizeZero];
    self.view.backgroundColor = [UIColor colorWithHexString:@"#ffbbaa"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

