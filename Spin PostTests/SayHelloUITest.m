#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "KIFUITestActor+SpinPostAdditions.h"
#import "SayHelloViewModel.h"
#import "SayHelloViewController.h"

@interface SayHelloUITest : KIFTestCase
@property (nonatomic, strong) SayHelloViewModel *viewModel;
@end

@implementation SayHelloUITest

- (void)setUp {
    [super setUp];

    self.viewModel = [SayHelloViewModel new];
    SayHelloViewController *viewController = [[SayHelloViewController alloc] initWithViewModel:self.viewModel];
    
    [tester makeWindowForViewController:viewController];
}

- (void)testDefaultGreeting {
    [tester waitForViewWithAccessibilityLabel:@"What is your name?"];
    [tester enterText:@"Brian" intoViewWithAccessibilityLabel:@"Name"];
    [tester tapViewWithAccessibilityLabel:@"Say Hello" traits:UIAccessibilityTraitButton];
    [tester waitForViewWithAccessibilityLabel:@"Hello, Brian!"];
}

- (void)testAlternateGreeting {
    self.viewModel.greetingTemplate = @"Guten Tag %@!";

    [tester waitForViewWithAccessibilityLabel:@"What is your name?"];
    [tester enterText:@"Hans" intoViewWithAccessibilityLabel:@"Name"];
    [tester tapViewWithAccessibilityLabel:@"Say Hello" traits:UIAccessibilityTraitButton];
    [tester waitForViewWithAccessibilityLabel:@"Guten Tag Hans!"];
}

@end
