//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex: (NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        }   else if (i == 1) {
                [sequence addObject:@1];
        }   else {
            
            NSNumber *valueOfPreviosElement = sequence[i-1];
            NSNumber *valueOfPreviosOfPreviosElement = sequence[i-2];
            
            NSInteger valueOfPreviosElementInt = [valueOfPreviosElement integerValue];
            NSInteger valueOfPreviosOfPreviosElementInt = [valueOfPreviosOfPreviosElement integerValue];
            
            NSNumber *lastNumberInNewArray = @(valueOfPreviosElementInt + valueOfPreviosOfPreviosElementInt);
            
            [sequence addObject:lastNumberInNewArray];

        }
       //  NSLog(@"%@", sequence);
    }
    return sequence;
}

@end
