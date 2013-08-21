//
//  CategoriaDTO.h
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 05/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoriaDTO : NSObject

- (id) initWithValue:(NSNumber*)idCat nomeCategoria:(NSString*)nome descricao:(NSString*)des imagemCategoria:(UIImage*)imagem;

@property (nonatomic,retain)NSNumber *idCategoria;
@property (nonatomic,retain)NSString *nomeCategoria;
@property (nonatomic,retain)NSString *descricaoCategoria;
@property (nonatomic,retain)UIImage *imagemCategoria;

@end
