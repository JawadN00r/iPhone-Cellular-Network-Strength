//
//  CellularNetworkStrength.m
//  iPhone-Cellular-Network-Strength
//
//  Created by Md. Jawad Noor Asif on 9/17/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import "CellularNetworkStrength.h"
#import <UIKit/UIKit.h>

@implementation CellularNetworkStrength
+ (CellularNetworkStrength *)sharedInstance
{
    static CellularNetworkStrength *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[CellularNetworkStrength alloc]init];
    });
    return _sharedInstance;
}

- (int)strengthLevel
{
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *subviews = [[[app valueForKey:@"statusBar"] valueForKey:@"foregroundView"] subviews];
    NSString *dataNetworkItemView = nil;
    
    for (id subview in subviews) {
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarSignalStrengthItemView") class]]) {
            dataNetworkItemView = subview;
            break;
        }
    }
    int signalStrength = [[dataNetworkItemView valueForKey:@"signalStrengthBars"] intValue];
    return signalStrength;
}

- (double)rawStrength
{
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *subviews = [[[app valueForKey:@"statusBar"] valueForKey:@"foregroundView"] subviews];
    NSString *dataNetworkItemView = nil;
    
    for (id subview in subviews) {
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarSignalStrengthItemView") class]]) {
            dataNetworkItemView = subview;
            break;
        }
    }
    double signalStrength = [[dataNetworkItemView valueForKey:@"signalStrengthRaw"] doubleValue];
    return signalStrength;
}
@end
