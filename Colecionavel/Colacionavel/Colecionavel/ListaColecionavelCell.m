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

- (void)dealloc {
    [imgColecionavel release];
    [nomeColecionavel release];
    [super dealloc];
}
@end
