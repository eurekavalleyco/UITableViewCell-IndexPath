//
//  UITableViewCell+IndexPath.m
//  Sandbox
//
//  Created by Ken M. Haggerty on 1/11/16.
//  Copyright © 2016 MCMDI. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UITableViewCell+IndexPath.h"
#import "AKDebugger.h"
#import "AKGenerics.h"
#import <objc/runtime.h>

#pragma mark - // DEFINITIONS (Private) //

@implementation UITableViewCell (IndexPath)

#pragma mark - // SETTERS AND GETTERS //

- (void)setIndexPath:(NSIndexPath *)indexPath
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter tags:@[AKD_UI] message:nil];
    
    objc_setAssociatedObject(self, @selector(indexPath), indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)indexPath
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter tags:@[AKD_UI] message:nil];
    
    return objc_getAssociatedObject(self, @selector(indexPath));
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end
