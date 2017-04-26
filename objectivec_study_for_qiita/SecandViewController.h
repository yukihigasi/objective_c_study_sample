

#import <UIKit/UIKit.h>
#import "TransitionObj.h"
@interface SecandViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *l1v;
@property (weak, nonatomic) IBOutlet UILabel *l2v;
@property (strong, nonatomic) TransitionObj* transitionObj;
@property (weak, nonatomic) IBOutlet UITextField *f2v;

@end
