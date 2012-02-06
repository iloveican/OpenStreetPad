//
//  URLSpecifier.m
//  OpenStreetPad
//
//  Created by Thomas Davie on 31/10/2011.
//  Copyright (c) 2011 Thomas Davie. All rights reserved.
//

#import "OSPMapCSSURLSpecifier.h"

@implementation OSPMapCSSURLSpecifier

@synthesize url;

- (id)initWithSyntaxTree:(CPSyntaxTree *)syntaxTree
{
    self = [super initWithSyntaxTree:syntaxTree];
    
    if (nil != self)
    {
        [self setUrl:[[syntaxTree children] objectAtIndex:0]];
    }
    
    return self;
}

- (id)initWithURL:(OSPMapCSSUrl *)initUrl
{
    self = [super init];
    
    if (nil != self)
    {
        [self setUrl:initUrl];
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"url(%@)", [self url]];
}

- (NSArray *)values
{
    return [NSArray arrayWithObject:[self url]];
}

@end
