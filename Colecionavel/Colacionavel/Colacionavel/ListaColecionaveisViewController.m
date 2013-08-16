//
//  ListaColecionaveisViewController.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ListaColecionaveisViewController.h"
#import "ListaColecionavelCell.h"

@interface ListaColecionaveisViewController ()


@end


@implementation ListaColecionaveisViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.listaColecionaveis registerClass:[ListaColecionavelCell class] forCellWithReuseIdentifier:@"cvCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.listaColecionaveis = nil;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //return [[recipeImages objectAtIndex:section] count];
    return 10;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cvCell";

    ListaColecionavelCell *cell = (ListaColecionavelCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.nomeColecionavel.text = @"OI";
    cell.imgColecionavel.image = [UIImage imageNamed:@"full_breakfast.jpg"];
    
    return cell;
}



@end
