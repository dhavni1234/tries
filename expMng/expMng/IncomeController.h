//
//  IncomeController.h
//  expMng
//


#import <UIKit/UIKit.h>
#import "incomeClass.h"
#import "detailOfIncomeController.h"
#import "addIncome.h"
@interface IncomeController : UIViewController<UITableViewDelegate,UITableViewDataSource,AddIncomeProtocol,DetailOfIncomeProtocol>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)btnAdd:(id)sender;

@end
