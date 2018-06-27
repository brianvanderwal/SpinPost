#import "SayHelloViewController.h"
#import "SayHelloViewModel.h"

@interface SayHelloViewController ()
@property (nonatomic, strong) SayHelloViewModel *viewModel;
@end

@implementation SayHelloViewController

- (instancetype)initWithViewModel:(SayHelloViewModel *)viewModel {
    self = [super initWithNibName:nil bundle:nil];
    
    _viewModel = viewModel;
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self refreshUI];
}

- (void)refreshUI {
    self.promptLabel.text = self.viewModel.promptText;
}

- (IBAction)sayHelloButtonTapped:(UIButton *)sender {
    [self.viewModel sayHelloTo:self.nameTextField.text];
    [self refreshUI];
}

@end
