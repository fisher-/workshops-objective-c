//
//  ViewController.m
//  ATMSimpleApp
//
//  Created by fisher on 07.11.2014.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    self.label.text = @"Hello World!";
    self.label.alpha = 0.0;
    [UIView animateWithDuration:1.0 animations:^{
        self.label.alpha = 1.0;
        self.label.backgroundColor = [UIColor whiteColor];
        self.label.transform = CGAffineTransformMakeRotation(180.0f / M_PI);
    }];
}

@end
