//
//  CODetailViewController.h
//  Colecionavel
//
//  Created by Raffael Patrício de Souza on 06/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CODetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
