//
//  DateTextField.m
//  DateTextFiledDemo
//
//  Created by wsz on 16/9/19.
//  Copyright © 2016年 wsz. All rights reserved.
//

#import "DateTextField.h"

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width

@interface DateTextField ()

@property(nonatomic, strong)UIDatePicker *datePicker;
@property(nonatomic, strong)UIToolbar *toolBar;

@property(nonatomic, strong)NSDateFormatter *formatter;

@end

@implementation DateTextField

- (UIDatePicker *)datePicker
{
    if (_datePicker == nil)
    {
        _datePicker = [UIDatePicker new];
        _datePicker.backgroundColor = [UIColor whiteColor];
        
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];//设置为中文显示
        _datePicker.locale = locale;
        [_datePicker setDatePickerMode:UIDatePickerModeDate];
    }
    return _datePicker;
}

- (UIToolbar *)toolBar
{
    if (_toolBar == nil)
    {
        _toolBar = [UIToolbar new];
        
        //创建完成按钮
        UIBarButtonItem *completeItem = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(closeKeyBoard)];
        [completeItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont boldSystemFontOfSize:16], NSFontAttributeName,nil] forState:UIControlStateNormal];
        UIBarButtonItem *spaceItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        [_toolBar setItems:@[spaceItem, completeItem]];
    }
    return _toolBar;
}

- (NSDateFormatter *)formatter
{
    if (_formatter == nil)
    {
        _formatter = [NSDateFormatter new];
        _dateFormatter = @"yyyy-MM-dd";
        [_formatter setDateFormat:_dateFormatter];
    }
    return _formatter;
}

- (void)closeKeyBoard
{
    NSDate *date = self.datePicker.date;
    NSString *dateStr = [self.formatter stringFromDate:date];
    self.text = dateStr;
    [self resignFirstResponder];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.inputView = self.datePicker;
        self.inputAccessoryView = self.toolBar;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.toolBar.frame = CGRectMake(0, 0, ScreenWidth, 35);
}

- (void)setDateFormatter:(NSString *)dateFormatter
{
    _dateFormatter = dateFormatter;
    [self.formatter setDateFormat:dateFormatter];
}

- (void)setDatePickerMode:(UIDatePickerMode)datePickerMode
{
    _datePickerMode = datePickerMode;
    [self.datePicker setDatePickerMode:_datePickerMode];
}

- (void)setDatePickerBackGroundColor:(UIColor *)datePickerBackGroundColor
{
    _datePickerBackGroundColor = datePickerBackGroundColor;
    self.datePicker.backgroundColor = _datePickerBackGroundColor;
}

- (void)setMaxDate:(NSDate *)maxDate
{
    _maxDate = maxDate;
    self.datePicker.maximumDate = maxDate;
}

- (void)setMinDate:(NSDate *)minDate
{
    _minDate = minDate;
    self.datePicker.minimumDate = minDate;
}

- (void)setToolbarBackGroundColor:(UIColor *)toolbarBackGroundColor
{
    _toolbarBackGroundColor = toolbarBackGroundColor;
    self.toolBar.barTintColor = toolbarBackGroundColor;
}

@end
