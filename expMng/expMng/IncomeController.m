//
//  IncomeController.m
//  expMng
//


#import "IncomeController.h"

@interface IncomeController (){
    NSMutableArray *incomeArray;
    int selectedIndex;
    
}

@end

@implementation IncomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSString *dateString = [DateFormatter stringFromDate:[NSDate date]];
    
    
    //
    incomeArray = [[NSMutableArray alloc]init];
    incomeClass *I1 = [[incomeClass alloc]initWithIncome:@"1000" detailOfIncome:@"Trade" dateOfIncome:dateString];
    [incomeArray addObject:I1];
    [incomeArray addObject:[[incomeClass alloc]initWithIncome:@"2000" detailOfIncome:@"Donation" dateOfIncome:dateString]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return incomeArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    incomeClass *IncomeObject = incomeArray[indexPath.row];
    cell.textLabel.text = IncomeObject.income;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",IncomeObject.date];
    return cell;
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = (int)indexPath.row;
    
    return indexPath;
}

//segue for data passing
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    detailOfIncomeController *detailIncome = (detailOfIncomeController*)segue.destinationViewController;
    detailIncome.showDetailedIncomeOfPersonFromIncomeClass = incomeArray[selectedIndex];
    detailIncome.index = selectedIndex;
    detailIncome.delegateDIP = self;
}
//*** AddIncome screen show ****
- (IBAction)btnAdd:(id)sender {
    addIncome *addIncomeToIncomeDataBase = (addIncome*)[self.storyboard instantiateViewControllerWithIdentifier:@"addIncome"];
    addIncomeToIncomeDataBase.delegate = self; // important line to get the added data back(show).
    [self.navigationController pushViewController:addIncomeToIncomeDataBase animated:YES];

}
// Adding income to Array.

-(void)addIncome:(incomeClass *)addIncome {
    [incomeArray addObject:addIncome];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Income Added");
    }];
}

//edition of income
-(void)saveIncome:(incomeClass *)saveIncome atIndex:(int)index {
    incomeArray[index] = saveIncome;
    [self.tableView reloadData];
}



@end
