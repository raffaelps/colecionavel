//
//  ColecionavelDTO.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 15/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "ColecionavelDTO.h"

@implementation ColecionavelDTO

@synthesize nomeColecionavel,idCategoria,descricaoColecionavel,dataColecionavel;

- (id)initWithValue:(NSString *)nome idCategoria:(NSNumber *)idCat descricaoColecionavel:(NSString *)descricao dataColecionavel:(NSData *)data
{
    if (self = [super init])
    {
        self.nomeColecionavel = nome;
        self.idCategoria = idCat;
        self.descricaoColecionavel = descricao;
        self.dataColecionavel = data;
    }
    
    return self;
}

@end
