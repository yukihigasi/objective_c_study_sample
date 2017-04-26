
#import "ViewController.h"

#import "SecandViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *l1v;
@property (weak, nonatomic) IBOutlet UITextField *l2v;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.transitionObj){
        self.l1v.text=self.transitionObj.l1;
        self.l2v.text=self.transitionObj.l2;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"FOWARD"]) {
        //ここでパラメータを渡す
        self.transitionObj = [[TransitionObj alloc] init];
        self.transitionObj.l1 = self.l1v.text;
        self.transitionObj.l2 = self.l2v.text;
        
        SecandViewController *dist = segue.destinationViewController;
        dist.transitionObj = self.transitionObj;
    }
    
    
}
- (IBAction)unwindToTop:(UIStoryboardSegue *)segue{
    self.l1v.text=self.transitionObj.l1;
    self.l2v.text=self.transitionObj.l2;
}
- (IBAction)next:(id)sender {
     [self performSegueWithIdentifier:@"FOWARD" sender:self];
}

@end
