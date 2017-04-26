
#import <Foundation/Foundation.h>
#import "SecandViewController.h"
#import "TransitionObj.h"
#import "ViewController.h"

@interface SecandViewController ()
@end

@implementation SecandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.l1v.text=self.transitionObj.l1;
    self.l2v.text=self.transitionObj.l2;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"RETURN"]) {
        //ここでパラメータを渡す
        
        self.transitionObj.l2 = self.f2v.text;
        
        ViewController *dist = segue.destinationViewController;
        dist.transitionObj = self.transitionObj;
    }
    
    
}

@end
