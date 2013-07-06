//
//  COMasterViewController.h
//  Colecionavel
//
//  Created by Raffael Patrício de Souza on 06/07/13.
//  Copyright (c) 2013 raffaelps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CODetailViewController;

#import <CoreData/CoreData.h>

@interface COMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) CODetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
