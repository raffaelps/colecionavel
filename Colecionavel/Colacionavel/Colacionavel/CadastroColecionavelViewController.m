//
//  CadastroColecionavelViewController.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 29/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "CadastroColecionavelViewController.h"

@interface CadastroColecionavelViewController ()

@end

@implementation CadastroColecionavelViewController

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
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Salvar"
                                                                    style:UIBarButtonItemStyleBordered target:self action:@selector(salvarCadastro)];
    self.navigationItem.rightBarButtonItem = rightButton;
    [rightButton release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imgColecionavel release];
    [_txtNome release];
    [_txtCategoria release];
    [_txtDescricao release];
    [super dealloc];
}

- (void)salvarCadastro
{
    
}

@end
