#import <UIKit/UIKit.h>

@class SayHelloViewModel;

@interface SayHelloViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *promptLabel;
@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

- (IBAction)sayHelloButtonTapped:(UIButton *)sender;

- (instancetype)initWithViewModel:(SayHelloViewModel *)viewModel;

@end
