//
//  UTViewController.m
//  UnitTest
//
//  Created by 佃田 吉晴 on 13/05/20.
//  Copyright (c) 2013年 tsuku3dayo. All rights reserved.
//

#import "UTViewController.h"

@interface UTViewController ()

@end

@implementation UTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calc:(UIButton *)sender {
//    int value1 = [self.value1.text intValue];
    int x = [self calcWithA:12 B:34];
    self.total.text = [NSString stringWithFormat:@"%d", x];
}

- (int)calcWithA:(int)a B:(int)b {
    return a + b;
}

@end
