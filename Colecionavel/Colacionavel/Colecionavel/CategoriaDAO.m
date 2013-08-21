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
    CategoriaDTO *a = [[CategoriaDTO alloc] initWithValue:[NSNumber numberWithInt:1] nomeCategoria:@"Livros" descricao:@"Minha coleção de livros" imagemCategoria:nil];
    CategoriaDTO *b = [[CategoriaDTO alloc] initWithValue:[NSNumber numberWithInt:1] nomeCategoria:@"CDs" descricao:@"Minha coleção de CDs" imagemCategoria:nil];
    CategoriaDTO *c = [[CategoriaDTO alloc] initWithValue:[NSNumber numberWithInt:1] nomeCategoria:@"Apostilas didáticas" descricao:@"Minha coleção de apostilas" imagemCategoria:nil];
    
    NSMutableArray *retorno = [[NSMutableArray alloc] initWithObjects:a,b,c, nil];
    
    return retorno;
}

@end
