//  ViewController.m
//  expMng
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *passcode;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    passcode = @"1234";
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


//****Alert for wrong pin.*****
- (void)alert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Wrong PIN"
                                                                   message:@"Ooops Try With Correct PIN!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    //Alert action Replay.
    UIAlertAction *Ok =[UIAlertAction actionWithTitle:@"Ok"
                                                   style:UIAlertActionStyleDefault
                                                 handler:^(UIAlertAction *action){
                                                     [alert dismissViewControllerAnimated:YES completion:nil];
                                                    
    }];
    [alert addAction:Ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}
//****Alert for right pin.****
- (void)alertRightPin {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Verification Successfull"
                                                                   message:@"Congratulations you are verified!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    //Alert action Replay.
    UIAlertAction *Ok =[UIAlertAction actionWithTitle:@"Ok"
                                                style:UIAlertActionStyleDefault
                                              handler:^(UIAlertAction *action){
                                                  [alert dismissViewControllerAnimated:YES completion:nil];
    //**** for screen trf.****
    expanseManagerController *emc = (expanseManagerController*)[self.storyboard instantiateViewControllerWithIdentifier:@"expenseManager"];
                                                  [self.navigationController pushViewController:emc animated:YES];
                                                  
                                                  
                                              }];
    
    [alert addAction:Ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}

 - (IBAction)btnEnter:(id)sender
    {
        UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Authorization Required"
                            message:@"Please enter your PIN for authorization"
                            preferredStyle:UIAlertControllerStyleAlert];

            UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Login"
                                                              style:UIAlertActionStyleDestructive
                                                            handler:^(UIAlertAction *action) {
                                                                NSLog(@"Login button tapped!");
                                                                NSLog(@"Textfield text - %@", controller.textFields.firstObject.text);
                                   
        if (controller.textFields.firstObject.text == [NSString stringWithFormat:@"%@",passcode]) {
            [self alertRightPin];
                                                                    
        } else {
                [self alert];
                }

        }];
        
        
        [controller addAction:alertAction];
        
        [controller addTextFieldWithConfigurationHandler:^(UITextField *textField) {
            textField.placeholder = @"Enter Your PIN Here";
            textField.secureTextEntry = YES;
            textField.keyboardType = UIKeyboardTypeNumberPad;
            textField.textColor = [UIColor redColor];
            textField.textAlignment = NSTextAlignmentCenter;


        }];
        
        
        [self presentViewController:controller animated:YES completion:nil];
    }
@end
