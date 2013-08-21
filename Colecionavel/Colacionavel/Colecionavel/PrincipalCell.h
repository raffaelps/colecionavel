//
//  PrincipalCell.h
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalCell : UITableViewCell

@property(nonatomic,retain)IBOutlet UILabel *txtNome;
@property(nonatomic,retain)IBOutlet UILabel *txtDescricao;
@property(nonatomic,retain)IBOutlet UILabel *txtQuantidade;
@property(nonatomic,retain)IBOutlet UIImageView *img;

@end
