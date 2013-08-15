//
//  ColecionavelDTO.h
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 15/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColecionavelDTO : NSObject

- (id)initWithValue:(NSString*)nome idCategoria:(NSNumber*)idCat descricaoColecionavel:(NSString*)descricao dataColecionavel:(NSData*)data;

@property (nonatomic,retain)NSString *nomeColecionavel;
@property (nonatomic,retain)NSNumber *idCategoria;
@property (nonatomic,retain)NSString *descricaoColecionavel;
@property (nonatomic,retain)NSData *dataColecionavel;

@end
