//
//  JACellularNetworkStrength.h
//  iPhone-Cellular-Network-Strength
//
//  Created by Md. Jawad Noor Asif on 9/17/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JACellularNetworkStrength : NSObject
+ (JACellularNetworkStrength *)sharedInstance;
- (int)strengthLevel;
- (double)rawStrength;
@end
