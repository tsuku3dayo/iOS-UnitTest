//
//  UTViewController.h
//  UnitTest
//
//  Created by 佃田 吉晴 on 13/05/20.
//  Copyright (c) 2013年 tsuku3dayo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *value1;
@property (weak, nonatomic) IBOutlet UITextField *value2;
@property (weak, nonatomic) IBOutlet UILabel *total;
- (IBAction)calc:(UIButton *)sender;
@end
