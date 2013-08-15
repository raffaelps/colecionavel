//
//  CategoriaDAO.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 15/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "CategoriaDAO.h"
#import "CategoriaDTO.h"

@implementation CategoriaDAO

+ (NSMutableArray *)recuperarListaCategorias
{
    CategoriaDTO *c = [[CategoriaDTO alloc] initWithValue:[NSNumber numberWithInt:1] nomeCategoria:@"Livros" imagemCategoria:nil];
    NSMutableArray *retorno = [[NSMutableArray alloc] initWithObjects:c, nil];
    
    return retorno;
}

@end
