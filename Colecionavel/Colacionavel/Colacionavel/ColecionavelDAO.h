//
//  ColecionavelDAO.h
//  Colacionavel
//
//  Created by Raffael Patrício de Souza on 15/08/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColecionavelDAO : NSObject


+ (NSMutableArray*) recuperarListaColecionaveis:(NSNumber*)idCategoria;

@end
