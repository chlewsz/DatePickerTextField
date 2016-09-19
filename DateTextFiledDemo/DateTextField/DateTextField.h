//
//  DateTextField.h
//  DateTextFiledDemo
//
//  Created by wsz on 16/9/19.
//  Copyright © 2016年 wsz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateTextField : UITextField

//默认为yyyy-MM-dd
@property(nonatomic, strong)NSString *dateFormatter;
//默认为UIDatePickerModeDate
@property(nonatomic)UIDatePickerMode datePickerMode;
@property(nonatomic, strong)UIColor *datePickerBackGroundColor;
@property(nonatomic, strong)NSDate *maxDate;
@property(nonatomic, strong)NSDate *minDate;

@property(nonatomic, strong)UIColor *toolbarBackGroundColor;


@end
