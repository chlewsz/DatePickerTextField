//
//  ViewController.m
//  DateTextFiledDemo
//
//  Created by wsz on 16/9/19.
//  Copyright © 2016年 wsz. All rights reserved.
//

#import "ViewController.h"
#import "DateTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    DateTextField *dateTextField = [[DateTextField alloc]initWithFrame:CGRectMake(20, 84, 200, 44)];
    dateTextField.layer.borderColor = [UIColor grayColor].CGColor;
    dateTextField.layer.borderWidth = 1;
    dateTextField.toolbarBackGroundColor = [UIColor grayColor];
    dateTextField.datePickerMode = UIDatePickerModeDateAndTime;
    dateTextField.dateFormatter = @"yyyy-MM-dd HH:mm:ss";
    [self.view addSubview:dateTextField];
    
    
    DateTextField *dateTextField2 = [[DateTextField alloc]initWithFrame:CGRectMake(20, 134, 200, 44)];
    dateTextField2.layer.borderColor = [UIColor grayColor].CGColor;
    dateTextField2.layer.borderWidth = 1;
    [self.view addSubview:dateTextField2];
}


@end
