//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "ResultsViewController.h"

@interface EnterAdverbViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adverbTextField;
@property (weak, nonatomic) IBOutlet UIButton *seeLibButton;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//preparing for segue to - > results
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.verb = self.verb;
    vc.adverb = self.adverbTextField.text;
}

//cancel segue if condition is not met
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([identifier isEqualToString:@"toResultsSegue"])
    {

        if (!(self.adverbTextField.text && self.adverbTextField.text.length > 0))
        {
            return NO;
        }
    }
    return YES;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
