//
//  ViewController.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 13/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ViewController.h"
#import "PrincipalCell.h"
#import "ListaColecionaveisViewController.h"
#import "CategoriaDTO.h"
#import "CategoriaDAO.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Colecionável";
    
    listaCategorias = [CategoriaDAO recuperarListaCategorias];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return listaCategorias.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PrincipalCell";
    
    PrincipalCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:nil options:nil];
        
        for (id currenctObject in topLevelObjects)
        {
            if ([currenctObject isKindOfClass:[UITableViewCell class]])
            {
                cell = (PrincipalCell *) currenctObject;
            }
        }
    }
    
    CategoriaDTO *c = [listaCategorias objectAtIndex:indexPath.row];
    
    cell.txtNome.text = c.nomeCategoria;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListaColecionaveisViewController *listaColecionaveisViewController = [[ListaColecionaveisViewController alloc] init];
    
    listaColecionaveisViewController.categoria = [listaCategorias objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:listaColecionaveisViewController animated:TRUE];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
