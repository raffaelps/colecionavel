//
//  ListaColecionaveisViewController.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ListaColecionaveisViewController.h"
#import "ListaColecionavelCell.h"

@interface ListaColecionaveisViewController () {
    NSArray *testeImgs;

}
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
    
    testeImgs = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.listaColecionaveis = nil;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //return testeImgs.count;
    
    return 1;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cvCell";

    ListaColecionavelCell *cell = (ListaColecionavelCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //cell.nomeColecionavel.text = [testeImgs objectAtIndex:indexPath.row];
    //[cell.nomeColecionavel setText:[testeImgs objectAtIndex:indexPath.row]];
    
    //UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    //recipeImageView.image = [UIImage imageNamed:[testeImgs objectAtIndex:indexPath.row]];
    
    cell.nomeColecionavel.text = @"asbdhsadjasda";
    
    return cell;
}



@end
