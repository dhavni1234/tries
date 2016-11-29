//
//  addIncome.h
//  expMng
//


#import <UIKit/UIKit.h>
#import "incomeClass.h"

@protocol AddIncomeProtocol<NSObject>

-(void)addIncome:(incomeClass*)addIncome;

@end

@interface addIncome : UIViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtFieldIncome;
@property (weak, nonatomic) IBOutlet UITextView *txtViewIncomeDetail;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (strong, nonatomic) IBOutlet UIToolbar *toolbarPicker;
- (IBAction)btnBar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldDate;
- (IBAction)btnSave:(id)sender;

//protocolProperty
@property id<AddIncomeProtocol>delegate;

@end
