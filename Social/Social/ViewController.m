#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    



}


- (IBAction)postTwitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *tweet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweet setInitialText:@"I'm tweeting!"];
        [self presentViewController:tweet animated:YES completion:nil];
    }
}

- (IBAction)postFacebook:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *face = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [face setInitialText:@"I'm facing!"];
        [self presentViewController:face animated:YES completion:nil];
    }
}
@end
