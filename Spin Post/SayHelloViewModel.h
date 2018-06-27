#import <UIKit/UIKit.h>

@interface SayHelloViewModel : NSObject

@property (nonatomic, strong) NSString *greetingTemplate;
@property (nonatomic, strong, readonly) NSString *promptText;

- (void)sayHelloTo:(NSString *)name;

@end
