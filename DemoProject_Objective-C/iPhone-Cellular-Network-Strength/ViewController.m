//
//  ViewController.m
//  iPhone-Cellular-Network-Strength
//
//  Created by Md. Jawad Noor Asif on 9/17/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import "ViewController.h"
#import "JACellularNetworkStrength.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *strengthLevelLabel;
@property (strong, nonatomic) IBOutlet UILabel *rawStrengthLabel;

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

#pragma mark - IBActions
- (IBAction)onGetStrengthButton:(id)sender {
    int strengthLevel = [[JACellularNetworkStrength sharedInstance]strengthLevel];
    self.strengthLevelLabel.text = [NSString stringWithFormat:@"%d",strengthLevel];
    double rawStrength = [[JACellularNetworkStrength sharedInstance]rawStrength];
    self.rawStrengthLabel.text = [NSString stringWithFormat:@"%.2f",rawStrength];
}


@end
