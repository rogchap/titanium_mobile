/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
package org.appcelerator.titanium.util;

import java.util.concurrent.Semaphore;

public class AsyncResult extends Semaphore
{
	private static final long serialVersionUID = 1L;

	protected Object result;
	protected Object arg;

	public AsyncResult() {
		this(null);
	}

	public AsyncResult(Object arg) {
		super(0);
		this.arg = arg;
	}

	public Object getArg() {
		return arg;
	}

	public void setResult(Object result) {
		this.result = result;
		this.release();
	}

	public Object getResult()
	{
		try {
			this.acquire();
		} catch (InterruptedException e) {
			// Ignore
		}
		if (result instanceof Throwable) {
			//TODO handle sending exception
		}
		return result;
	}
}
