//
//  ViewController.m
//  Farkle
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <DieLabelDelegate>
@property (nonatomic,strong) NSMutableArray *dice;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dice = [[NSMutableArray alloc]init];
    
    for (DieLabel *subview in self.view.subviews) {
        if ([subview isKindOfClass:[DieLabel class]]) {
            subview.delegate = self;
        }
    }
	
}

- (IBAction)onRollButtonPressed:(id)sender {

    
    for (DieLabel *dice in self.view.subviews) {
        if ([dice isKindOfClass:[DieLabel class]]) {
            
            if ([self.dice indexOfObject:dice] == NSNotFound) {
            
            [dice roll];
            }
        }
    }
}


-(void)didChooseDie:(id)dieLabel{
    

    
    DieLabel *label = (DieLabel *)dieLabel;
    [self.dice addObject:label];
    label.backgroundColor = [UIColor redColor];
        
    
    
}

@end
