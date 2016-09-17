//
//  ViewController.m
//  iPhone-Cellular-Network-Strength
//
//  Created by Md. Jawad Noor Asif on 9/17/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import "ViewController.h"
#import "CellularNetworkStrength.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int strengthLevel = [[CellularNetworkStrength sharedInstance]strengthLevel];
    NSLog(@"strength: %ld",(long)strengthLevel);
    double strength = [[CellularNetworkStrength sharedInstance]strengthInDB];
    NSLog(@"strengthInDB: %f DB",strength);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
