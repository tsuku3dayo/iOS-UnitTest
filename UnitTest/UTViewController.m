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

@synthesize value1 = _value1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIToolbar *numberpadToolbar1 = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    UIToolbar *numberpadToolbar2 = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberpadToolbar1.barStyle = UIBarStyleBlackTranslucent;
    numberpadToolbar2.barStyle = UIBarStyleBlackTranslucent;
    numberpadToolbar1.items = [NSArray arrayWithObjects:[[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelNumberpad1)],[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil], [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberpad1)],nil];
    [numberpadToolbar1 sizeToFit];
    numberpadToolbar2.items = [NSArray arrayWithObjects:[[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelNumberpad2)],[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil], [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberpad2)],nil];
    [numberpadToolbar1 sizeToFit];
    [numberpadToolbar2 sizeToFit];
    self.value1.inputAccessoryView = numberpadToolbar1;
    self.value2.inputAccessoryView = numberpadToolbar2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cancelNumberpad1
{
    [self.value1 resignFirstResponder];
    self.value1.text = @"";
}

- (void)doneWithNumberpad1
{
    NSString *numberFromTheKeyboard = self.value1.text;
    [self.value1 resignFirstResponder];
}

- (void)cancelNumberpad2
{
    [self.value2 resignFirstResponder];
    self.value2.text = @"";
}

- (void)doneWithNumberpad2
{
    NSString *numberFromTheKeyboard = self.value2.text;
    [self.value2 resignFirstResponder];
}



- (IBAction)calc:(UIButton *)sender {
    int value1 = [self.value1.text intValue];
    int value2 = [self.value2.text intValue];
//    int x = [self calcWithA:12 B:34];
    self.total.text = [NSString stringWithFormat:@"%d", [self calcWithA:value1 B:value2]];
}

- (int)calcWithA:(int)a B:(int)b {
    return a + b;
}

@end
