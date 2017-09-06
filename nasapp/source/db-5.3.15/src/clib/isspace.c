/*-
 * See the file LICENSE for redistribution information.
 *
 * Copyright (c) 2005, 2011 Oracle and/or its affiliates.  All rights reserved.
 *
 * $Id: isspace.c,v 1.1.1.1 2012/04/24 01:43:05 thki81 Exp $
 */

#include "db_config.h"

#include "db_int.h"

/*
 * isspace --
 *
 * PUBLIC: #ifndef HAVE_ISSPACE
 * PUBLIC: int isspace __P((int));
 * PUBLIC: #endif
 */
int
isspace(c)
	int c;
{
	return (c == '\t' || c == '\n' ||
	    c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
}