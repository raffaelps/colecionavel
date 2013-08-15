//
//  CategoriaDTO.m
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 05/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import "CategoriaDTO.h"

@implementation CategoriaDTO

@synthesize imagemCategoria,nomeCategoria;

- (id)initWithValue:(NSNumber *)idCat nomeCategoria:(NSString *)nome imagemCategoria:(UIImage *)imagem
{
    if (self = [super init])
    {
        self.idCategoria = idCat;
        self.nomeCategoria = nome;
        self.imagemCategoria = imagem;
    }
    
    return self;
}

@end
