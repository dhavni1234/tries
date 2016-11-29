//http://swiftiostutorials.com/using-uialertcontroller-instead-good-old-uialertview/
//http://stackoverflow.com/questions/33996443/how-to-add-text-input-in-alertview-of-ios-8
//http://stackoverflow.com/questions/24281508/how-to-limit-character-input-in-uialertview-uitextfield
//  ViewController.h
//  expMng
//


#import <UIKit/UIKit.h>
#import "expanseManagerController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFieldPassCode;

- (IBAction)btnEnter:(id)sender;


@end

