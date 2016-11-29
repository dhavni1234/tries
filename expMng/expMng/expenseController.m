//http://stackoverflow.com/questions/883208/changing-the-background-color-of-a-uialertview
//  expenseController.m
//  expMng
//


#import "expenseController.h"

@interface expenseController ()

@end

@implementation expenseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self alert];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)alert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                   message:@"Server Busy Try Later!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    //[[[[UIApplication sharedApplication] delegate] window] setTintColor:[UIColor redColor]];

    /*UILabel *theTitle = [alert valueForKey:@"_titleLabel"];
    [theTitle setTextColor:[UIColor redColor]];
    
    UILabel *theBody = [alert valueForKey:@"_bodyTextLabel"];
    [theBody setTextColor:[UIColor blueColor]];*/
    
   /* UIImage *theImage = [UIImage imageNamed:@"Background.png"];
    theImage = [theImage stretchableImageWithLeftCapWidth:16 topCapHeight:16];
    CGSize theSize = [theAalertlert frame].size;
    
    UIGraphicsBeginImageContext(theSize);
    [theImage drawInRect:CGRectMake(0, 0, theSize.width, theSize.height)];
    theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [[theAlert layer] setContents:[theImage CGImage]];*/
    
    //Alert action Replay.
    UIAlertAction *Ok =[UIAlertAction actionWithTitle:@"Ok"
                                                style:UIAlertActionStyleDefault
                                              handler:^(UIAlertAction *action){
                                                  [alert dismissViewControllerAnimated:YES completion:nil];
                                                  [self.navigationController popViewControllerAnimated:YES];
                                                  
                                              }];
    [alert addAction:Ok];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}



@end
