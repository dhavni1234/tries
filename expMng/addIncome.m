//
//  addIncome.m
//  expMng
//


#import "addIncome.h"

@interface addIncome ()

@end

@implementation addIncome

- (void)viewDidLoad {
    [super viewDidLoad];
    //** Code for text view border.**
    [self.txtViewIncomeDetail.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [self.txtViewIncomeDetail.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [self.txtViewIncomeDetail.layer setBorderWidth: 1.0];
    [self.txtViewIncomeDetail.layer setCornerRadius:8.0f];
    [self.txtViewIncomeDetail.layer setMasksToBounds:YES];
    
   // UITextView *myUITextView = [[UITextView alloc] init];
    self.txtViewIncomeDetail.delegate = self;
    self.txtViewIncomeDetail.text = @"Enter your income detail.";
    self.txtViewIncomeDetail.textColor = [UIColor lightGrayColor]; //optional
    
    //**For date textfield.**
    self.txtFieldDate.inputView = self.datePicker;
    self.txtFieldDate.inputAccessoryView = self.toolbarPicker;
    [self.datePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
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

- (IBAction)btnBar:(id)sender {
    [self.view endEditing:YES];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)btnSave:(id)sender {
    incomeClass *ojectAdditionInIncomeClass = [[incomeClass alloc]initWithIncome:self.txtFieldIncome.text detailOfIncome:self.txtViewIncomeDetail.text dateOfIncome:self.datePicker.date];
    [self.delegate addIncome:ojectAdditionInIncomeClass];
    [self.navigationController popViewControllerAnimated:YES];
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

// ***for textfield scrollup/down as on picker apperance.***
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField:textField up:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField:textField up:NO];
}

-(void)animateTextField:(UITextField*)textField up:(BOOL)up
{
    const int movementDistance = -110; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

@end
