//
//  detailOfIncomeController.m
//  expMng
//


#import "detailOfIncomeController.h"

@interface detailOfIncomeController ()

@end

@implementation detailOfIncomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblIncome.text = self.showDetailedIncomeOfPersonFromIncomeClass.income;
    self.txtViewDetailsOfIncome.text = self.showDetailedIncomeOfPersonFromIncomeClass.detail;
    self.lblDate.text = [NSString stringWithFormat:@"%@",self.showDetailedIncomeOfPersonFromIncomeClass.date];
    
    //textview Border Code:
    [self.txtViewDetailsOfIncome.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [self.txtViewDetailsOfIncome.layer setBorderWidth: 1.0];
    [self.txtViewDetailsOfIncome.layer setCornerRadius:8.0f];
    [self.txtViewDetailsOfIncome.layer setMasksToBounds:YES];
    self.txtViewDetailsOfIncome.editable = NO;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnEditIncome:(id)sender {
    EditIncome *edit = (EditIncome*)[self.storyboard instantiateViewControllerWithIdentifier:@"EditIncome"];
    [self.navigationController pushViewController:edit animated:YES];
    edit.incomeEdit = self.showDetailedIncomeOfPersonFromIncomeClass;
    edit.index = self.index;
    edit.delegateEIVP = self;

}
-(void)editIncome:(incomeClass *)EI atindex:(int)a {
    [self.delegateDIP saveIncome:EI atIndex:a];
}



@end
