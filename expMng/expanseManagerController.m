//
//  expanseManagerController.m
//  expMng
//


#import "expanseManagerController.h"

@interface expanseManagerController ()

@end

@implementation expanseManagerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnIncome:(id)sender {
    IncomeController *IC = (IncomeController*)[self.storyboard instantiateViewControllerWithIdentifier:@"incomePage"];
    [self.navigationController pushViewController:IC animated:YES];
}

- (IBAction)btnExpense:(id)sender {
    expenseController *EXP = (expenseController*)[self.storyboard instantiateViewControllerWithIdentifier:@"expenseController"];
    [self.navigationController pushViewController:EXP animated:YES];
}
@end
