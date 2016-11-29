//
//  incomeClass.h
//  expMng
//


#import <Foundation/Foundation.h>

@interface incomeClass : NSObject
@property NSString *income;
@property NSString *detail;
@property NSDate   *date;

-(id)initWithIncome:(NSString*)income detailOfIncome:(NSString*)detail dateOfIncome:(NSDate*)date;

@end
