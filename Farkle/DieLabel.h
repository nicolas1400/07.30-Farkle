//
//  DieLabel.h
//  Farkle
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate

-(void)didChooseDie:(id)dieLabel;

@end


@interface DieLabel : UILabel

@property id<DieLabelDelegate> delegate;



-(void)roll;

@end

