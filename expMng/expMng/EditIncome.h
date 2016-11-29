//
//  EditIncome.h
//  expMng
//

#import <UIKit/UIKit.h>
#import "incomeClass.h"
@protocol EditIncomeProtocol <NSObject>

-(void)editIncome:(incomeClass*)EI atindex:(int)a;


@end


@interface EditIncome : UIViewController<UITextViewDelegate>
- (IBAction)btnDoneEdit:(id)sender;

@property (strong, nonatomic) IBOutlet UIToolbar *toolBarPicker;
@property (strong, nonatomic) IBOutlet UIDatePicker *pickerDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldIncome;
@property (weak, nonatomic) IBOutlet UITextView *textViewDetailOfIncome;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldDate;
- (IBAction)btnDoneToolbar:(id)sender;
@property incomeClass *incomeEdit;
@property int index;
@property id<EditIncomeProtocol>delegateEIVP;

@end
