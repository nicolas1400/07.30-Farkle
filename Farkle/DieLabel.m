//
//  DieLabel.m
//  Farkle
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

-(IBAction)onTapped:(id)sender{
    
    [self.delegate didChooseDie:self];
    
}

-(void)roll{
    int randomValue = arc4random() % 6 + 1;
    self.text = [NSString stringWithFormat:@"%i",randomValue];
}



@end
