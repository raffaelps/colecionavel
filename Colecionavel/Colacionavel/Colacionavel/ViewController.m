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
#import "CadastroCategoriaViewController.h"
#import "CategoriaDTO.h"
#import "CategoriaDAO.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Colecionável";
    
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:53.0/255.0 green:146.0/255.0 blue:156.0/255.0 alpha:1.0]];
    UIImage *imagem = [UIImage imageNamed:@"barraSuperior.png"];
    [self.navigationController.navigationBar setBackgroundImage:imagem forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Nova"
                                                                    style:UIBarButtonItemStyleBordered target:self action:@selector(abrirCadastroCategoria)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [rightButton release];
    
    listaCategorias = [CategoriaDAO recuperarListaCategorias];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)abrirCadastroCategoria
{
    CadastroCategoriaViewController *cadastro = [[CadastroCategoriaViewController alloc] init];
    [self.navigationController pushViewController:cadastro animated:YES];
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
    cell.txtQuantidade.text = [NSString stringWithFormat:@"15"];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListaColecionaveisViewController *listaColecionaveisViewController = [[ListaColecionaveisViewController alloc] init];
    
    listaColecionaveisViewController.categoria = [listaCategorias objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:listaColecionaveisViewController animated:TRUE];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}

@end
