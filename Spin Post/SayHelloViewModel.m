#import "SayHelloViewModel.h"

@interface SayHelloViewModel ()
@property (nonatomic, strong, readwrite) NSString *promptText;
@end

@implementation SayHelloViewModel

- (instancetype)init {
    self = [super init];
    
    _promptText = @"What is your name?";
    _greetingTemplate = @"Hello, %@!";

    return self;
}

- (void)sayHelloTo:(NSString *)name {
    self.promptText = [NSString stringWithFormat:self.greetingTemplate, name];
}

@end
