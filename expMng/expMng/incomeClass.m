//
//  incomeClass.m
//  expMng
//


#import "incomeClass.h"

@implementation incomeClass
-(id)initWithIncome:(NSString *)income detailOfIncome:(NSString *)detail dateOfIncome:(NSDate *)date {
    self.income = income;
    self.detail = detail;
    self.date = date;
    
    return self;
}

@end
