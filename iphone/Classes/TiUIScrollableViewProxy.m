/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUIScrollableViewProxy.h"
#import "TiUIScrollableView.h"

@implementation TiUIScrollableViewProxy

-(void)scrollToView:(id)args
{
	ENSURE_SINGLE_ARG(args,NSObject);
	[[self view] performSelectorOnMainThread:@selector(scrollToView:) withObject:args waitUntilDone:NO];
}

-(void)addView:(id)args
{
	ENSURE_SINGLE_ARG(args,TiViewProxy);
	[[self view] performSelectorOnMainThread:@selector(addView:) withObject:args waitUntilDone:NO];
}

-(void)removeView:(id)args
{
	ENSURE_SINGLE_ARG(args,NSObject);
	[[self view] performSelectorOnMainThread:@selector(removeView:) withObject:args waitUntilDone:NO];
}

@end