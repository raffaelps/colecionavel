//
//  ColecionavelDAO.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 15/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ColecionavelDAO.h"
#import "ColecionavelDTO.h"

@implementation ColecionavelDAO

+ (NSMutableArray *)recuperarListaColecionaveis:(NSNumber *)idCategoria
{
    ColecionavelDTO *c = [[ColecionavelDTO alloc] initWithValue:@"Colecionável 1" idCategoria:[NSNumber numberWithInt:1] descricaoColecionavel:@"Meu colecionável" dataColecionavel:nil];
    
    NSMutableArray *retorno = [[NSMutableArray alloc] initWithObjects:c, nil];
    
    return retorno;
}

@end
