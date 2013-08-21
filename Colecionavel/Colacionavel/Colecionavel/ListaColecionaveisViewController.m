//
//  ListaColecionaveisViewController.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ListaColecionaveisViewController.h"
#import "ListaColecionavelCell.h"
#import "DetalheColecionavelViewController.h"

@implementation ListaColecionaveisViewController

static NSString * const kCellReuseIdentifier = @"collectionViewCell";

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
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"ListaColecionavelCell" bundle:nil] forCellWithReuseIdentifier:kCellReuseIdentifier];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(159, 159)];
    [flowLayout setHeaderReferenceSize:CGSizeMake(0,0)];
    [flowLayout setFooterReferenceSize:CGSizeMake(0,0)];
    [flowLayout setMinimumLineSpacing:2];
    [flowLayout setMinimumInteritemSpacing:0];
    [flowLayout setSectionInset:UIEdgeInsetsMake(0,0,0,0)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    [self.collectionView setCollectionViewLayout:flowLayout];
    [self.collectionView setAllowsSelection:YES];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    ListaColecionavelCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellReuseIdentifier forIndexPath:indexPath];
    [cell.nomeColecionavel setText:@"A volta dos cachorros sem dono"];
    [cell.imgColecionavel setImage:[UIImage imageNamed:@"livros.png"]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DetalheColecionavelViewController *detalheColectionavelViewController = [[DetalheColecionavelViewController alloc] init];
    [self.navigationController pushViewController:detalheColectionavelViewController animated:YES];
}

- (CGSize)collectionViewContentSize {
    return CGSizeMake(320, 568);
}

@end
