//
//  EditIncome.m
//  expMng
//


#import "EditIncome.h"

@interface EditIncome ()

@end

@implementation EditIncome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //** Code for text view border.**
    [self.textViewDetailOfIncome.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [self.textViewDetailOfIncome.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [self.textViewDetailOfIncome.layer setBorderWidth: 1.0];
    [self.textViewDetailOfIncome.layer setCornerRadius:8.0f];
    [self.textViewDetailOfIncome.layer setMasksToBounds:YES];
    
    // UITextView *myUITextView = [[UITextView alloc] init];
    self.textViewDetailOfIncome.delegate = self;
    self.textViewDetailOfIncome.text = @"Enter your income detail.";
    self.textViewDetailOfIncome.textColor = [UIColor lightGrayColor]; //optional
    
    
    //**For date textfield.**
    self.txtFieldDate.inputView = self.pickerDate;
    self.txtFieldDate.inputAccessoryView = self.toolBarPicker;
    [self.pickerDate addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];

    //Data for edit
    self.txtFieldIncome.text = self.incomeEdit.income;
    self.textViewDetailOfIncome.text = self.incomeEdit.detail;
    self.txtFieldDate.text = [NSString stringWithFormat:@"%@",self.incomeEdit.date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)datePickerChanged:(UIDatePicker *)datePicker
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //[dateFormatter setDateFormat:@"dd-MM-yyyy HH:mm"];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSString *strDate = [dateFormatter stringFromDate:datePicker.date];
    self.txtFieldDate.text = strDate;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

//** TextView PlaceHolder text **
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Enter your income detail."]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Enter your income detail.";
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
}


- (IBAction)btnDoneToolbar:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)btnDoneEdit:(id)sender {
    incomeClass *incomeEdit = [[incomeClass alloc]initWithIncome:self.txtFieldIncome.text detailOfIncome:self.textViewDetailOfIncome.text dateOfIncome:self.pickerDate.date];
    
    [self.delegateEIVP editIncome:incomeEdit atindex:self.index];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

@end
