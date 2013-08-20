//
//  ListaColecionaveisViewController.h
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoriaDTO.h"

@interface ListaColecionaveisViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (retain, nonatomic) IBOutlet UICollectionView *collectionView;

@property(nonatomic,retain)CategoriaDTO *categoria;

@end

