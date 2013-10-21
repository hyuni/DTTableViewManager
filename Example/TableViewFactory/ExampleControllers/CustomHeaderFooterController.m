//
//  CustomHeaderFooterController.m
//  DTTableViewController
//
//  Created by Denys Telezhkin on 24.03.13.
//  Copyright (c) 2013 Denys Telezhkin. All rights reserved.
//

#import "CustomHeaderFooterController.h"
#import "CustomHeaderFooterView.h"

@implementation CustomHeaderFooterController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Custom header/footer";
    
    [self registerHeaderClass:[CustomHeaderFooterView class]
                forModelClass:[NSNumber class]];
    
    [self registerFooterClass:[CustomHeaderFooterView class]
                forModelClass:[NSNumber class]];
    
    [self.sectionHeaderModels addObjectsFromArray:@[@(kHeaderKind),@(kHeaderKind)]];
    [self.sectionFooterModels addObjectsFromArray:@[@(kFooterKind),@(kFooterKind)]];
    
    [self addTableItem:[Example exampleWithText:@"Section 1" andDetails:nil]];
    [self addTableItem:[Example exampleWithText:@"Section 2" andDetails:nil]
             toSection:1];
}

@end
