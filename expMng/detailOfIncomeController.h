//
//  detailOfIncomeController.h
//  expMng
//


#import <UIKit/UIKit.h>
#import "incomeClass.h"
#import "EditIncome.h"

@protocol DetailOfIncomeProtocol <NSObject>

-(void)saveIncome:(incomeClass*)saveIncome atIndex:(int)index;

@end


@interface detailOfIncomeController : UIViewController<EditIncomeProtocol>
@property (weak, nonatomic) IBOutlet UILabel *lblIncome;
@property (weak, nonatomic) IBOutlet UITextView *txtViewDetailsOfIncome;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
- (IBAction)btnEditIncome:(id)sender;
@property incomeClass *showDetailedIncomeOfPersonFromIncomeClass;

@property int index;
@property id<DetailOfIncomeProtocol>delegateDIP;
@end
