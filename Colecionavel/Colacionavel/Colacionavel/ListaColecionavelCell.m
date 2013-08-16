//
//  ListaColecionavelCell.m
//  Colacionavel
//
//  Created by Leonardo on 16/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ListaColecionavelCell.h"

@implementation ListaColecionavelCell

@synthesize nomeColecionavel,imgColecionavel;


- (id)init
{
    if (self) {
        // Initialization code
    }
    return self;
}

/*
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    
    if (selected) {
        [self animateSelection];
    } else {
        [self animateDeselection];
    }
}
*/

- (void)dealloc {
    [imgColecionavel release];
    [nomeColecionavel release];
    [super dealloc];
}
@end
