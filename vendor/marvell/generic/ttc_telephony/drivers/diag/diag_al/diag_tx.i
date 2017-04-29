# 1 "diag_tx.c"
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/diag/diag_al//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "diag_tx.c"
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
 *                                                                                 *
 *     File name:      diag_tx  .c                                                 *
 *     Programmer:     Shiri Dolev                                                 *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                                 *
 *       Create Date:  November, 2003                                              *
 *                                                                                 *
 *       Description: DIAG Tx Definitions - Handle the transmit reports functions. *
 *                                                                                 *
 *       Notes:                                                                    *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 1
/*	$OpenBSD: stdio.h,v 1.35 2006/01/13 18:10:09 miod Exp $	*/
/*	$NetBSD: stdio.h,v 1.18 1996/04/25 18:29:21 jtc Exp $	*/

/*-
 * Copyright (c) 1990 The Regents of the University of California.
 * All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Chris Torek.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)stdio.h	5.17 (Berkeley) 6/3/91
 */




# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 1
/*	$NetBSD: cdefs.h,v 1.58 2004/12/11 05:59:00 christos Exp $	*/

/*
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 */




/*
 * Macro to test if we're using a GNU C compiler of a specific vintage
 * or later, for e.g. features that appeared in a particular version
 * of GNU C.  Usage:
 *
 *	#if __GNUC_PREREQ__(major, minor)
 *	...cool feature...
 *	#else
 *	...delete feature...
 *	#endif
 */
# 59 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs_elf.h" 1
/*	$NetBSD: cdefs_elf.h,v 1.22 2005/02/26 22:25:34 perry Exp $	*/

/*
 * Copyright (c) 1995, 1996 Carnegie-Mellon University.
 * All rights reserved.
 *
 * Author: Chris G. Demetriou
 *
 * Permission to use, copy, modify and distribute this software and
 * its documentation is hereby granted, provided that both the copyright
 * notice and this permission notice appear in all copies of the
 * software, derivative works or modified versions, and any portions
 * thereof, and that both notices appear in supporting documentation.
 *
 * CARNEGIE MELLON ALLOWS FREE USE OF THIS SOFTWARE IN ITS "AS IS"
 * CONDITION.  CARNEGIE MELLON DISCLAIMS ANY LIABILITY OF ANY KIND
 * FOR ANY DAMAGES WHATSOEVER RESULTING FROM THE USE OF THIS SOFTWARE.
 *
 * Carnegie Mellon requests users of this software to return to
 *
 *  Software Distribution Coordinator  or  Software.Distribution@CS.CMU.EDU
 *  School of Computer Science
 *  Carnegie Mellon University
 *  Pittsburgh PA 15213-3890
 *
 * any improvements or extensions that they make and grant Carnegie the
 * rights to redistribute these changes.
 */
# 60 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 2
# 71 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * The __CONCAT macro is used to concatenate parts of symbol names, e.g.
 * with "#define OLD(foo) __CONCAT(old,foo)", OLD(foo) produces oldfoo.
 * The __CONCAT macro is a bit tricky -- make sure you don't put spaces
 * in between its arguments.  __CONCAT can also concatenate double-quoted
 * strings produced by the __STRING macro, but this only works with ANSI C.
 */
# 124 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * Used for internal auditing of the NetBSD source tree.
 */






/*
 * The following macro is used to remove const cast-away warnings
 * from gcc -Wcast-qual; it should be used with caution because it
 * can hide valid errors; in particular most valid uses are in
 * situations where the API requires it, not to cast away string
 * constants. We don't use *intptr_t on purpose here and we are
 * explicit about unsigned long so that we don't have additional
 * dependencies.
 */


/*
 * GCC2 provides __extension__ to suppress warnings for various GNU C
 * language extensions under "-ansi -pedantic".
 */




/*
 * GCC1 and some versions of GCC2 declare dead (non-returning) and
 * pure (no side effects) functions using "volatile" and "const";
 * unfortunately, these then cause warnings under "-ansi -pedantic".
 * GCC2 uses a new, peculiar __attribute__((attrs)) style.  All of
 * these work for GNU C++ (modulo a slight glitch in the C++ grammar
 * in the distribution version of 2.5.5).
 */
# 168 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/* Delete pseudo-keywords wherever they are not available or needed. */
# 212 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * C99 defines the restrict type qualifier keyword, which was made available
 * in GCC 2.92.
 */
# 224 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * C99 defines __func__ predefined identifier, which was made available
 * in GCC 2.95.
 */
# 259 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * A barrier to stop the optimizer from moving code or assume live
 * register values. This is gcc specific, the version is more or less
 * arbitrary, might work with older compilers.
 */






/*
 * GNU C version 2.96 adds explicit branch prediction so that
 * the CPU back-end can hint the processor and also so that
 * code blocks can be reordered such that the predicted path
 * sees a more linear flow, thus improving cache behavior, etc.
 *
 * The following two macros provide us with a way to use this
 * compiler feature.  Use __predict_true() if you expect the expression
 * to evaluate to true, and __predict_false() if you expect the
 * expression to evaluate to false.
 *
 * A few notes about usage:
 *
 *	* Generally, __predict_false() error condition checks (unless
 *	  you have some _strong_ reason to do otherwise, in which case
 *	  document it), and/or __predict_true() `no-error' condition
 *	  checks, assuming you want to optimize for the no-error case.
 *
 *	* Other than that, if you don't know the likelihood of a test
 *	  succeeding from empirical or other `hard' evidence, don't
 *	  make predictions.
 *
 *	* These are meant to be used in places that are run `a lot'.
 *	  It is wasteful to make predictions in code that is run
 *	  seldomly (e.g. at subsystem initialization time) as the
 *	  basic block reordering that this affects can often generate
 *	  larger code.
 */
# 314 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * Macros for manipulating "link sets".  Link sets are arrays of pointers
 * to objects, which are gathered up by the linker.
 *
 * Object format-specific code has provided us with the following macros:
 *
 *	__link_set_add_text(set, sym)
 *		Add a reference to the .text symbol `sym' to `set'.
 *
 *	__link_set_add_rodata(set, sym)
 *		Add a reference to the .rodata symbol `sym' to `set'.
 *
 *	__link_set_add_data(set, sym)
 *		Add a reference to the .data symbol `sym' to `set'.
 *
 *	__link_set_add_bss(set, sym)
 *		Add a reference to the .bss symbol `sym' to `set'.
 *
 *	__link_set_decl(set, ptype)
 *		Provide an extern declaration of the set `set', which
 *		contains an array of the pointer type `ptype'.  This
 *		macro must be used by any code which wishes to reference
 *		the elements of a link set.
 *
 *	__link_set_start(set)
 *		This points to the first slot in the link set.
 *
 *	__link_set_end(set)
 *		This points to the (non-existent) slot after the last
 *		entry in the link set.
 *
 *	__link_set_count(set)
 *		Count the number of entries in link set `set'.
 *
 * In addition, we provide the following macros for accessing link sets:
 *
 *	__link_set_foreach(pvar, set)
 *		Iterate over the link set `set'.  Because a link set is
 *		an array of pointers, pvar must be declared as "type **pvar",
 *		and the actual entry accessed as "*pvar".
 *
 *	__link_set_entry(set, idx)
 *		Access the link set entry at index `idx' from set `set'.
 */





/*
 * Some of the recend FreeBSD sources used in Bionic need this.
 * Originally, this is used to embed the rcs versions of each source file
 * in the generated binary. We certainly don't want this in Bionic.
 */


/*-
 * The following definitions are an extension of the behavior originally
 * implemented in <sys/_posix.h>, but with a different level of granularity.
 * POSIX.1 requires that the macros we test be defined before any standard
 * header file is included.
 *
 * Here's a quick run-down of the versions:
 *  defined(_POSIX_SOURCE)		1003.1-1988
 *  _POSIX_C_SOURCE == 1		1003.1-1990
 *  _POSIX_C_SOURCE == 2		1003.2-1992 C Language Binding Option
 *  _POSIX_C_SOURCE == 199309		1003.1b-1993
 *  _POSIX_C_SOURCE == 199506		1003.1c-1995, 1003.1i-1995,
 *					and the omnibus ISO/IEC 9945-1: 1996
 *  _POSIX_C_SOURCE == 200112		1003.1-2001
 *  _POSIX_C_SOURCE == 200809		1003.1-2008
 *
 * In addition, the X/Open Portability Guide, which is now the Single UNIX
 * Specification, defines a feature-test macro which indicates the version of
 * that specification, and which subsumes _POSIX_C_SOURCE.
 *
 * Our macros begin with two underscores to avoid namespace screwage.
 */

/* Deal with IEEE Std. 1003.1-1990, in which _POSIX_C_SOURCE == 1. */





/* Deal with IEEE Std. 1003.2-1992, in which _POSIX_C_SOURCE == 2. */





/* Deal with various X/Open Portability Guides and Single UNIX Spec. */
# 422 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * Deal with all versions of POSIX.  The ordering relative to the tests above is
 * important.
 */
# 483 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h"
/*
 * Default values.
 */
# 42 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/_types.h" 1
/*	$OpenBSD: _types.h,v 1.1 2006/01/06 18:53:05 millert Exp $	*/

/*-
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)types.h	8.3 (Berkeley) 1/5/94
 */







# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/arch-arm/include/machine/_types.h" 1
/*	$OpenBSD: _types.h,v 1.3 2006/02/14 18:12:58 miod Exp $	*/

/*-
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)types.h	8.3 (Berkeley) 1/5/94
 *	@(#)ansi.h	8.2 (Berkeley) 1/4/94
 */
# 49 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/arch-arm/include/machine/_types.h"
/* 7.18.1.1 Exact-width integer types */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
/* LONGLONG */
typedef long long __int64_t;
/* LONGLONG */
typedef unsigned long long __uint64_t;

/* 7.18.1.2 Minimum-width integer types */
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;

/* 7.18.1.3 Fastest minimum-width integer types */
typedef __int32_t __int_fast8_t;
typedef __uint32_t __uint_fast8_t;
typedef __int32_t __int_fast16_t;
typedef __uint32_t __uint_fast16_t;
typedef __int32_t __int_fast32_t;
typedef __uint32_t __uint_fast32_t;
typedef __int64_t __int_fast64_t;
typedef __uint64_t __uint_fast64_t;

/* 7.18.1.4 Integer types capable of holding object pointers */
typedef int __intptr_t;
typedef unsigned int __uintptr_t;

/* 7.18.1.5 Greatest-width integer types */
typedef __int64_t __intmax_t;
typedef __uint64_t __uintmax_t;

/* Register size */
typedef __int32_t __register_t;

/* VM system types */
typedef unsigned long __vaddr_t;
typedef unsigned long __paddr_t;
typedef unsigned long __vsize_t;
typedef unsigned long __psize_t;

/* Standard system types */
typedef int __clock_t;
typedef int __clockid_t;
typedef long __ptrdiff_t;
typedef int __time_t;
typedef int __timer_t;

typedef __builtin_va_list __va_list;




/* Wide character support types */

typedef int __wchar_t;

typedef int __wint_t;
typedef int __rune_t;
typedef void * __wctrans_t;
typedef void * __wctype_t;
# 41 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/_types.h" 2

typedef unsigned long __cpuid_t; /* CPU id */
typedef __int32_t __dev_t; /* device number */
typedef __uint32_t __fixpt_t; /* fixed point number */
typedef __uint32_t __gid_t; /* group id */
typedef __uint32_t __id_t; /* may contain pid, uid or gid */
typedef __uint32_t __in_addr_t; /* base type for internet address */
typedef __uint16_t __in_port_t; /* IP port type */
typedef __uint32_t __ino_t; /* inode number */
typedef long __key_t; /* IPC key (for Sys V IPC) */
typedef __uint32_t __mode_t; /* permissions */
typedef __uint32_t __nlink_t; /* link count */
typedef __int32_t __pid_t; /* process id */
typedef __uint64_t __rlim_t; /* resource limit */
typedef __uint16_t __sa_family_t; /* sockaddr address family type */
typedef __int32_t __segsz_t; /* segment size */
typedef __uint32_t __socklen_t; /* length type for network syscalls */
typedef __int32_t __swblk_t; /* swap offset */
typedef __uint32_t __uid_t; /* user id */
typedef __uint32_t __useconds_t; /* microseconds */
typedef __int32_t __suseconds_t; /* microseconds (signed) */

/*
 * mbstate_t is an opaque object to keep conversion state, during multibyte
 * stream conversions. The content must not be referenced by user programs.
 */
typedef union {
 char __mbstate8[128];
 __int64_t __mbstateL; /* for alignment */
} __mbstate_t;

/* BIONIC: if we're using non-cleaned up user-level kernel headers, 
 *         this will prevent many type declaration conflicts
 */
# 43 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2

/* va_list and size_t must be defined by stdio.h according to Posix */

# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2009 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.15  Variable arguments  <stdarg.h>
 */
# 36 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 3 4
/* Define __gnuc_va_list.  */



typedef __builtin_va_list __gnuc_va_list;


/* Define the standard macros for the user,
   if this invocation was from the user program.  */
# 47 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2

/* note that this forces stddef.h to *only* define size_t */

# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 49 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */

/* On 4.3bsd-net2, make sure ansi.h is included, so we have
   one less case to deal with in the following.  */



/* On FreeBSD 5, machine/ansi.h does not exist anymore... */




/* In 4.3bsd-net2, machine/ansi.h defines these symbols, which are
   defined if the corresponding type is *not* defined.
   FreeBSD-2.1 defines _MACHINE_ANSI_H_ instead of _ANSI_H_ */
# 94 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 119 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 164 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 211 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 237 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 357 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/*  In 4.3bsd-net2, leave these undefined to indicate that size_t, etc.
    are already defined.  */
/*  BSD/OS 3.1 and FreeBSD [23].x require the MACHINE_ANSI_H check here.  */
# 392 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* A null pointer constant.  */
# 51 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2

# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */





/* snaroff@next.com says the NeXT needs this.  */

/* Irix 5.1 needs this.  */




/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */

/* On 4.3bsd-net2, make sure ansi.h is included, so we have
   one less case to deal with in the following.  */



/* On FreeBSD 5, machine/ansi.h does not exist anymore... */




/* In 4.3bsd-net2, machine/ansi.h defines these symbols, which are
   defined if the corresponding type is *not* defined.
   FreeBSD-2.1 defines _MACHINE_ANSI_H_ instead of _ANSI_H_ */
# 94 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 119 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 149 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 159 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* If this symbol has done its job, get rid of it.  */




/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 237 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 278 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* On BSD/386 1.1, at least, machine/ansi.h defines _BSD_WCHAR_T_
   instead of _WCHAR_T_, and _BSD_RUNE_T_ (which, unlike the other
   symbols in the _FOO_T_ family, stays defined even after its
   corresponding type is defined).  If we define wchar_t, then we
   must undef _WCHAR_T_; for BSD/386 1.1 (and perhaps others), if
   we undef _WCHAR_T_, then we must also define rune_t, since 
   headers like runetype.h assume that if machine/ansi.h is included,
   and _BSD_WCHAR_T_ is not defined, then rune_t is available.
   machine/ansi.h says, "Note that _WCHAR_T_ and _RUNE_T_ must be of
   the same type." */
# 305 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* FreeBSD 5 can't be handled well using "traditional" logic above
   since it no longer defines _BSD_RUNE_T_ yet still desires to export
   rune_t in some cases... */
# 323 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 357 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/*  In 4.3bsd-net2, leave these undefined to indicate that size_t, etc.
    are already defined.  */
/*  BSD/OS 3.1 and FreeBSD [23].x require the MACHINE_ANSI_H check here.  */
# 392 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* A null pointer constant.  */
# 410 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Offset of member MEMBER in a struct of type TYPE. */
# 53 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2


# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */





# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 49 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */

/* On 4.3bsd-net2, make sure ansi.h is included, so we have
   one less case to deal with in the following.  */



/* On FreeBSD 5, machine/ansi.h does not exist anymore... */




/* In 4.3bsd-net2, machine/ansi.h defines these symbols, which are
   defined if the corresponding type is *not* defined.
   FreeBSD-2.1 defines _MACHINE_ANSI_H_ instead of _ANSI_H_ */
# 94 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 119 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* If this symbol has done its job, get rid of it.  */




/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 237 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 357 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/*  In 4.3bsd-net2, leave these undefined to indicate that size_t, etc.
    are already defined.  */
/*  BSD/OS 3.1 and FreeBSD [23].x require the MACHINE_ANSI_H check here.  */
# 392 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* A null pointer constant.  */
# 410 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
/* Offset of member MEMBER in a struct of type TYPE. */
# 34 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */



# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */
# 32 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/_types.h" 1
/*	$OpenBSD: _types.h,v 1.1 2006/01/06 18:53:05 millert Exp $	*/

/*-
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)types.h	8.3 (Berkeley) 1/5/94
 */
# 33 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h" 2
# 44 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/* the definitions of STDINT_LIMITS depend on those of STDINT_MACROS */
# 53 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
typedef __int8_t int8_t;
typedef __uint8_t uint8_t;
typedef __int16_t int16_t;
typedef __uint16_t uint16_t;
typedef __int32_t int32_t;
typedef __uint32_t uint32_t;

typedef __int64_t int64_t;
typedef __uint64_t uint64_t;


/*
 * int8_t & uint8_t
 */

typedef int8_t int_least8_t;
typedef int8_t int_fast8_t;

typedef uint8_t uint_least8_t;
typedef uint8_t uint_fast8_t;
# 97 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/*
 * int16_t & uint16_t
 */


typedef int16_t int_least16_t;
typedef int32_t int_fast16_t;

typedef uint16_t uint_least16_t;
typedef uint32_t uint_fast16_t;
# 131 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/*
 * int32_t & uint32_t
 */

typedef int32_t int_least32_t;
typedef int32_t int_fast32_t;

typedef uint32_t uint_least32_t;
typedef uint32_t uint_fast32_t;
# 165 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/*
 *  int64_t
 */
typedef int64_t int_least64_t;
typedef int64_t int_fast64_t;

typedef uint64_t uint_least64_t;
typedef uint64_t uint_fast64_t;
# 207 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/*
 * intptr_t & uintptr_t
 */

typedef int intptr_t;
typedef unsigned int uintptr_t;
# 224 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/*
 *  intmax_t & uintmax_t
 */



typedef uint64_t uintmax_t;
typedef int64_t intmax_t;
# 255 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdint.h"
/* size_t is defined by the GCC-specific <stddef.h> */


typedef long int ssize_t;




/* Keep the kernel from trying to define these types... */
# 35 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 1
/*	$NetBSD: cdefs.h,v 1.58 2004/12/11 05:59:00 christos Exp $	*/

/*
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 */
# 36 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2

# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/posix_types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/



# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/stddef.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/



# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/compiler.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/
# 16 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/stddef.h" 2
# 16 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/posix_types.h" 2
# 32 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/posix_types.h"
typedef struct {
 unsigned long fds_bits [(1024/(8 * sizeof(unsigned long)))];
} __kernel_fd_set;

typedef void (*__kernel_sighandler_t)(int);

typedef int __kernel_key_t;
typedef int __kernel_mqd_t;

# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/arch-arm/asm/posix_types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/



typedef unsigned long __kernel_ino_t;
typedef unsigned short __kernel_mode_t;
typedef unsigned short __kernel_nlink_t;
typedef long __kernel_off_t;
typedef int __kernel_pid_t;
typedef unsigned short __kernel_ipc_pid_t;
typedef unsigned short __kernel_uid_t;
typedef unsigned short __kernel_gid_t;
typedef unsigned int __kernel_size_t;
typedef int __kernel_ssize_t;
typedef int __kernel_ptrdiff_t;
typedef long __kernel_time_t;
typedef long __kernel_suseconds_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef int __kernel_daddr_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;

typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;
typedef unsigned short __kernel_old_dev_t;


typedef long long __kernel_loff_t;


typedef struct {



 int __val[2];

} __kernel_fsid_t;
# 42 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/posix_types.h" 2
# 38 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/arch-arm/asm/types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/





typedef unsigned short umode_t;

typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;


typedef __signed__ long long __s64;
typedef unsigned long long __u64;
# 39 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/



# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/posix_types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/
# 16 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/arch-arm/asm/types.h" 1
/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ****************************************************************************
 ****************************************************************************/
# 17 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/kernel/common/linux/types.h" 2




typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;

typedef __u64 __le64;
typedef __u64 __be64;


struct ustat {
 __kernel_daddr_t f_tfree;
 __kernel_ino_t f_tinode;
 char f_fname[6];
 char f_fpack[6];
};
# 40 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/arch-arm/include/machine/kernel.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */



/* this file contains kernel-specific definitions that were optimized out of
   our processed kernel headers, but still useful nonetheless... */

typedef unsigned long __kernel_blkcnt_t;
typedef unsigned long __kernel_blksize_t;

/* these aren't really defined by the kernel headers though... */
typedef unsigned long __kernel_fsblkcnt_t;
typedef unsigned long __kernel_fsfilcnt_t;
typedef unsigned int __kernel_id_t;
# 41 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2

typedef __u32 __kernel_dev_t;

/* be careful with __kernel_gid_t and __kernel_uid_t
 * these are defined as 16-bit for legacy reason, but
 * the kernel uses 32-bits instead.
 *
 * 32-bit valuea are required for Android, so use
 * __kernel_uid32_t and __kernel_gid32_t
 */

typedef __kernel_blkcnt_t blkcnt_t;
typedef __kernel_blksize_t blksize_t;
typedef __kernel_clock_t clock_t;
typedef __kernel_clockid_t clockid_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_fsblkcnt_t fsblkcnt_t;
typedef __kernel_fsfilcnt_t fsfilcnt_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_id_t id_t;
typedef __kernel_ino_t ino_t;
typedef __kernel_key_t key_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_nlink_t nlink_t;


typedef __kernel_off_t off_t;

typedef __kernel_loff_t loff_t;
typedef loff_t off64_t; /* GLibc-specific */

typedef __kernel_pid_t pid_t;

/* while POSIX wants these in <sys/types.h>, we
 * declare then in <pthread.h> instead */
# 93 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h"
/* size_t is defined by the GCC-specific <stddef.h> */





typedef __kernel_suseconds_t suseconds_t;
typedef __kernel_time_t time_t;
typedef __kernel_uid32_t uid_t;
typedef signed long useconds_t;

typedef __kernel_daddr_t daddr_t;
typedef __kernel_timer_t timer_t;
typedef __kernel_mqd_t mqd_t;

typedef __kernel_caddr_t caddr_t;
typedef unsigned int uint_t;
typedef unsigned int uint;

/* for some applications */
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/sysmacros.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */



/* some rogue code includes this file directly :-( */




static __inline__ int major(dev_t _dev)
{
  return (_dev >> 8) & 0xfff;
}

static __inline__ int minor(dev_t _dev)
{
  return (_dev & 0xff) | ((_dev >> 12) & 0xfff00);
}

static __inline__ dev_t makedev(int __ma, int __mi)
{
  return ((__ma & 0xfff) << 8) | (__mi & 0xff) | ((__mi & 0xfff00) << 12);
}
# 114 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/types.h" 2


typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef uint32_t u_int32_t;
typedef uint16_t u_int16_t;
typedef uint8_t u_int8_t;
typedef uint64_t u_int64_t;
# 56 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 2
# 78 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
typedef off_t fpos_t; /* stdio file position type */

/*
 * NB: to fit things in six character monocase externals, the stdio
 * code uses the prefix `__s' for stdio objects, typically followed
 * by a three-character attempt at a mnemonic.
 */

/* stdio buffers */
struct __sbuf {
 unsigned char *_base;
 int _size;
};

/*
 * stdio state variables.
 *
 * The following always hold:
 *
 *	if (_flags&(__SLBF|__SWR)) == (__SLBF|__SWR),
 *		_lbfsize is -_bf._size, else _lbfsize is 0
 *	if _flags&__SRD, _w is 0
 *	if _flags&__SWR, _r is 0
 *
 * This ensures that the getc and putc macros (or inline functions) never
 * try to write or read from a file that is in `read' or `write' mode.
 * (Moreover, they can, and do, automatically switch from read mode to
 * write mode, and back, on "r+" and "w+" files.)
 *
 * _lbfsize is used only to make the inline line-buffered output stream
 * code as compact as possible.
 *
 * _ub, _up, and _ur are used when ungetc() pushes back more characters
 * than fit in the current _bf, or when ungetc() pushes back a character
 * that does not match the previous one in _bf.  When this happens,
 * _ub._base becomes non-nil (i.e., a stream has ungetc() data iff
 * _ub._base!=NULL) and _up and _ur save the current values of _p and _r.
 *
 * NOTE: if you change this structure, you also need to update the
 * std() initializer in findfp.c.
 */
typedef struct __sFILE {
 unsigned char *_p; /* current position in (some) buffer */
 int _r; /* read space left for getc() */
 int _w; /* write space left for putc() */
 short _flags; /* flags, below; this FILE is free if 0 */
 short _file; /* fileno, if Unix descriptor, else -1 */
 struct __sbuf _bf; /* the buffer (at least 1 byte, if !NULL) */
 int _lbfsize; /* 0 or -_bf._size, for inline putc */

 /* operations */
 void *_cookie; /* cookie passed to io functions */
 int (*_close)(void *);
 int (*_read)(void *, char *, int);
 fpos_t (*_seek)(void *, fpos_t, int);
 int (*_write)(void *, const char *, int);

 /* extension data, to avoid further ABI breakage */
 struct __sbuf _ext;
 /* data for long sequences of ungetc() */
 unsigned char *_up; /* saved _p when _p is doing ungetc data */
 int _ur; /* saved _r when _r is counting ungetc data */

 /* tricks to meet minimum requirements even when malloc() fails */
 unsigned char _ubuf[3]; /* guarantee an ungetc() buffer */
 unsigned char _nbuf[1]; /* guarantee a getc() buffer */

 /* separate buffer for fgetln() when line crosses buffer boundary */
 struct __sbuf _lb; /* buffer for fgetln() */

 /* Unix stdio files get aligned to block boundaries on fseek() */
 int _blksize; /* stat.st_blksize (may be != _bf._size) */
 fpos_t _offset; /* current lseek offset */
} FILE;


extern FILE __sF[];






 /* RD and WR are never simultaneously asserted */
# 174 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
/*
 * The following three definitions are for ANSI C, which took them
 * from System V, which brilliantly took internal interface macros and
 * made them official arguments to setvbuf(), without renaming them.
 * Hence, these ugly _IOxxx names are *supposed* to appear in user code.
 *
 * Although numbered as their counterparts above, the implementation
 * does not rely on this.
 */
# 191 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
/*
 * FOPEN_MAX is a minimum maximum, and should be the number of descriptors
 * that the kernel can provide without allocation of a resource that can
 * fail without the process sleeping.  Do not use this for anything.
 */



/* System V/ANSI C; this is the wrong way to do this, do *not* use these. */
# 220 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
/*
 * Functions defined in ANSI C standard.
 */

void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE *, fpos_t *);
char *fgets(char *, int, FILE *);
FILE *fopen(const char *, const char *);
int fprintf(FILE *, const char *, ...);
int fputc(int, FILE *);
int fputs(const char *, FILE *);
size_t fread(void *, size_t, size_t, FILE *);
FILE *freopen(const char *, const char *, FILE *);
int fscanf(FILE *, const char *, ...);
int fseek(FILE *, long, int);
int fseeko(FILE *, off_t, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
off_t ftello(FILE *);
size_t fwrite(const void *, size_t, size_t, FILE *);
int getc(FILE *);
int getchar(void);
char *gets(char *);



extern int sys_nerr; /* perror(3) external variables */
extern char *sys_errlist[];

void perror(const char *);
int printf(const char *, ...);
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename(const char *, const char *);
void rewind(FILE *);
int scanf(const char *, ...);
void setbuf(FILE *, char *);
int setvbuf(FILE *, char *, int, size_t);
int sprintf(char *, const char *, ...);
int sscanf(const char *, const char *, ...);
FILE *tmpfile(void);
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE *, const char *, __va_list);
int vprintf(const char *, __va_list);
int vsprintf(char *, const char *, __va_list);


int snprintf(char *, size_t, const char *, ...)
  __attribute__((__format__ (printf, 3, 4)))
  __attribute__((__nonnull__ (3)));
int vfscanf(FILE *, const char *, __va_list)
  __attribute__((__format__ (scanf, 2, 0)))
  __attribute__((__nonnull__ (2)));
int vscanf(const char *, __va_list)
  __attribute__((__format__ (scanf, 1, 0)))
  __attribute__((__nonnull__ (1)));
int vsnprintf(char *, size_t, const char *, __va_list)
  __attribute__((__format__ (printf, 3, 0)))
  __attribute__((__nonnull__ (3)));
int vsscanf(const char *, const char *, __va_list)
  __attribute__((__format__ (scanf, 2, 0)))
  __attribute__((__nonnull__ (2)));





/*
 * Functions defined in POSIX 1003.1.
 */









FILE *fdopen(int, const char *);
int fileno(FILE *);
# 331 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
char *tempnam(const char *, const char *);





/*
 * Routines that are purely local.
 */


int asprintf(char **, const char *, ...)
  __attribute__((__format__ (printf, 2, 3)))
  __attribute__((__nonnull__ (2)));
char *fgetln(FILE *, size_t *);
int fpurge(FILE *);
int getw(FILE *);
int putw(int, FILE *);
void setbuffer(FILE *, char *, int);
int setlinebuf(FILE *);
int vasprintf(char **, const char *, __va_list)
  __attribute__((__format__ (printf, 2, 0)))
  __attribute__((__nonnull__ (2)));


/*
 * Stdio function-access interface.
 */

FILE *funopen(const void *,
  int (*)(void *, char *, int),
  int (*)(void *, const char *, int),
  fpos_t (*)(void *, fpos_t, int),
  int (*)(void *));





/*
 * Functions internal to the implementation.
 */

int __srget(FILE *);
int __swbuf(int, FILE *);


/*
 * The __sfoo macros are here so that we can
 * define function versions in the C library.
 */


static __inline int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}
# 425 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h"
/*
 * The macro implementations of putc and putc_unlocked are not
 * fully POSIX compliant; they do not set errno on failure
 */
# 39 "diag_tx.c" 2
# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2009 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.15  Variable arguments  <stdarg.h>
 */
# 36 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 3 4
/* Define __gnuc_va_list.  */






/* Define the standard macros for the user,
   if this invocation was from the user program.  */
# 55 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 3 4
/* Define va_list, if desired, from __gnuc_va_list. */
/* We deliberately do not define va_list when called from
   stdio.h, because ANSI C says that stdio.h is not supposed to define
   va_list.  stdio.h needs to have access to that data type, 
   but must not use that name.  It should use the name __gnuc_va_list,
   which is safe because it is reserved for the implementation.  */
# 89 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stdarg.h" 3 4
/* The macro _VA_LIST_ is the same thing used by this file in Ultrix.
   But on BSD NET2 we must not test or define or undef it.
   (Note that the comments in NET 2's ansi.h
   are incorrect for _VA_LIST_--see stdio.h!)  */

/* The macro _VA_LIST_DEFINED is used in Windows NT 3.5  */

/* The macro _VA_LIST is used in SCO Unix 3.2.  */

/* The macro _VA_LIST_T_H is used in the Bull dpx2  */

/* The macro __va_list__ is used by BeOS.  */

typedef __gnuc_va_list va_list;
# 40 "diag_tx.c" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/string.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */



# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 1
/*	$NetBSD: cdefs.h,v 1.58 2004/12/11 05:59:00 christos Exp $	*/

/*
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 */
# 32 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/string.h" 2
# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */
# 33 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/string.h" 2
# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/malloc.h" 1
/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */



# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 1
/*	$NetBSD: cdefs.h,v 1.58 2004/12/11 05:59:00 christos Exp $	*/

/*
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 */
# 32 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/malloc.h" 2
# 1 "/home/yanl/marvell.sp6/kernel/../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
/* Copyright (C) 1989, 1997, 1998, 1999, 2000, 2002, 2004, 2009
   Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */
# 33 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/malloc.h" 2



extern __attribute__((malloc)) void* malloc(size_t);
extern __attribute__((malloc)) void* calloc(size_t, size_t);
extern __attribute__((malloc)) void* realloc(void *, size_t);
extern void free(void *);

extern void* memalign(size_t alignment, size_t bytesize);
extern void* valloc(size_t bytesize);
extern void* pvalloc(size_t bytesize);
extern int mallopt(int param_number, int param_value);
extern size_t malloc_footprint(void);
extern size_t malloc_max_footprint(void);

struct mallinfo {
    size_t arena; /* non-mmapped space allocated from system */
    size_t ordblks; /* number of free chunks */
    size_t smblks; /* always 0 */
    size_t hblks; /* always 0 */
    size_t hblkhd; /* space in mmapped regions */
    size_t usmblks; /* maximum total allocated space */
    size_t fsmblks; /* always 0 */
    size_t uordblks; /* total allocated space */
    size_t fordblks; /* total free space */
    size_t keepcost; /* releasable (via malloc_trim) space */
};

extern struct mallinfo mallinfo(void);


/*
  malloc_usable_size(void* p);

  Returns the number of bytes you can actually use in
  an allocated chunk, which may be more than you requested (although
  often not) due to alignment and minimum size constraints.
  You can use this many bytes without worrying about
  overwriting other allocated objects. This is not a particularly great
  programming practice. malloc_usable_size can be more useful in
  debugging and assertions, for example:

  p = malloc(n);
  assert(malloc_usable_size(p) >= 256);
*/
extern size_t malloc_usable_size(void* block);

/*
  malloc_stats();
  Prints on stderr the amount of space obtained from the system (both
  via sbrk and mmap), the maximum amount (which may be more than
  current if malloc_trim and/or munmap got called), and the current
  number of bytes allocated via malloc (or realloc, etc) but not yet
  freed. Note that this is the number of bytes allocated, not the
  number requested. It will be larger than the number requested
  because of alignment and bookkeeping overhead. Because it includes
  alignment wastage as being in use, this figure may be greater than
  zero even when no user-level chunks are allocated.

  The reported current and maximum system memory can be inaccurate if
  a program makes other calls to system memory allocation functions
  (normally sbrk) outside of malloc.

  malloc_stats prints only the most commonly interesting statistics.
  More information can be obtained by calling mallinfo.
*/
extern void malloc_stats(void);


# 34 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/string.h" 2



extern void* memccpy(void *, const void *, int, size_t);
extern void* memchr(const void *, int, size_t);
extern void* memrchr(const void *, int, size_t);
extern int memcmp(const void *, const void *, size_t);
extern void* memcpy(void *, const void *, size_t);
extern void* memmove(void *, const void *, size_t);
extern void* memset(void *, int, size_t);
extern void* memmem(const void *, size_t, const void *, size_t);
extern void memswap(void *, void *, size_t);

extern char* index(const char *, int);
extern char* rindex(const char *, int);
extern char* strchr(const char *, int);
extern char* strrchr(const char *, int);

extern size_t strlen(const char *);
extern int strcmp(const char *, const char *);
extern char* strcpy(char *, const char *);
extern char* strcat(char *, const char *);

extern int strcasecmp(const char *, const char *);
extern int strncasecmp(const char *, const char *, size_t);
extern char* strdup(const char *);

extern char* strstr(const char *, const char *);
extern char* strcasestr(const char *haystack, const char *needle);
extern char* strtok(char *, const char *);
extern char* strtok_r(char *, const char *, char**);

extern char* strerror(int);
extern int strerror_r(int errnum, char *buf, size_t n);

extern size_t strnlen(const char *, size_t);
extern char* strncat(char *, const char *, size_t);
extern char* strndup(const char *, size_t);
extern int strncmp(const char *, const char *, size_t);
extern char* strncpy(char *, const char *, size_t);

extern size_t strlcat(char *, const char *, size_t);
extern size_t strlcpy(char *, const char *, size_t);

extern size_t strcspn(const char *, const char *);
extern char* strpbrk(const char *, const char *);
extern char* strsep(char **, const char *);
extern size_t strspn(const char *, const char *);

extern char* strsignal(int sig);

extern int strcoll(const char *, const char *);
extern size_t strxfrm(char *, const char *, size_t);


# 41 "diag_tx.c" 2

# 1 "../../include/global_types.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/****************************************************************************
 *
 * Name:          global_types.h
 *
 * Description:   Standard type definitions
 *
 ****************************************************************************
 *
 *
 *
 *
 ****************************************************************************
 *                  Copyright (c) Intel 2000
 ***************************************************************************/





# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/stdio.h" 1
/*	$OpenBSD: stdio.h,v 1.35 2006/01/13 18:10:09 miod Exp $	*/
/*	$NetBSD: stdio.h,v 1.18 1996/04/25 18:29:21 jtc Exp $	*/

/*-
 * Copyright (c) 1990 The Regents of the University of California.
 * All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Chris Torek.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)stdio.h	5.17 (Berkeley) 6/3/91
 */
# 28 "../../include/global_types.h" 2

# 1 "../../include/gbl_types.h" 1
/* ===========================================================================
   File        : gbl_types.h
   Description : Global types file.

   Notes       : This file includes the types from the correct environment.
	      The environment is set via the ENV_<ENV> macro. This macro
	      is usually set in /env/<host>/build/<env>_env.mak.

   Copyright 2001, Intel Corporation, All rights reserved.
   =========================================================================== */






/* Use the Xscale environment types */




/* Use the Manitoba environment types */




/* Use the Arm environment types */




/* Use the Gnu environment types */




/* Use the Microsoft Visual C environment types */




/* Use the Microsoft Smartphone environment types */




/* Use the Symbian environment types */




/* Use the POSIX environment types */






/*                         end of gbl_types.h
   --------------------------------------------------------------------------- */
# 30 "../../include/global_types.h" 2
# 1 "../../include/linux_types.h" 1
/* ===========================================================================
   File        : posix_types.h
   Description : Global types file for the POSIX Linux environment.

   Notes       : This file is designed for use in the gnu environment
	      and is referenced from the gbl_types.h file. Use of
			  this file requires ENV_POSIX to be defined in posix_env.mak.

   Copyright 2005, Intel Corporation, All rights reserved.
   =========================================================================== */
# 23 "../../include/linux_types.h"
typedef unsigned char BOOL;
typedef unsigned char UINT8;
typedef unsigned short UINT16;
typedef unsigned int UINT32;

typedef signed char CHAR;
typedef signed char INT8;
typedef signed short INT16;
typedef signed int INT32;

typedef unsigned short WORD;
typedef unsigned int DWORD;
typedef int HANDLE;
typedef HANDLE* LPHANDLE;
typedef unsigned char* PUINT8;
typedef long LONG;
typedef char* LPCTSTR;
typedef char* LPTSTR;
typedef void* LPVOID;
typedef unsigned int* LPDWORD;
typedef unsigned int* PDWORD;
typedef unsigned int* PUINT32;
typedef unsigned short TCHAR;
typedef unsigned int UINT;

typedef INT32 *PINT32;
//typedef UINT32  *PUINT32;
typedef INT16 *PINT16;
typedef UINT16 *PUINT16;
typedef INT8 *PINT8;
//typedef UINT8   *PUINT8;
# 74 "../../include/linux_types.h"
/*                         end of posix_types.h
   --------------------------------------------------------------------------- */
# 31 "../../include/global_types.h" 2

///////////////////////////////////////////////////////////////////////////
// UPDATE - Wrap Definition for Linux
///////////////////////////////////////////////////////////////////////////
# 52 "../../include/global_types.h"
///////////////////////////////////////////////////////////////////////////
// END OF UPDATE
///////////////////////////////////////////////////////////////////////////


/* Standard typedefs */
//typedef unsigned char   BOOL;         /* Boolean                        */
# 78 "../../include/global_types.h"
//typedef UINT8           BYTE;         /* Unsigned 8-bit quantity        */
//typedef UINT16          WORD;         /* Unsigned 16-bit quantity       */
//typedef UINT32          DWORD;        /* Unsigned 32-bit quantity       */

typedef const char * SwVersion;

/*  #define FALSE   0
 #define TRUE    1

 #define YES     TRUE
 #define NO      FALSE

 #define ON      1
 #define OFF     0
 */
/* Definition of NULL is required */
//#define NULL    0






/* Handy macros */



/* Bit fields macros */
# 43 "diag_tx.c" 2

# 1 "diag_config.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      Diag_config .h                                              *
*     Programmer:     Shiri Dolev                                                 *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Configuration File.                                                                      *
*                                                                                 *
*       Notes:                                                                    *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */




///#include "osa.h"
# 1 "diag_osif.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/
# 13 "diag_osif.h"
/////#include "osa.h"






//ADD TEMP!!!!!!!!!!!!!!!!!!!!!!!!


// specific OS defines







# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/assert.h" 1
/*	$OpenBSD: assert.h,v 1.12 2006/01/31 10:53:51 hshoexer Exp $	*/
/*	$NetBSD: assert.h,v 1.6 1994/10/26 00:55:44 cgd Exp $	*/

/*-
 * Copyright (c) 1992, 1993
 *	The Regents of the University of California.  All rights reserved.
 * (c) UNIX System Laboratories, Inc.
 * All or some portions of this file are derived from material licensed
 * to the University of California by American Telephone and Telegraph
 * Co. or Unix System Laboratories, Inc. and are reproduced herein with
 * the permission of UNIX System Laboratories, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)assert.h	8.2 (Berkeley) 1/21/94
 */

/*
 * Unlike other ANSI header files, <assert.h> may usefully be included
 * multiple times, with and without NDEBUG defined.
 */

# 1 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/sys/cdefs.h" 1
/*	$NetBSD: cdefs.h,v 1.58 2004/12/11 05:59:00 christos Exp $	*/

/*
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 */
# 46 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/assert.h" 2
# 62 "/home/yanl/marvell.sp6/vendor/marvell/generic/ttc_telephony/drivers/../../../../..//bionic/libc/include/assert.h"

 void __assert(const char *, int, const char *);
 void __assert2(const char *, int, const char *, const char *);

# 32 "diag_osif.h" 2


// specific OS (OSA_NUCLEUS) interface defines
# 66 "diag_osif.h"
// align code on byte boundary for nbytes , ASSERT define etc.
/*
   The macro IS_DIAG_BLOCKED translates to checking of global variable in Nucleus, to have
   less impact on runtime when ACAT is not connected (operational, production, field testing)
   In WinCE (and Linux?), the usage of global is a bit difficult due to the required import/export
   definition needed from different dll's. Currently this is left with a function call (more instructions
   are performed before finding out no trace should be sent)
 */
# 95 "diag_osif.h"
// Time stamp for traces
# 112 "diag_osif.h"
//#define DIAG_TS_FREE_RUNNING  0x40A00040



UINT32 diagGetTS_LINUX(void);




/* The DIAG-PRINT is using system calls
 * and therefore should never be called from interrupt context.
 * The wrong using may be found only at run-time.
 **/
# 138 "diag_osif.h"
// Temporary define for LInux testing (Mark B. June 2007)



////////////////////  Extern definitions //////////////////
# 162 "diag_osif.h"
//Macro for trace declaration (WinCE taken from diagdb.h)
# 175 "diag_osif.h"
////////////////////////////////////////
//Diag BSP Configuration
////////////////////////////////////////






typedef enum
{
 DEFAULT_EXT_IF_TX = 0,
 MULTI_EXT_IF_TX,
 SINGLE_EXT_IF_TX,

 //Keeping old enum for backward compatibility. Changing the names to specify it's the USB interface.
 USB_EXT_IF_TX_DEFAULT = DEFAULT_EXT_IF_TX,
 USB_EXT_IF_TX_MULTI = MULTI_EXT_IF_TX,
 USB_EXT_IF_TX_SINGLE = SINGLE_EXT_IF_TX,

 DUMMY_EXT_IF_TX = 0x1FFFFFFF //To enforce UINT32 size
} e_extIfTxMulti;

typedef struct
{
 //Don't change the already used parameters
 e_extIfTxMulti extIfTxMulti;
 //You can always extend this structure. Zero stands for default configuration.
 //...
} s_diagBSPconfig;

extern UINT32 diagBSPconfig(s_diagBSPconfig *cfg);
////////////////////////////////////////
////////////////////////////////////////




//function prototypes
extern UINT32 diag_lock(UINT32 *cpsr_ptr);
extern void diag_unlock(UINT32 cpsr_val);
extern void diag_lock_G(void);
extern void diag_unlock_G(void);
extern UINT32 osTimeClockRateGet(void);
extern void diagOSspecificPhase1Init(void);
extern void diagOSspecificPhase2Init(void);
# 42 "diag_config.h" 2
/************************************************************************* Global definitions
s
\************************************************************************/

/* definition of new header version */


/* definition of USERS_ID */






/************************************************************************* Definitions of SAP values
s
\************************************************************************/
# 98 "diag_config.h"
/* definition of SAPs of old header */

/* RX DiagSAP's */





// 8,9,10 CMI SAPS



/* TX DiagSAP's */





// 8,9,10 CMI SAPS


// SAPs which do not have 'sap related data'
# 45 "diag_tx.c" 2
# 1 "../../osa/inc/osa.h" 1
/* ===========================================================================
   File        : osa.h
   Description : This file defines the Intel CCD OS wrapper API and
	      definitions for external application use.

	      The OSA API allows applications to be developed independent of
	      the target microkernel/hardware environment. It provides the
	      facility to add support for multiple independent operating
	      systems from different vendors.

    The OSA API defines a set of interfaces that provide the following
    basic operating system services:

      OS Management     - OSAInitialize(), OSARun()
      Tasks             - OSATaskCreate(), OSATaskDelete(), OSATaskChangePriority(),
			- OSATaskGetPriority(), OSATaskSuspend(), OSATaskResume(),
			- OSATaskSleep(), OSATaskGetCurrentRef()
      Event Flags       - OSAFlagCreate(), OSAFlagDelete(), OSAFlagSet(),
			- OSAFlagWait(), OSAFlagPeek()
      Timers            - OSATimerCreate(), OSATimerDelete(), OSATimerStart(),
			- OSATimerStop(), OSATimerGetStatus()
      Messaging         - OSAMsgQCreate(), OSAMsgQDelete(),
			- OSAMsgQSend(), OSAMsgQRecv(), OSAMsgQPoll()
			- OSAMsgQCreateWithMem()
      Mailboxes         - OSAMailboxQCreate(), OSAMailboxQDelete(),
			- OSAMailboxQSend(), OSAMailboxQRecv(), OSAMailboxQPoll()
      Semaphores        - OSASemaphoreCreate(), OSASemaphoreDelete(),
			- OSASemaphoreAcquire(), OSASemaphoreRelease(),
			- OSASemaphorePoll()
      Mutexes           - OSAMutexCreate(), OSAMutexDelete(),
			- OSAMutexLock(), OSAMutexUnlock(),
      Interrupt Control - OSAIsrCreate(), OSAIsrDelete(),
			- OSAIsrEnable(), OSAIsrDisable(), OSAIsrNotify()
      Real-Time Clock   - OSAGetTicks(), OSAGetClockRate(), OSATick()
			- OSAGetSystemTime()
      Memory            - OSAMemPoolCreate(), OSAMemPoolDelete(),
			- OSAMemPoolAlloc(), OSAMemPoolFree(),
			- OSAMemPoolFixedFree()
      Thread local storage
			- OSATaskSetTls()
			- OSATaskGetTls()
      Symbian Memory    - OSAMemPoolCreateGlobal(), OSAGlobalAlloc(),
			- OSAGlobalRead(), OSAGlobalWrite()

   Copyright (c) 2001 Intel CCD. All Rights Reserved
   =========================================================================== */
# 63 "../../osa/inc/osa.h"
# 1 "../../include/gbl_types.h" 1
/* ===========================================================================
   File        : gbl_types.h
   Description : Global types file.

   Notes       : This file includes the types from the correct environment.
	      The environment is set via the ENV_<ENV> macro. This macro
	      is usually set in /env/<host>/build/<env>_env.mak.

   Copyright 2001, Intel Corporation, All rights reserved.
   =========================================================================== */
# 59 "../../include/gbl_types.h"
/*                         end of gbl_types.h
   --------------------------------------------------------------------------- */
# 64 "../../osa/inc/osa.h" 2
# 1 "../../osa/inc/osa_config.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/* ===========================================================================
   File        : osa_config.h
   Description : Configuration parameters for the
	      os/osa package.

	      The following are internal OS configuration or tuning parameters
	      that are used to configure the OS services. Each service
	      requires a certain amount of internal memory space to store
	      internal OS data for each instance of the service.

   Notes       : These values can be overridden in gbl_config.h
	      The range checks should be updated for each
	      parameter.

   Copyright (c) 2001 Intel CCD. All Rights Reserved
   =========================================================================== */




/* ---------------------------------------------------------------------------
   Parameter   : osa TASKS Config Parameter
   Description : number of tasks required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa TIMERS Config Parameter
   Description : number of timers required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa FLAGS Config Parameter
   Description : number of event flags required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa SEMAPHORES Config Parameter
   Description : number of semaphores required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa MUTEXES Config Parameter
   Description : number of mutexes required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa MEM_POOLS Config Parameter
   Description : number of memory pools required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa MESSAGING_POOL_SIZE Config Parameter
   Description : number of bytes required for total message Q pools in the system
   Notes       : If there are 5 message queues with max size of 32 bytes with a max
	      number of 100 then you would need 100 * 32 bytes per message * 5 = 16000 bytes.
   --------------------------------------------------------------------------- */




/* ---------------------------------------------------------------------------
   Parameter   : osa MSG_QUEUES Config Parameter
   Description : number of message queues required in the system
   Notes       :
   --------------------------------------------------------------------------- */





/* ---------------------------------------------------------------------------
   Parameter   : osa MBOX_POOL_SIZE Config Parameter
   Description : number of bytes required for total mailbox Q pools in the system
   Notes       : If there are 5 mailboxes each with a max of 100 messages then
	      you would need 100 * 4 bytes per message * 5 = 2000 bytes.
   --------------------------------------------------------------------------- */




/* ---------------------------------------------------------------------------
   Parameter   : osa MBOX_QUEUES Config Parameter
   Description : number of mailbox queues required in the system
   Notes       :
   --------------------------------------------------------------------------- */






/* ---------------------------------------------------------------------------
   Parameter   : osa INTERRUPTS Config Parameter
   Description : number of OSA interrupts required in the OSA system
   Notes       :
   --------------------------------------------------------------------------- */






/* ---------------------------------------------------------------------------
   Parameter   : osa GLOBAL_MEMORY_SIZE Config Parameter
   Description : number of bytes of global memory required in the system
   Notes       :
   --------------------------------------------------------------------------- */


// #define OSA_GLOBAL_MEM_POOL_SIZE_STEP  1  // is this needed?


/* ---------------------------------------------------------------------------
   Parameter   : osa SISR_STACK_SIZE Config Parameter
   Description : Size of SISR stack used by all SISR routines using OSA
   Notes       : Configure this setting for the largest amount of stack used by
	      all ISR's in the system, GARSON 512, HERMON 2048
   --------------------------------------------------------------------------- */





/* ----------------------------------------------------------------
   Parameter   : osa TICK_FREQ_IN_MILLISEC Parameter
   Description : Number of milliseconds between each clock tick generated.
   Notes       :
   ---------------------------------------------------------------- */

     /* Ticks are generated every 5ms   */




/* Include the global configuration file, so these values
   can be overridden */



# 1 "../../include/gbl_config.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/* ============================================================================
   File        : gbl_config.h
   Description : Global configuration file for testing the
   os/osa package.

   Notes       : This file is only used to test the compilation and
   archiving for the os/osa package.

   Copyright 2001, Intel Corporation, All rights reserved.
   ============================================================================ */
# 89 "../../include/gbl_config.h"
/*                      end of gbl_config.h
			--------------------------------------------------------------------------- */
# 178 "../../osa/inc/osa_config.h" 2

/* Check the Parameter Ranges */
# 215 "../../osa/inc/osa_config.h"
/*                      end of osa_config.h
   --------------------------------------------------------------------------- */
# 65 "../../osa/inc/osa.h" 2

/*****************************************************************************
 * OSA Constants
 ****************************************************************************/
# 98 "../../osa/inc/osa.h"
/* Remain for backwards compatibility */
# 128 "../../osa/inc/osa.h"
/*========================================================================
 *  OSA Return Error Codes
 *========================================================================*/

enum
{
 OS_SUCCESS = 0, /* 0x0 -no errors                                        */
 OS_FAIL, /* 0x1 -operation failed code                            */
 OS_TIMEOUT, /* 0x2 -Timed out waiting for a resource                 */
 OS_NO_RESOURCES, /* 0x3 -Internal OS resources expired                    */
 OS_INVALID_POINTER, /* 0x4 -0 or out of range pointer value                  */
 OS_INVALID_REF, /* 0x5 -invalid reference                                */
 OS_INVALID_DELETE, /* 0x6 -deleting an unterminated task                    */
 OS_INVALID_PTR, /* 0x7 -invalid memory pointer                           */
 OS_INVALID_MEMORY, /* 0x8 -invalid memory pointer                           */
 OS_INVALID_SIZE, /* 0x9 -out of range size argument                       */
 OS_INVALID_MODE, /* 0xA, 10 -invalid mode                                 */
 OS_INVALID_PRIORITY, /* 0xB, 11 -out of range task priority                   */
 OS_UNAVAILABLE, /* 0xC, 12 -Service requested was unavailable or in use  */
 OS_POOL_EMPTY, /* 0xD, 13 -no resources in resource pool                */
 OS_QUEUE_FULL, /* 0xE, 14 -attempt to send to full messaging queue      */
 OS_QUEUE_EMPTY, /* 0xF, 15 -no messages on the queue                     */
 OS_NO_MEMORY, /* 0x10, 16 -no memory left                              */
 OS_DELETED, /* 0x11, 17 -service was deleted                         */
 OS_SEM_DELETED, /* 0x12, 18 -semaphore was deleted                       */
 OS_MUTEX_DELETED, /* 0x13, 19 -mutex was deleted                           */
 OS_MSGQ_DELETED, /* 0x14, 20 -msg Q was deleted                           */
 OS_MBOX_DELETED, /* 0x15, 21 -mailbox Q was deleted                       */
 OS_FLAG_DELETED, /* 0x16, 22 -flag was deleted                            */
 OS_INVALID_VECTOR, /* 0x17, 23 -interrupt vector is invalid                 */
 OS_NO_TASKS, /* 0x18, 24 -exceeded max # of tasks in the system       */
 OS_NO_FLAGS, /* 0x19, 25 -exceeded max # of flags in the system       */
 OS_NO_SEMAPHORES, /* 0x1A, 26 -exceeded max # of semaphores in the system  */
 OS_NO_MUTEXES, /* 0x1B, 27 -exceeded max # of mutexes in the system     */
 OS_NO_QUEUES, /* 0x1C, 28 -exceeded max # of msg queues in the system  */
 OS_NO_MBOXES, /* 0x1D, 29 -exceeded max # of mbox queues in the system */
 OS_NO_TIMERS, /* 0x1E, 30 -exceeded max # of timers in the system      */
 OS_NO_MEM_POOLS, /* 0x1F, 31 -exceeded max # of mem pools in the system   */
 OS_NO_INTERRUPTS, /* 0x20, 32 -exceeded max # of isr's in the system       */
 OS_FLAG_NOT_PRESENT, /* 0x21, 33 -requested flag combination not present      */
 OS_UNSUPPORTED, /* 0x22, 34 -service is not supported by the OS          */
 OS_NO_MEM_CELLS, /* 0x23, 35 -no global memory cells                      */
 OS_DUPLICATE_NAME, /* 0x24, 36 -duplicate global memory cell name           */
 OS_INVALID_PARM /* 0x25, 37 -invalid parameter                           */
};


/*****************************************************************************
 * OSA Data Types
 ****************************************************************************/

typedef void* OSATaskRef;
typedef void* OSASemaRef;
typedef void* OSAMutexRef;
typedef void* OSAMsgQRef;
typedef void* OSAMailboxQRef;
typedef void* OSAPoolRef;
typedef void* OSATimerRef;
typedef void* OSAFlagRef;
typedef UINT8 OSA_STATUS;
/* Remain for backwards compatibility */
typedef void* OSTaskRef;
typedef void* OSSemaRef;
typedef void* OSMutexRef;
typedef void* OSMsgQRef;
typedef void* OSMailboxQRef;
typedef void* OSPoolRef;
typedef void* OSTimerRef;
typedef void* OSFlagRef;
typedef UINT8 OS_STATUS;

/*****************************************************************************
 * OSA Function Prototypes
 ****************************************************************************/

/*========================================================================
 *  OSA Initialization:
 *
 *  Initializes OSA internal structures, tables, and OS specific services.
 *
 *========================================================================*/
 extern OSA_STATUS OSAInitialize(void);

/*========================================================================
 *  OSA Task Management:
 *========================================================================*/
 extern OSA_STATUS OSATaskCreate(
 OSATaskRef * taskRef, /* OS task reference                       */
 void* stackPtr, /* pointer to start of task stack area     */
 UINT32 stackSize, /* number of bytes in task stack area      */
 UINT8 priority, /* task priority 0 - 31                    */
 CHAR * taskName, /* task name                               */
 void (*taskStart)(void*), /* pointer to task entry point        */
 void* argv /* task entry argument pointer             */
 );

 extern OSA_STATUS OSATaskDelete( OSATaskRef taskRef );
 extern OSA_STATUS OSATaskSuspend( OSATaskRef taskRef );
 extern OSA_STATUS OSATaskResume( OSATaskRef taskRef );
 extern void OSATaskSleep( UINT32 ticks ); /* time to sleep in ticks        */

 extern OSA_STATUS OSATaskChangePriority(
 OSATaskRef taskRef, /* OS task reference                       */
 UINT8 newPriority, /* new task priority                       */
 UINT8 *oldPriority /* old task priority                       */
 );

 extern OSA_STATUS OSATaskGetPriority(
 OSATaskRef taskRef, /* OS task reference                       */
 UINT8 *priority /* task priority                           */
 );

 extern void OSATaskYield( void ); /* Allow other ready tasks to run          */
 OSA_STATUS OSATaskGetCurrentRef( OSATaskRef *taskRef ); /* Get current running task ref  */

 extern void OSARun( void );

/*========================================================================
 *  OSA Message Passing
 *========================================================================*/
 extern OSA_STATUS OSAMsgQCreate(
 OSMsgQRef * msgQRef, /* OS message queue reference              */



 UINT32 maxSize, /* max message size the queue supports     */
 UINT32 maxNumber, /* max # of messages in the queue          */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSAMsgQCreateWithMem(
 OSMsgQRef * msgQRef, /* OS message queue reference              */



 UINT32 maxSize, /* max message size the queue supports     */
 UINT32 maxNumber, /* max # of messages in the queue          */
 void *qAddr, /* start address of queue memory           */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSAMsgQDelete( OSMsgQRef msgQRef );

 extern OSA_STATUS OSAMsgQSend(
 OSMsgQRef msgQRef, /* message queue reference                 */
 UINT32 size, /* size of the message                     */
 UINT8 *msgPtr, /* start address of the data to be sent    */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout   */
 );

 extern OSA_STATUS OSAMsgQRecv(
 OSMsgQRef msgQRef, /* message queue reference                 */
 UINT8 *recvMsg, /* pointer to the message received         */
 UINT32 size, /* size of the message                     */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout   */
 );

 extern OSA_STATUS OSAMsgQPoll(
 OSMsgQRef msgQRef, /* message queue reference                 */
 UINT32 *msgCount /* number of messages on the queue         */
 );

/*========================================================================
 *  OSA Mailboxes
 *========================================================================*/
 extern OSA_STATUS OSAMailboxQCreate(
 OSMailboxQRef * mboxQRef, /* OS mailbox queue reference              */



 UINT32 maxNumber, /* max # of messages in the queue          */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSAMailboxQDelete( OSMailboxQRef mboxRef );

 extern OSA_STATUS OSAMailboxQSend(
 OSMailboxQRef mboxQRef, /* message queue reference                 */
 void *msgPtr, /* start address of the data to be sent    */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND               */
 );

 extern OSA_STATUS OSAMailboxQRecv(
 OSMailboxQRef mboxQRef, /* message queue reference                 */
 void **recvMsg, /* pointer to the message received         */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout   */
 );

 extern OSA_STATUS OSAMailboxQPoll(
 OSMailboxQRef mboxQRef, /* message queue reference                 */
 UINT32 *msgCount /* number of messages on the queue         */
 );


/*========================================================================
 *  OSA Event Management:
 *========================================================================*/
 extern OSA_STATUS OSAFlagCreate(
 OSFlagRef *flagRef /* OS reference to the flag                */
 );

 extern OSA_STATUS OSAFlagCreateGlobal(
 OSFlagRef *flagRef, /* OS reference to the flag                */
 char *flagName /* name of the event flag                  */
 );

 extern OSA_STATUS OSAFlagDelete( OSFlagRef flagRef );

 extern OSA_STATUS OSAFlagSet(
 OSFlagRef flagRef, /* OS reference to the flag                */
 UINT32 mask, /* flag mask                               */
 UINT32 operation /* OSA_FLAG_AND, OSA_FLAG_OR               */
 );

 extern OSA_STATUS OSAFlagWait(
 OSFlagRef flagRef, /* OS reference to the flag                */
 UINT32 mask, /* flag mask to wait for                   */
 UINT32 operation, /* OSA_FLAG_AND, OSA_FLAG_AND_CLEAR,       */
    /* OSA_FLAG_OR, OSA_FLAG_OR_CLEAR          */
 UINT32 *flags, /* Current value of all flags              */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout   */
 );

 extern OSA_STATUS OSAFlagPeek(
 OSFlagRef flagRef, /* OS reference to the flag                */
 UINT32 *flags /* returned current value of the flag      */
 );


/*========================================================================
 *  OSA Timer Management:
 *========================================================================*/
/* Timer status information structure */
typedef struct
{
 UINT32 status; /* timer status OS_ENABLED, OS_DISABLED    */
 UINT32 expirations; /* number of expirations for cyclic timers */
} OSATimerStatus;

 extern OSA_STATUS OSATimerStart(
 OSTimerRef timerRef, /* OS supplied timer reference             */
 UINT32 initialTime, /* initial expiration time in ms           */
 UINT32 rescheduleTime, /* timer period after initial expiration   */
 void (*callBackRoutine)(UINT32), /* timer call-back routine     */
 UINT32 timerArgc /* argument to be passed to call-back on expiration */
 );

 extern OSA_STATUS OSATimerCreate( OSTimerRef* timerRef );
 extern OSA_STATUS OSATimerDelete( OSTimerRef timerRef );
 extern OSA_STATUS OSATimerStop( OSTimerRef timerRef );

 extern OSA_STATUS OSATimerGetStatus(
 OSTimerRef timerRef, /* timer reference                     */
 OSATimerStatus *timerStatus /* timer status information            */
 );


/*========================================================================
 *  OSA Semaphore Management
 *========================================================================*/
 extern OSA_STATUS OSASemaphoreCreate(
 OSSemaRef *semaRef, /* OS semaphore reference                  */
 UINT32 initialCount, /* initial count of the semaphore          */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSASemaphoreCreateGlobal(
 OSSemaRef *semaRef, /* OS semaphore reference                     */
 char *semaName, /* name of sema to create                     */
 UINT32 initialCount, /* initial count of the semaphore             */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSASemaphoreDelete( OSSemaRef semaRef );

 extern OSA_STATUS OSASemaphoreAcquire(
 OSSemaRef semaRef, /* OS semaphore reference                   */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout    */
 );

 extern OSA_STATUS OSASemaphoreRelease( OSSemaRef semaRef );

 extern OSA_STATUS OSASemaphorePoll(
 OSSemaRef semaRef, /* OS semaphore reference                   */
 UINT32 *count /* Current semaphore count                  */
 );

/*========================================================================
 *  OSA Mutex Management
 *========================================================================*/
 extern OSA_STATUS OSAMutexCreate(
 OSMutexRef *mutexRef, /* OS mutex reference                         */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSAMutexDelete( OSSemaRef semaRef );

 extern OSA_STATUS OSAMutexLock(
 OSMutexRef mutexRef, /* OS mutex reference                       */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout    */
 );

 extern OSA_STATUS OSAMutexUnlock( OSMutexRef mutexRef );


/*========================================================================
 *  OSA Interrupt Control
 *========================================================================*/
 extern OSA_STATUS OSAIsrCreate(
 UINT32 isrNum, /* interrupt to attach routine to          */
 void (*fisrRoutine)(UINT32), /* first level ISR routine to be called    */
 void (*sisrRoutine)(void) /* second level ISR routine to be called   */
 );

 extern OSA_STATUS OSAIsrDelete( UINT32 isrNum );
 extern OSA_STATUS OSAIsrNotify( UINT32 isrNum );

extern UINT32 OSAIsrEnable( UINT32 mask );
extern UINT32 OSAIsrDisable( UINT32 mask );

 extern OSA_STATUS OSAContextLock( void );
 extern OSA_STATUS OSAContextUnlock( void );

/*========================================================================
 *  OSA Sys Context info
 *========================================================================*/
/* Previos Context information structure */
typedef struct
{
 UINT32 prev_task_context;
 UINT32 prev_interrupt_context;
} OSASysContext;


 extern OSA_STATUS OSASysContextLock(OSASysContext *prevContext);
 extern OSA_STATUS OSASysContextUnlock(void);
 extern OSA_STATUS OSASysContextRestore(OSASysContext *prevContext);

/*===========================================================================
 *  OSA Real-Time Access:
 *=========================================================================*/
extern UINT32 OSAGetTicks( void );
 extern UINT32 OSAGetClockRate( void );
extern void OSATick( void );

 extern OSA_STATUS OSAGetSystemTime(
 UINT32 *secsPtr,
 UINT16 *milliSecsPtr
 );

/*========================================================================
 *  OSA Memory Heap Access
 *
 *  Allocating Memory -
 *
 *  Deallocating Memory -
 *
 *========================================================================*/
 extern OSA_STATUS OSAMemPoolCreate(
 OSPoolRef *poolRef, /* OS assigned reference to the pool      */
 UINT32 poolType, /* OSA_FIXED or OS_VARIABLE                */
 UINT8* poolBase, /* pointer to start of pool memory        */
 UINT32 poolSize, /* number of bytes in the memory pool     */
 UINT32 partitionSize, /* size of partitions in fixed pools      */
 UINT8 waitingMode /* mode of tasks waiting OS_FIFO, OS_PRIORITY */
 );

 extern OSA_STATUS OSAMemPoolDelete( OSPoolRef poolRef );

 extern OSA_STATUS OSAMemPoolAlloc(
 OSPoolRef poolRef, /* OS reference to the pool to be used    */
 UINT32 size, /* number of bytes to be allocated        */
 void** mem, /* pointer to start of allocated memory   */
 UINT32 timeout /* OS_SUSPEND, OS_NO_SUSPEND, or timeout  */
 );

 extern OSA_STATUS OSAMemPoolFree(
 OSPoolRef poolRef, /* OS reference to the pool to be used    */
 void* mem /* pointer to start of memory to be freed */
 );
 extern OSA_STATUS OSAMemPoolFixedFree( void *mem ); /* Ptr to fixed pool memory */

 extern OSA_STATUS OSAMemPoolCreateGlobal(
 OSAPoolRef *poolRef, /* OS reference to the partition pool to be used    */
 char *poolName, /* name of global mem pool                */
 UINT8* poolBase, /* pointer to start of pool memory        */
 UINT32 poolSize, /* size of the pool                       */
 UINT32 partitionSize /* size of partitions in the pool         */
 );

 extern OSA_STATUS OSATaskSetTls(void *arg); /* set up the thread local storage (TLS) to the pointer arg*/
 extern OSA_STATUS OSATaskGetTls(void **arg); /* get the TLS pointer and assign it to arg */
# 545 "../../osa/inc/osa.h"
/*****************************************************************************
 * OSA Internal Assert macro definition
 ****************************************************************************/
# 586 "../../osa/inc/osa.h"
/* Remap old function names to new ones to remain backwards compatibility with
 * old function calls.
 */
# 46 "diag_tx.c" 2
# 1 "diag_types.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/





////////#include "osa.h"





typedef struct ModuleMessageIDTag
{
 INT16 moduleID; //Need to signed to support Comparison to INVALID_VALUE = (-1)
 UINT16 messageID;
}ModuleMessageID;



/* NOTE: negative logic: bit=0 means trace is sent, 1 - filtered out */
// also, if g_OverridePassFilter is set, indicate that there's no filter




typedef union
{
 struct {
  UINT8 icatNotReady; //BOOL
  UINT8 blockSendPDU; //BOOL
  UINT8 traceProhibited; //BOOL
 }flags;
 UINT32 all;
}DiagBlockReasons;

typedef enum
{
 DIAG_PEND_MSG_TX_OK = 0,
 DIAG_PEND_MSG_TX_ERR
}DIAG_pendMsgSt; // status of pending messages in buffer


typedef enum
{
 DIAG_ERROR_CHANNEL_ALREADY_CLOSED = 0,
 DIAG_CLOSE_CHANNEL_OK
} DiagCloseChStatus;

typedef enum
{
 DIAG_CHAR = 0,
 DIAG_CHAR_BUFFER_SIZE_KNOWN,
 DIAG_CHAR_BUFFER_SIZE_UNKNOWN,
 DIAG_SHORT,
 DIAG_SHORT_BUFFER_SIZE_KNOWN,
 DIAG_SHORT_BUFFER_SIZE_UNKNOWN,
 DIAG_LONG,
 DIAG_LONG_BUFFER_SIZE_KNOWN,
 DIAG_LONG_BUFFER_SIZE_UNKNOWN,
 DIAG_STRING,
 DIAG_ENUM,
 DIAG_ENUM_SHORT,
 DIAG_ENUM_LONG,
 DIAG_ENUM_BUFFER_SIZE_KNOWN,
 DIAG_ENUM_BUFFER_SIZE_UNKNOWN,
 DIAG_ENUM_SHORT_BUFFER_SIZE_KNOWN,
 DIAG_ENUM_SHORT_BUFFER_SIZE_UNKNOWN,
 DIAG_ENUM_LONG_BUFFER_SIZE_KNOWN,
 DIAG_ENUM_LONG_BUFFER_SIZE_UNKNOWN,
 DIAG_ENUM_DUMMY_FOCE_4BYTE_VALUE = 0x00FFFFFF
}ParameterType;

typedef struct {
 ParameterType types; //the parameter type
 UINT16 repititions; //0 - no info about no. of repititions (open brackets), 1 or more - the no. of repititions
}ParameterInfo;

typedef struct {
 UINT16 moduleId;
 UINT16 reportId;
 UINT16 numOfParams;
 ParameterInfo parameters[1]; // variable length array
} DiagTraceDescriptor;

//typedef UINT32 * CommandAddress;	//Manitoba
typedef void (*CommandAddress)(void); //Hermon

typedef char* CommandProto;
typedef const char * DiagDBVersion;

/* This enum defines the protocol types to be used when the diag logger */
/*	communicates with ICAT.Currently only PROTOCOL_TYPE_0 is supported	*/

// ICAT EXPORTED ENUM
typedef enum
{
 PROTOCOL_TYPE_0 = 0,
 MAX_PROTOCOL_TYPES
}ProtocolType;

//ICAT EXPORTED STRUCT
typedef struct
{
 BOOL bEnabled; //enable/disable the trace logging feature
 ProtocolType eProtocolType; //protocol type for communication with ICAT, currently only protocol type 0 is supported
 UINT16 nMaxDataPerTrace; //for each trace, what is the maximum data length to accompany the trace, in protocol type 0, this is relevant only to DSP messages
}DiagLoggerDefs;
// Filler entry value
# 47 "diag_tx.c" 2
# 1 "diag.h" 1



# 1 "diag_API.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_api .h                                                 *
*     Programmer:     Shiri Dolev                                                 *
*                     Ohad Peled, Itzik Yankilevich, Barak Witkowsky, Yaeli Karni *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Tx APIs - MACROs.									   *
*                                                                                 *
*       Notes:  There are 2 files diag_API_var.h and diag_API.h                   *
*               The diag_API_var.h - declaration without MACRO-re-define          *
*               The diag_API.h     - has part which is re-defined by MACROs       *
*                                    and treated differently by PrePassProcessor! *
*                                                                                 *
* July 2007 - fix macros DIAT_TRACEM... (IY)									   *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
# 5 "diag.h" 2
# 1 "diag_API_var.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      Diag_API_var .h                                             *
*     Programmer:     Shiri Dolev                                                 *
*                     Ohad Peled                                                  *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Tx Multiple Params Definitions.						   *
*                                                                                 *
*       Notes:  There are 2 files diag_API_var.h and diag_API.h                   *
*               The diag_API_var.h - declaration without MACRO-re-define          *
*               The diag_API.h     - has part which is re-defined by MACROs       *
*                                    and treated differently by PrePassProcessor! *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
# 6 "diag.h" 2
# 1 "diag_header_external.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_header_handler.h                                       *
*     Programmer:     Barak Witkowski                                             *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2006                                              *
*                                                                                 *
*       Description:                                                                                                                       *
*                                                                                 *
*       Notes:                                                                    *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */



/* definitions of fields sizes in the new header */
# 54 "diag_header_external.h"
# 1 "diag_header_handler.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_header_handler.h                                       *
*     Programmer:     Barak Witkowski                                                 *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2006                                              *
*                                                                                 *
*       Description:                                                                                                                       *
*                                                                                 *
*       Notes:                                                                    *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */



# 1 "../../include/global_types.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/****************************************************************************
 *
 * Name:          global_types.h
 *
 * Description:   Standard type definitions
 *
 ****************************************************************************
 *
 *
 *
 *
 ****************************************************************************
 *                  Copyright (c) Intel 2000
 ***************************************************************************/
# 40 "diag_header_handler.h" 2
# 1 "diag_pdu.h" 1
/*------------------------------------------------------------

   (C) Copyright [2006-2008] Marvell International Ltd.

   All Rights Reserved

   ------------------------------------------------------------*/
# 6 "diag_pdu.h"
/*--------------------------------------------------------------------------------------------------------------------

   INTEL CONFIDENTIAL

   Copyright 2006 Intel Corporation All Rights Reserved.

   The source code contained or described herein and all documents related to the source code ("Material") are owned

   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or

   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of

   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and

   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,

   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.



   No license under any patent, copyright, trade secret or other intellectual property right is granted to or

   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,

   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by

   Intel in writing.

   -------------------------------------------------------------------------------------------------------------------*/
# 22 "diag_pdu.h"
/*******************************************************************************

*               MODULE HEADER FILE

********************************************************************************

* Title: diag

*

* Filename: diag_pdu.h

*

* Target, platform: Common Platform, SW platform

*

* Authors:  Yoel Lavi

*

* Description:

*

* Last Updated:

*

* Notes:

*******************************************************************************/
# 43 "diag_pdu.h"
////////////#include "ICAT_config.h"
# 1 "../../include/global_types.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/****************************************************************************
 *
 * Name:          global_types.h
 *
 * Description:   Standard type definitions
 *
 ****************************************************************************
 *
 *
 *
 *
 ****************************************************************************
 *                  Copyright (c) Intel 2000
 ***************************************************************************/
# 45 "diag_pdu.h" 2

/*-- Header constants in tx/rx buffer ----------------------------------*/
# 60 "diag_pdu.h"
/*-----------------5/29/2005 12:49------------------

 * Support long messages in L2

 * --------------------------------------------------*/





/*-- Type definitions (T type) -----------------------------------------*/
typedef struct
{
 UINT16 STX; // = DIAG_L2L4_PROTOCOL_STX
 UINT8 ProtocolID;
 UINT8 Length;
}TxL2L4PDUHeader; //TxSSPPDUHeader;

typedef struct
{



 UINT16 ETX;

}TxL2L4PDUFooter; //TxSSPPDUFooter;


/* the code below defines sizes of header in footer, depending on old/new header and interfaces defined (relevant for old header only */







/* in old msg structure footer does not exist for USB, but is exist for L2,L4 - we always allocate

   space, not always using it.. */

// size of signal header (we dont have in it SAP related data (no ModuleID, msgID data))


typedef struct
{
 UINT8 txPduHeader[16];
 UINT8 data[1];
}TxPDU;

/*-- Public Functions Prototypes ---------------------------------------*/
# 41 "diag_header_handler.h" 2
# 1 "diag_osif.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/
# 42 "diag_header_handler.h" 2
/****************************************
*                                      *
*                       Constants Definition		*
*                                      *
****************************************/




// #define  SIZE_OF_TX_HEADER sizeof(TxPDUHeader)



/* definition of checksum bit in total length field */
/* MS Bit of total length field is checksumExist bit */


/* ****************************** */
/* options third byte definitions */
/* ****************************** */
/* Bit 0 - Padding LS Bit */


/* Bit 1 - Padding MS Bit */


/*
	OPTIONS appear in the follwoing order (if exist):
	- SAP-related
	- TimeStamp
	- Frame Number
	- Message Counter

	(if the options field contains only SAP-related and Message-counter,
	 then after the 4 bytes of options, there will be four bytes of SAP-related data followed by
	 four bytes of Message-Counter

	 if the options field contains  TimeStamp, Frame Number and Message-counter,
	 then after the 4 bytes of options, there will be:
	 four bytes of TimeStamp followed by
	 four bytes of Frame-Number followed by
	 four bytes of Message-Counter
	)
 */
/* Bit 2 - SAP_RELATED_DATA_BIT */


/* Bit 3 - Timestamp */


/* Bit 4 - Frame number */


/* Bit 5 - Message counter */


/* ***************************************** */
/* options third (and last) byte definitions */
/* ***************************************** */
/* Bit 7 (left most bit) will indicate another option data (4 bytes) */



/****************************************
*                                      *
*                       Struct Definition			*
*                                      *
****************************************/

/* ====================================== *
*       Diag Message Header Struct		  *
* ====================================== */
/*
 * New Header structure. Currently, header size is static
 * ----------------------------------------------------------------------------------------------------------------------
 */
typedef struct
{
 /* SoT pattern */
 UINT16 sot;

 /* Total length of packet data without the SOT, EOT, but including the Padding. That is the total length
	 * is counted from (including) the Total Length field, till (including) the last byte of the Payload-data
	 * and padding.Total Length is not expected to exceed ~6K bytes. */
 UINT16 msgTotalLen;

 /* length of the header. The length is calculated from that field to the end of all options fields,
	 * which means: right before the start of the payload data */
 UINT16 headerTotalLen;

 /* Version of header, anytime more data is added to the header, version should be updated so SW will know
	 * what is relevant (see OPTIONS field) - each addition of option, or new fields should be indicated by
	 * new header version. */
 UINT16 headerVersion;

 /* The sending source (ICAT, Core-n). */
 UINT8 source;

 /* The destination (ICAT, Core-n). */
 UINT8 destination;

 /* Message type (SAP) - indicate how to manipulate the payload data. It can be accompanied with some
	 * relevant data in the first option (for ModueID, CommandID, ServiceID etc). */
 UINT16 msgType_Sap;

 /* Bit field which indicates presence of data (unassigned bits must be zero, when a new bit is assigned,
	 * the header version should be incremented).
	 * There is an option bit (bit 0, LSB) to expand OPTIONS.
	 * Each optional field (declared by the a bit) should be 4 bytes in size, even if there is no current need 4 bytes.
	 * In order to avoid little endians complications the field will be splitted to 4 different bytes */
 UINT8 options[4];

 /* the options data. Each data is 4 bytes. Data appears according to the bits in the options field
	 * The currently available options field are: SAP related data, counter, frame number and time stamp */
 UINT32 optionsData[4];
} TxPDUNewHeader;

/* current TxPDUHeader header */
typedef struct
{
 union {
  TxL2L4PDUHeader L2L4Header;
  struct {
   UINT16 length;
   UINT16 PID;
   } rawHeader;
 } extIfhdr;
 UINT16 DiagSAP;
 UINT16 counter;
 UINT16 moduleID;
 UINT16 msgID;
 UINT32 timeStamp;
}TxPDUOldHeader;

/* define header struct (old or new) according to the suitable switch */





/* current signal Tx Header structure */
typedef struct
{
 union {
  TxL2L4PDUHeader L2L4Header;
  UINT32 length;
 } extIfhdr;
 UINT16 DiagSAP;
 UINT16 counter;
 UINT32 timeStamp;
}TxPDUSigHeader;

typedef struct
{
 UINT8 DiagSAP;
 UINT8 serviceID;
 UINT16 moduleID;
 UINT32 commID;
 UINT32 sourceID;
 UINT8 functionParams[1]; //contains the requested command input parameters
}RxPDU;
typedef struct
{

 struct {
  UINT16 length;
  UINT16 PID;
  } rawHeader;
 UINT8 DiagSAP;
 UINT8 serviceID;
 UINT16 moduleID;
 UINT32 commID;
 UINT32 sourceID;
 UINT32 CMMversion;
}TxPDUCMMHeader;

/* global flags indicating which optional data should be sent in the tx messages */
typedef struct
{
 /* flag indicating whether time stamp should be added to tx messages */
 BOOL TimeStampExist;
 /* flag indicating whether counter should be added to tx messages */
 BOOL MsgCounterExist;
 /* flag indicating whether checksum should be added to tx messages */
 /*^^Barak. in the future this paramter should be per interface */
 BOOL ChecksumExist;
 /* flag indicating whether frame number should be added to tx messages */
 BOOL FrameNumberExist;
} globalFlagsStrct;

/****************************************
*                                      *
*                       Globals Declaration			*
*                                      *
****************************************/
// Interface for FUll Frame number - be placed in the counter field and high byte of module ID.
// Pointer to Frame number - set by L1
// The frame number is stored in the counter field and high byte of ModuleID field
// due to current limitation of the header
extern UINT32* diagFrameNumberPtr;

// Flag is full frame number should be set (also in the module ID field) or only
// in the counter field (for back ward compatibility with ICAT (2.6 and before)
//  - the full FN is set only on ICAT command)
# 55 "diag_header_external.h" 2
typedef void VOID;
/****************************************
*   Definiiton of Core2Core messages    *
****************************************/
/*       YKstat
	C2C_STATISTICS ( March 2008) - used for statistics of COMM
		on internal, and apps on ext apps catches the message and adds its
		statistics. Sends out as trace from COMM (comm send traceID in the message)
 */


/****************************************
*                                      *
*                       Function Declaration		*
*                                      *
****************************************/

VOID setTxDiagTraceHeader(UINT8 *pHeader, UINT16 *pduLen, UINT16 type, UINT16 moduleID, UINT16 msgID);
VOID CreateDiagErrMsgHeader(UINT8 *pHeader, UINT16 pduLen);
VOID InsertCounterAndCheckSumToTxHeader(UINT8 *pHeader, UINT32 MsgCounter);
VOID CreateConnectedDeviceQueryTxHeader(UINT8 *pHeader, UINT16 packetLen);
UINT16 GetMsgIDFromTxHeader(UINT8 *pHeader);
VOID InsertTimeStampToTxHeader(UINT8 *pHeader);
//VOID	ChangeMsgPointerAndLengthDueToDiffInHeaders(UINT8 connectedDev, UINT8 **msg, UINT16 *len, Allocation_Type allocType);
// The 3rd parameter is for 'old header' only  - as the header differes on different interfaces.
extern INT8 GetMessageCoreID(UINT8* pData, UINT32 nLen, UINT32 bIsUSBheader);
extern void SetMessageOtherCoreID(UINT8* pData, UINT32 myCoreID);
INT8 GetMessageCoreIDForIntIf(UINT8* pData);
UINT16 GetRxMsgDiagSap(UINT8 *rxMsg);
UINT16 GetRxMsgServiceID(UINT8 *rxMsg);
UINT16 GetRxMsgModuleID(UINT8 *rxMsg);
UINT32 GetRxMsgCommID(UINT8 *rxMsg);
UINT32 GetRxMsgSourceID(UINT8 *rxMsg);
UINT8 *GetRxMsgFunctionParams(UINT8 *rxMsg);
void SetRxMsgDiagSap(UINT8 *rxMsg, UINT8 newDiagSap);
void SetSapAndServiceIDofCmdToOtherCore(UINT8 *rxMsg, UINT8 diagInternalServiceType);
UINT32 GetUsbMsgLen(void* pHeader);
BOOL IsICATReadyNotify(UINT8* pData);
UINT8 FindSoTOffset(void* pHeader);
BOOL IsC2CStats(UINT8 *pData);


VOID setTxDiagSigHeader(void *pMsg, UINT16 *pduLen);







VOID diagCalcUpdateTxL2L4MessageLength(TxL2L4PDUHeader *header, UINT16 *messageLength, UINT32 *padBytes);

/* This function sets a new a pointer to frame number, which will be inserted
 * in the header counter field (instead of the regular count up) - 2 lower bytes
 * (LSBytes 0 and LSByte 1 of FN) and
 * if Full-Frame-number requested (by ICAT command), then the high byte of
 * the module ID will be set with the 3rd byte (LSByte 3) of the frame number
 */
VOID SetDiagTxMsgFramNumberPtr(const UINT32* const NewFNPtr);
# 7 "diag.h" 2

# 1 "../../include/linux_types.h" 1
/* ===========================================================================
   File        : posix_types.h
   Description : Global types file for the POSIX Linux environment.

   Notes       : This file is designed for use in the gnu environment
	      and is referenced from the gbl_types.h file. Use of
			  this file requires ENV_POSIX to be defined in posix_env.mak.

   Copyright 2005, Intel Corporation, All rights reserved.
   =========================================================================== */
# 74 "../../include/linux_types.h"
/*                         end of posix_types.h
   --------------------------------------------------------------------------- */
# 9 "diag.h" 2
# 24 "diag.h"
//#define DiagDataIndProcId 3
//#define DiagDataReqProcId 4
# 40 "diag.h"
typedef int (*DiagRxCallbackFunc)(char* packet, int len);
typedef struct _diagheader
{
 UINT16 seqNo;
 UINT16 packetlen;
 UINT32 reserved;
}DIAGHDR; //don't change the definition. variable definition order sensitive.


void diagTxRawData(unsigned char *msg, int msglen);
void diagSendUsbData(unsigned char*msg, int msglen);

void InitDiagChannel(void);
void DeInitDiagChannel(void);
void diagTxMsg(int procId, unsigned char *msg, int msglen);
int diagRegisterRxCallBack(DiagRxCallbackFunc callback);
int diagUnregisterRxCallBack(void);
void diagUsbConnectNotify();
void diagUsbDisConnectNotify();
# 48 "diag_tx.c" 2
# 1 "diag_pdu.h" 1
/*------------------------------------------------------------

   (C) Copyright [2006-2008] Marvell International Ltd.

   All Rights Reserved

   ------------------------------------------------------------*/
# 6 "diag_pdu.h"
/*--------------------------------------------------------------------------------------------------------------------

   INTEL CONFIDENTIAL

   Copyright 2006 Intel Corporation All Rights Reserved.

   The source code contained or described herein and all documents related to the source code ("Material") are owned

   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or

   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of

   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and

   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,

   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.



   No license under any patent, copyright, trade secret or other intellectual property right is granted to or

   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,

   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by

   Intel in writing.

   -------------------------------------------------------------------------------------------------------------------*/
# 22 "diag_pdu.h"
/*******************************************************************************

*               MODULE HEADER FILE

********************************************************************************

* Title: diag

*

* Filename: diag_pdu.h

*

* Target, platform: Common Platform, SW platform

*

* Authors:  Yoel Lavi

*

* Description:

*

* Last Updated:

*

* Notes:

*******************************************************************************/
# 49 "diag_tx.c" 2
# 1 "diag_tx.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_tx  .h                                                 *
*     Programmer:     Shiri Dolev                                                 *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Tx Definitions - Handle the transmit reports functions. *
*                                                                                 *
*       Notes:                                                                    *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */




# 1 "../../osa/inc/osa.h" 1
/* ===========================================================================
   File        : osa.h
   Description : This file defines the Intel CCD OS wrapper API and
	      definitions for external application use.

	      The OSA API allows applications to be developed independent of
	      the target microkernel/hardware environment. It provides the
	      facility to add support for multiple independent operating
	      systems from different vendors.

    The OSA API defines a set of interfaces that provide the following
    basic operating system services:

      OS Management     - OSAInitialize(), OSARun()
      Tasks             - OSATaskCreate(), OSATaskDelete(), OSATaskChangePriority(),
			- OSATaskGetPriority(), OSATaskSuspend(), OSATaskResume(),
			- OSATaskSleep(), OSATaskGetCurrentRef()
      Event Flags       - OSAFlagCreate(), OSAFlagDelete(), OSAFlagSet(),
			- OSAFlagWait(), OSAFlagPeek()
      Timers            - OSATimerCreate(), OSATimerDelete(), OSATimerStart(),
			- OSATimerStop(), OSATimerGetStatus()
      Messaging         - OSAMsgQCreate(), OSAMsgQDelete(),
			- OSAMsgQSend(), OSAMsgQRecv(), OSAMsgQPoll()
			- OSAMsgQCreateWithMem()
      Mailboxes         - OSAMailboxQCreate(), OSAMailboxQDelete(),
			- OSAMailboxQSend(), OSAMailboxQRecv(), OSAMailboxQPoll()
      Semaphores        - OSASemaphoreCreate(), OSASemaphoreDelete(),
			- OSASemaphoreAcquire(), OSASemaphoreRelease(),
			- OSASemaphorePoll()
      Mutexes           - OSAMutexCreate(), OSAMutexDelete(),
			- OSAMutexLock(), OSAMutexUnlock(),
      Interrupt Control - OSAIsrCreate(), OSAIsrDelete(),
			- OSAIsrEnable(), OSAIsrDisable(), OSAIsrNotify()
      Real-Time Clock   - OSAGetTicks(), OSAGetClockRate(), OSATick()
			- OSAGetSystemTime()
      Memory            - OSAMemPoolCreate(), OSAMemPoolDelete(),
			- OSAMemPoolAlloc(), OSAMemPoolFree(),
			- OSAMemPoolFixedFree()
      Thread local storage
			- OSATaskSetTls()
			- OSATaskGetTls()
      Symbian Memory    - OSAMemPoolCreateGlobal(), OSAGlobalAlloc(),
			- OSAGlobalRead(), OSAGlobalWrite()

   Copyright (c) 2001 Intel CCD. All Rights Reserved
   =========================================================================== */
# 41 "diag_tx.h" 2
# 1 "diag_osif.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/
# 42 "diag_tx.h" 2

typedef enum
{
 Static_Memory_Allocation,
 Pool_Memory_Allocation_Trace,
 Pool_Memory_Allocation_Signal
} Allocation_Type;



struct diag_target_buffer
{
 enum {INSIDE_PACKET, OUT_OF_PACKET} state;
 unsigned int chunk_size;
 unsigned int packet_len;
 char chunk[(16*1024)];
};

/*-- Public Functions Prototypes ---------------------------------------*/
extern void diagSendPDUSignal( void *txPduBuffPtr, UINT16 Length );
void DiagSendFullFN(void);
void setL2Header(UINT8 *pHeader, UINT16 *pduLen);
UINT16 GetOnePacket(UINT8 *RawHeader, UINT8 * NewHeader, UINT16 pduLen, BOOL *Wraped);
int diag_disc_flush(struct diag_target_buffer* target_buff);
int diag_disc_rx(struct diag_target_buffer* target_buff, char * buff, int size);

/*----------------------------------------------------------------------*/
# 50 "diag_tx.c" 2
# 1 "diag_header_external.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_header_handler.h                                       *
*     Programmer:     Barak Witkowski                                             *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2006                                              *
*                                                                                 *
*       Description:                                                                                                                       *
*                                                                                 *
*       Notes:                                                                    *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
# 51 "diag_tx.c" 2
# 1 "diag_buff.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      Diag_Buff .h                                                *
*     Programmer:     Shiri Dolev                                                 *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Buffering Definitions								   *
*                                                                                 *
*       Notes:                                                                    *
* Yaeli Karni June 2006	Add definitions for data collection of messages Tx/Rx  *
*                                       sizes. Target - to limit message size to 4000 bytes			   *
*                                                                                 *
* Yaeli Karni Jan 2008  Tx-Q dynamically allocated, size per Q. UPdate macros  *
*                                                                                 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */




# 1 "../../include/global_types.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/****************************************************************************
 *
 * Name:          global_types.h
 *
 * Description:   Standard type definitions
 *
 ****************************************************************************
 *
 *
 *
 *
 ****************************************************************************
 *                  Copyright (c) Intel 2000
 ***************************************************************************/
# 45 "diag_buff.h" 2
////#include "diag_tx.h"
////#include "osa.h"

//For APPS+COMM platform the capability of APPS must be greater than COMM.
//So increase APPS-list-size vs COMM-list-size
# 80 "diag_buff.h"
// suggested by Chen Reibach - March 2008 due to FT .. wait for 1/3 of the Queue to be empty before resuming..
# 91 "diag_buff.h"
//NOT used #define LIST_FULL(dps)	(((dps)->diagTotalNumOfItems) >= (((dps)->diagNumOfItemsAllowedOnQ) - 2))



// Lost Diag messages definitions:
// Queu full (ext, INT-if MUST be same size of text !!



// save 10 places for number digits	- all messages same size



// save 12 places for len and msgID



// 13 digits and '\n'

// 13 digits and '\n'







// Diag error messages memory needs to be static (not dynamic):
extern UINT8 diagErrMsgBufQueueOverflow [];
extern UINT8 diagErrMsgBufQueueINTOverflow [];
extern UINT8 diagErrMsgBufMemoryAlloc [];
extern UINT8 diagErrMsgTotalLostMsgsMEM [];
extern UINT8 diagErrMsgTotalLostMsgsEXT [];
extern UINT8 diagErrMsgTotalLostMsgsINT [];
extern UINT8 diagErrMsgTooLong [];
extern UINT8 diagErrMsgWarningLong [];
// type of error condition
//ICAT EXPORTED ENUM
typedef enum {
 diagErrNoMemory,
 diagErrMemoryOK,
 diagErrExtQueueCongest,
 diagErrINTQueueCongest,
 diagErrCMIQueueCongest,
 diagErrExtQueueOK,
 diagErrINTQueueOK,
 diagErrCMIQueueOK,
 diagErrMSGmaxLen,
 diagErrMsgwarningLen
} diagErrStatesE;


typedef struct
{
 UINT8 *virtualReportPtr;
 UINT16 reportLength;
 //UINT16 /*Allocation_Type*/ allocType;	//Set for UINT16 to promise same assignement for all OS
 UINT8 allocType;
 UINT8 clientID; //TBDIY casted from COMDEV_NAME and valid only in CMI mode. For future extend to a general SendMsg function to all interfaces.
}DiagReportItem_S;

// =========================================================================================================================
// Manipulation of the queue variables (which are globals) MUST BE DONE under disable interrupts, since there are tightly
// connected.
// The enqueue (sendPDU()) action manipulates the NextFreeItem pointer (the tail of the queue which points to the
// next free entry in the queue) and the diagTotalNumOfItems (which is the total number of physical items in list, including
// those who were transmitted but not released yet).
// This action is called from many different tasks outside the Diag scope.
//
// The Tx task of each physical connection  use the FirstItemOnList and update the NextItemToSend (which points to the item which
// is the next one to be send on the physical connection) pointers,	and the diagNumOfTxedItems (which is the number of items
// that were already sent but were not released yet) as it dequues items and perform the actual send.
// As part of the removal of items from list, the FirstItemOnList, the diagTotalNumOfItems and diagNumOfTxedItemsis are
// updated for each item that was released.
// These actions must be synchronized with other actions that try to enqueu messages, or reset the queue toatlly,
// THUS all manipouation of the queue pointers (FirstItemOnList, NextFreeItem & NextItemToSend) and items' counters
// (the diagTotalNumOfItems and diagNumOfTxedItemsis) must be protected and atomic (when test and set actions are done).
// =========================================================================================================================
typedef struct
{
 // The head of the queue, from which items are dequeued for transmission and afterwards being removed.
 UINT16 diagFirstItemOnList;

 // The tail of the queue, to which new messages are enqueueud.
 UINT16 diagNextFreeItemOnList;

 // Points to the next message in the queue that needs to be dequeued and transmitted. This item will be equal to the
 // FirstItemOnList before transmission and will change as result of the transmission (while the FirstItemOnList will stiil point
 // the the first item that was transmitted but not released yet). Both indeces will be equal again after the remove of the
 // transmitted items.
 UINT16 NextItemToSend;

 // The number of items currently in the queue (including those who were transmitted but not released yet.
 UINT16 diagTotalNumOfItems;

 // The number of items that were transmitted in the last cycle of transmission, before the release.
 UINT16 diagNumOfTxedItems;
 // total number of items in queue - to allow different Queues with different numbers
 UINT16 diagNumOfItemsAllowedOnQ;
}DiagQPtrData_S;

// A structureand data info of transmitted data from COMM to APPS to ICAT.
// It is sent out any X bytes of traces are produced on the COMM
// It is intended to collect data on the traces path COMM-via-APPS-to-ICAT (not genral
// collection on all paths). Data collected as described in the structure items.
// the driving of data is the COMM collection when number of produced bytes-of-traces e
// exceeded the X (). The APPS collection is done when the message arrives at it over the
// internal interface (thus a letency of MSL/SHM transmit till 'APPS period' statistics are
// added.
// Collection is done on COMM, sent ot APP as C2C message (SAP: CORE_TO_CORE_MESSAGE, service: C2C_STATISTICS). At APPS, it will add
// its data, preper the message as COMM messge (trace, with message ID of the correct C123
// (sent from COMM in the AP_bytes_recieved_from_CP field).




//ICAT EXPORTED STRUCT
typedef struct {
 UINT32 CP_TimeStamp; // time stamp in COMM when X bytes (or more) were produced
 UINT32 CP_bytes_produced; // number of bytes produced in traces in the last period
 UINT32 CP_bytes_dropped; // number of bytes produced but discarded (due to congestion) in the last period
 UINT32 CP_bytes_sent; // number of bytes sent out on the internal channel in the last period
 UINT32 CP_bytes_sent_tot_time; // total time to send all bytes in the period (each send has start/end TS, delta is added to this counter)
 UINT32 CP_max_time_byteOint; // max time to send a byte over internal interface
 UINT32 AP_TimeStamp; // time stamp in APPS when the message arrived over internal interface and processed
 UINT32 AP_bytes_produced; // number of bytes produced in traces (on APPS or coming from COMM) in the last period
 UINT32 AP_bytes_dropped; // number of bytes produced but discarded (due to congestion) in the last period
 UINT32 AP_bytes_sent; // number of bytes sent out on the external channel in the last period
 UINT32 AP_bytes_sent_tot_time; // total time to send all bytes in the period (each send has start/end TS, delta is added to this counter)
 UINT32 AP_max_time_byteOext; // max time to send a byte over external interface
 UINT32 AP_bytes_recieved_from_CP; // total time to send all bytes in the period (each send has start/end TS, delta is added to this counter)
 // Fields added after first diag release of stats (rel 04.28) - not exist in all versions!! must be checked for.
 UINT16 CP_struct_size; // size of the statistics structure on CP side (data allows for backward/forward compatibility)
 UINT16 AP_struct_size; // size of the statistics structure on AP side (data allows for backward/forward compatibility)
 UINT32 CP_bytes_added_INTif; // bytes added for sending over INT if
 UINT32 AP_bytes_removed_INTif; // bytes recieved from CP and removed (used for IntIF protocol only)
 UINT32 AP_bytes_added_ExtIf; // bytes added on external interface
} DiagStats_CP_AP_S;

typedef struct {
 UINT32 CP_trace_bytes_for_statistics_period;
 UINT32 CP_trace_statistics;
 UINT32 Tx_Start_TS;
 UINT32 bytes_in_this_tx;
 UINT32 bytes_INTifOnly_in_this_tx;
} DiagStats_Internal_S;

extern DiagStats_CP_AP_S d_stat_CP_AP;
extern DiagStats_Internal_S d_stat_internal;

/* static declaraion...
   extern DiagReportItem_S	_diagExtIfReportsList[];
   extern DiagQPtrData_S	_diagExtIfQPtrData;     // additional pointers can be maintained by DiagComm
 #if defined (DIAG_INT_IF)
   extern DiagReportItem_S	_diagIntIfReportsList [];
   extern DiagQPtrData_S	_diagIntIfQPtrData;
 #endif
 */
// Q of Tx on interface is dyanmically allocated with different Q size per interface
extern DiagReportItem_S *_diagExtIfReportsList;
extern DiagQPtrData_S *_diagExtIfQPtrData; // additional pointers can be maintained by DiagComm

//CMI support
extern DiagReportItem_S * _diagCMIfReportsList;
extern DiagQPtrData_S * _diagCMIfQPtrData;

//this is used for the internal interface and the data structure is allocated only if the internal interface is working
extern DiagReportItem_S *_diagIntIfReportsList;
extern DiagQPtrData_S *_diagIntIfQPtrData;

// special quick send Q
extern DiagReportItem_S _diagIntIfQQReportsList[10];
extern DiagQPtrData_S _diagIntIfQQPtrData;

extern UINT8 _diagIntIfQQTraceBuffer[10][(((sizeof(DiagStats_CP_AP_S) + 16 + 6 + 3) / 4) * 4)];


//ICAT EXPORTED STRUCT
typedef struct {
 UINT32 diagMaxMsgOutLimit;
 UINT32 diagMaxMsgOutWarning;
 UINT32 diagMaxMsgInLimit;
 UINT32 diagMaxMsgInWarning;
} diagMsgLimitSet_S;

typedef struct {
 UINT32 _diagNumberOfTracesExtQLost;
 UINT32 _diagNumberOfTracesIntQLost;
 UINT32 _diagNumberOfTracesCMIQLost;

 UINT32 _diagNumberOfTracesMEMLost;

 UINT32 diagNumberOfTracesExtQLostTotal;
 UINT32 diagNumberOfTracesExtQLostBytes;
 UINT32 diagNumberOfTracesIntQLostTotal;
 UINT32 diagNumberOfTracesIntQLostBytes;
 UINT32 diagNumberOfTracesCMIQLostTotal;
 UINT32 diagNumberOfTracesCMIQLostBytes;

 UINT32 diagNumberOfTracesMEMLostTotal;
 UINT32 diagNumberOfTracesMEMLostBytes;

 UINT32 diagNumberOfTraceRxTaskLostTotal;
 UINT32 diagNumberOfTraceRxTaskLostBytes;

 UINT32 diagMsgsLost_MemAlloc;

 UINT32 diagMsgsLost_ExtIfQueueIsFull;
 UINT32 diagMsgsLost_IntIfQueueIsFull;
 UINT32 diagMsgsLost_CMIifQueueIsFull; // for CMI interface

 diagMsgLimitSet_S MsgLimits;
 /*
	   UINT32 diagMaxMsgOutLimit;
	   UINT32 diagMaxMsgOutWarning;
	   UINT32 diagMaxMsgInLimit;
	   UINT32 diagMaxMsgInWarning;
	 */
} _diagIntData_S;
extern _diagIntData_S _diagInternalData;

extern UINT32 flagKickExtTx;
extern UINT32 flagKickIntTx;
extern UINT32 flagKickCMITx; //TBDIY CMI support

// Public service invoked by all DiagTX layers
// These functions are re-entrable - Check for space in the Tx-Q (for Ext-if) and add final data (counter,checksum)
//extern void diagBufferPDUExtIf(UINT8 *sendData, UINT16 pduLength, Allocation_Type allocType, UINT32 traceFromLocalCore);
//extern void diagBufferPDUIntIf(UINT8 *sendData, UINT16 pduLength, Allocation_Type allocType, UINT32 traceFromLocalCore);
//extern void diagBufferPDUCMIf (UINT8 *sendData, UINT16 pduLength, Allocation_Type allocType, const UINT8 clientID /*TBDIY no traces via CMI clients - only commands, UINT32 traceFromLocalCore*/);

// This function sets a new Tx message counter pointer, which will not be
// counting up by the diag, and will be sent to ICAT instead of the usual counter.
void SetDiagTxMsgCounterPtr(UINT16* NewCounterPtr);
extern void diagSendErrMsg(UINT32 connectedDev, diagErrStatesE err_state, UINT32 num_lost /* zero - problem started*/);
extern void diagSendErrLenMsg(UINT32 connectedDev, diagErrStatesE err_state, UINT32 length, UINT32 msgID );

// Function to allocated buffer for message + handle error condition
// on allocation failure
//extern void DiagReleaseBufferMemory (Allocation_Type allocType, UINT8* pMem);

extern void updateStatsOnApps(UINT8 *bufData, UINT32 len);
# 52 "diag_tx.c" 2
# 1 "diag_init.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
 *                                                                                 *
 *     File name:      diag_init.h                                                 *
 *     Programmer:     Shiri Dolev                                                 *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                                 *
 *       Create Date:  November, 2003                                              *
 *                                                                                 *
 *       Description: DIAG Package Inits.                                          *
 *                                                                                 *
 *       Notes:                                                                    *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */



# 1 "diag_types.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/
# 40 "diag_init.h" 2
# 1 "../../include/global_types.h" 1
/******************************************************************************

*(C) Copyright 2007 Marvell International Ltd.

* All Rights Reserved

******************************************************************************/
/****************************************************************************
 *
 * Name:          global_types.h
 *
 * Description:   Standard type definitions
 *
 ****************************************************************************
 *
 *
 *
 *
 ****************************************************************************
 *                  Copyright (c) Intel 2000
 ***************************************************************************/
# 41 "diag_init.h" 2
//#include "diag_comm.h"
# 1 "diag_API.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*     File name:      diag_api .h                                                 *
*     Programmer:     Shiri Dolev                                                 *
*                     Ohad Peled, Itzik Yankilevich, Barak Witkowsky, Yaeli Karni *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
*                                                                                 *
*       Create Date:  November, 2003                                              *
*                                                                                 *
*       Description: DIAG Tx APIs - MACROs.									   *
*                                                                                 *
*       Notes:  There are 2 files diag_API_var.h and diag_API.h                   *
*               The diag_API_var.h - declaration without MACRO-re-define          *
*               The diag_API.h     - has part which is re-defined by MACROs       *
*                                    and treated differently by PrePassProcessor! *
*                                                                                 *
* July 2007 - fix macros DIAT_TRACEM... (IY)									   *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
# 43 "diag_init.h" 2
# 60 "diag_init.h"
/*-- Public Functions Prototypes ---------------------------------------*/

/************************
*		Typedefs		*
************************/
typedef void (*DiagICATReadyNotifyEventFunc)(void);
typedef void (*DiagEnterBootLoaderCBFunc)(void);
typedef void (*Diag_Open_Func)(void);
typedef int (*EventSocket_Open_Func)(void);
typedef void (*Diag_Read_Task)(void *);
typedef int (*Diag_Send_Target)(UINT8 *, UINT32);

extern DiagBlockReasons diagBlocked;

/************************
*		Prototypes		*
************************/
extern void diagICATReayNotifyEventDefaultFunc(void);
extern void diagICATReadyNotifyEventBind(DiagICATReadyNotifyEventFunc diagICATReadyFunc);
extern void diagEnterBootLoaderCBFuncBind(DiagEnterBootLoaderCBFunc diagBootLoaderFunc);
extern void diagInit(void);
extern void diagRxInit(void);
extern void diagTxInit(void);
extern void diagTestInit(void);
extern SwVersion diagGetVersion(void);

/*
   enum for defintions of ext-if type. In WM, the ext-if can be USB/UDP/TCP
   when moving to new-header, we can enhance it to include all types of ext-if (
   also UART, SSP..)
 */
//ICAT EXPORTED ENUM
typedef enum
{
 // for external interfaces
 tNoConnection,
 tUSBConnection,
 tTCPConnection,
 tUDPConnection,
 tUARTConnection,
 tSSPConnection,
 tVIRTIOConnection,
 // for internal interfaces
 tMSLConnection,
 tSHMConnection, // shared memory
 tLocalConnection
} EActiveConnectionType;

typedef enum
{
 tLL_none, // not set
 tLL_SSP, // external int. SSP
 tLL_UART, // external int. UART
 tLL_USB, // external int. USB
 tLL_ETHERNET, // external int. over Ethernet port
 tLL_LocalIP, // external int./CMI int. localIP
 tLL_ACIPC, // internal int. SHMEM
 tLL_SAL, // internal int. MSL o SAL
 tLL_GPC, // internal int. MSL o GPC
 tLL_FS, // external int. File System
 tLL_SC // external int. Storage Card (SD card)
} EActiveConnectionLL_Type;

//Global Variable used for configure the Linux SD
typedef enum
{
 FSTYPE_NO_MOUNT = 0,
 FSTYPE_VFAT = 1,
 FSTYPE_EXT2 = 2, //Not supported yet Diag05.00.24
 FSTYPE_EXT3 = 3, //Not supported yet Diag05.00.24
 FSTYPE_MSDOS = 4,

}SDFStypeE;

typedef struct {
 UINT32 log_auto_start; //MBTODO - For now this exist as global variable in Windows should change it
 UINT32 FS_Inc_Reset;
 SDFStypeE SD_FSType;

} DiagBSPFSConfigS;

typedef struct {
 UINT32 write_unit_size; //The minimum chunk size to be gathered before writing (unless writing is enforced by flush or timeout)
    //Cached write mechanism is disabled when write_unit_size==0
 UINT32 time_out; //Used in OSATimerStart
} DiagCachedWriteS;

// global variables to be usded by diag_logic, diag_comm
typedef struct {
 OSMsgQRef diagMsgQRef;

 EActiveConnectionType m_eConnectionType; // Extrernal connection type
 EActiveConnectionLL_Type m_eLLtype; // EXT type L2 of connection
 EActiveConnectionType m_eIntConnectionType; // Internal connection type
 EActiveConnectionLL_Type m_eIntLLtype; // INT type L2 of connection
 UINT32 m_extIfTxMulti; // does the extIf supports muti Tx (in one call to driver, send multi bufs)
 // default is 0 (not supported), currently (Nov 07) only Nu-USB/SSP has mutil mode

 UINT32 m_bWorkMultiCore; // Default, we work multi - core (MSL/Shared Memory, internal-connection is active) =1 or single core only (no router mode) =0
 UINT32 m_bMasterClientMode; //  Masgter-client
 UINT32 m_bIsMaster; // is master
 UINT32 m_bIsClient; // is client
 UINT32 m_bIsRawDiag; //is raw diag
 DiagICATReadyNotifyEventFunc diagICATReadyNotifyEventFunc;
 DiagPSisRunningFn _diagSigPsCheckFn; // PS status CB.
 DiagEnterBootLoaderCBFunc diagEnterBootLoaderCBFunc;

 DiagBSPFSConfigS diagBSPFScfg;
 DiagCachedWriteS diagCachedWrite;
 UINT32 nReTriesToPerform; // number of retry to perform on failure of diagRecieveCommand
} diagInternalDataS;
typedef struct{
 int hPort; //file decription or socket for connetction.
 int socket;
 Diag_Open_Func connect;
 EActiveConnectionLL_Type target_type;
 Diag_Read_Task read_target_task;
 Diag_Send_Target send_target;
 int raw_diag_support;
}Diag_Target;
extern diagInternalDataS diagIntData;
typedef struct{
 int event_socket;// event source
 int pipefd[2];
 EventSocket_Open_Func open;
}Diag_Event;
# 53 "diag_tx.c" 2
# 1 "diag_osif.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/
# 54 "diag_tx.c" 2
# 1 "diag_init.h" 1
/*------------------------------------------------------------
   (C) Copyright [2006-2008] Marvell International Ltd.
   All Rights Reserved
   ------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
   INTEL CONFIDENTIAL
   Copyright 2006 Intel Corporation All Rights Reserved.
   The source code contained or described herein and all documents related to the source code ("Material") are owned
   by Intel Corporation or its suppliers or licensors. Title to the Material remains with Intel Corporation or
   its suppliers and licensors. The Material contains trade secrets and proprietary and confidential information of
   Intel or its suppliers and licensors. The Material is protected by worldwide copyright and trade secret laws and
   treaty provisions. No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
   transmitted, distributed, or disclosed in any way without Intel's prior express written permission.

   No license under any patent, copyright, trade secret or other intellectual property right is granted to or
   conferred upon you by disclosure or delivery of the Materials, either expressly, by implication, inducement,
   estoppel or otherwise. Any license under such intellectual property rights must be express and approved by
   Intel in writing.
   -------------------------------------------------------------------------------------------------------------------*/

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
 *                                                                                 *
 *     File name:      diag_init.h                                                 *
 *     Programmer:     Shiri Dolev                                                 *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                                 *
 *       Create Date:  November, 2003                                              *
 *                                                                                 *
 *       Description: DIAG Package Inits.                                          *
 *                                                                                 *
 *       Notes:                                                                    *
 *                                                                                 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
# 55 "diag_tx.c" 2
# 63 "diag_tx.c"
// Flag is full frame number should be set (also in the module ID field) or only
// in the counter field (for back ward compatibility with ICAT (2.6 and before)
//  - the full FN is set only on ICAT command)
/* global flags indicating which optional data should be sent in the tx
   messages */
globalFlagsStrct gFlg = {
 1,
 1,
 1,
 0
};
extern int hPort;
extern Diag_Target diag_target;
UINT32* diagFrameNumberPtr = ((void *)0);
extern UINT32 SendCommMsg(UINT8 *msg, UINT32 len);

void diagCalcUpdateTxL2L4MessageLength (TxL2L4PDUHeader *header , UINT16 *messageLength , UINT32 *padBytes)
{
    UINT16 messageLengthInLongs;

    if (*messageLength > 0xFF)
    {
        messageLengthInLongs = ((*messageLength) >> 2);
        if ((*messageLength) & 0x3) // there's a remainder in the division
        {
            messageLengthInLongs += 1;
            *padBytes = (4 - ((*messageLength) & 0x3));
        }

        header->ProtocolID = 0x03;

        header->ProtocolID |= ( ( ( messageLengthInLongs ) >> 6 ) & 0x3C );

        header->Length = ( ( messageLengthInLongs ) & 0xFF );
  *messageLength = messageLengthInLongs*4;
    }
 else
 {
  header->Length = (UINT8)*messageLength;
  header->ProtocolID = 0x02;
  *padBytes=0;
 }

}

/***********************************************************************************
 *
 * 	Name:			setL2Header
 *
 * 	Parameters:     UINT8 *pHeader - a pointer to an allocated Diag message header
 *					UINT16 *pduLen -the message length (Header + body)
 *
 * 	Returns:        Void
 *
 * 	Descriptiton:	1. The function edits the message header  to
 *					(long) L2 message such as TCP/UDP/UART/SSP.
 *					2. The function edits the STX header and adds the ETX footer.
 *                  3. The function adds zero padding as necessary.
***********************************************************************************/
void setL2Header(UINT8 *pHeader, UINT16 *pduLen)
{

 UINT16 msgLen = 0;
 UINT32 padBytes = 0;
 UINT8 *zeroPadsPtr;
 TxL2L4PDUFooter *footerPtr;
 UINT8 *tmp_ptr;
 TxPDUOldHeader *pTxPDUHeader;

 msgLen = *pduLen - sizeof (TxL2L4PDUHeader);
 pTxPDUHeader = (TxPDUOldHeader *)pHeader;

 diagCalcUpdateTxL2L4MessageLength (
     (TxL2L4PDUHeader *) &pTxPDUHeader->extIfhdr.L2L4Header,
     &msgLen,
     &padBytes);

 /* handle SSP header */
 pTxPDUHeader->extIfhdr.L2L4Header.STX = 0x7E7E;

 /* handle SSP footer */
 footerPtr = (TxL2L4PDUFooter *)(((UINT8 *)pHeader) + *pduLen + padBytes);
 //handle non-packed (YK) (footerPtr)- make sure to set in correct location
 tmp_ptr = (UINT8 *)&(footerPtr->ETX);
 *tmp_ptr++ = 0x81;
 *tmp_ptr = 0x81;
 zeroPadsPtr = (UINT8 *)pHeader;

 while ((padBytes--) > 0)
  zeroPadsPtr[(*pduLen)++] = 0;

 *pduLen += sizeof(TxL2L4PDUFooter);

}

unsigned int get_packet_len(char * buff)
{
 TxPDUOldHeader *pTxPDUHeader;
 pTxPDUHeader = (TxPDUOldHeader *)buff;
 unsigned int packetLen;
 if( (int)pTxPDUHeader % 2 ==0)
   packetLen = pTxPDUHeader->extIfhdr.rawHeader.length;
 else
 {
  UINT8 * pdata = (UINT8 *)pTxPDUHeader;
  UINT8 LByte = (*pdata);
  UINT8 HByte = *(pdata+1);
  packetLen = HByte*256 + LByte;
 }
 return packetLen;
}
/***************************************************************************************************
***** If buff gets more than one packet, returns the rest size(>0). If buff gets parf of one packet, returns the missing size(<0).
*****************************************************************************************************
*/
int diag_disc_rx(struct diag_target_buffer* target_buff, char * buff, int size)
{
 unsigned int packet_len;
 char * data = buff;
 int len = size;

 if(target_buff->state == OUT_OF_PACKET)
 {
  target_buff->state = INSIDE_PACKET;
 }
 else
 {
  goto copy_to_buffer;
 }
 if((target_buff->chunk_size + len)< sizeof(UINT32))
  {
   memcpy(target_buff->chunk+target_buff->chunk_size,data,len);
   target_buff->chunk_size += len;
   return -2048;
  }
  else
  {
   memcpy(target_buff->chunk+target_buff->chunk_size,data,sizeof(UINT32));
   target_buff->chunk_size += sizeof(UINT32);
   data += sizeof(UINT32);
   len -= sizeof(UINT32);

copy_to_buffer:
   packet_len = get_packet_len(target_buff->chunk);
   if(len <= (int)(packet_len - target_buff->chunk_size))
   {
    memcpy(target_buff->chunk+target_buff->chunk_size,data,len);
    target_buff->chunk_size += len;
    len -= len;
   }
   else
   {
    memcpy(target_buff->chunk+target_buff->chunk_size,data,packet_len - target_buff->chunk_size);
    len -= (packet_len - target_buff->chunk_size);
    target_buff->chunk_size = packet_len;
    target_buff->state = OUT_OF_PACKET;
   }
   return len - (packet_len - target_buff->chunk_size);
  }

}
int diag_disc_flush(struct diag_target_buffer* target_buff)
{
 target_buff->chunk_size = 0;
 target_buff->packet_len = 0;
 target_buff->state = OUT_OF_PACKET;
 return 0;
}

UINT16 GetOnePacket(UINT8 *RawHeader, UINT8 * NewHeader, UINT16 pduLen, BOOL *Wraped)
{
 UINT16 packetLen;
 TxPDUOldHeader *pTxPDUHeader;
 pTxPDUHeader = (TxPDUOldHeader *)RawHeader;

 if(*Wraped)
 {
  if( (int)pTxPDUHeader % 2 ==0)
   packetLen = pTxPDUHeader->extIfhdr.rawHeader.length;
  else //work round for Borqs system. Litten Edian supposed.
  {
    UINT8 * pdata = (UINT8 *)pTxPDUHeader;
                      UINT8 LByte = (*pdata);
                      UINT8 HByte = *(pdata+1);
                      packetLen = HByte*256 + LByte;
  }
  if(packetLen <= pduLen)
  {
   memcpy(NewHeader, RawHeader, packetLen);
   *Wraped = 1;
   return packetLen;
  }
  else
  {
   memcpy(NewHeader, RawHeader, pduLen);
   *Wraped = 0;
   return pduLen;
  }

 }
 else
 {
  memcpy(NewHeader, RawHeader, pduLen);
  return pduLen;
 }
 //DIAGPRINT("****DIAG:GetOnePacket: find a packet of length:%d\n",packetLen);

}

VOID setTxDiagTraceHeader (UINT8 *pHeader, UINT16 *pduLen, UINT16 type, UINT16 moduleID, UINT16 msgID)
{
 extern diagInternalDataS diagIntData;
 TxPDUOldHeader *pTxPDUHeader = (TxPDUOldHeader *)pHeader;



 //CMI messages are using the USB header format
 if (diagIntData.m_eConnectionType == tUSBConnection)
 {
  pTxPDUHeader->extIfhdr.rawHeader.length = *pduLen;
  pTxPDUHeader->extIfhdr.rawHeader.PID = 0;
 }
 else
 //if (diagIntData.m_eConnectionType!=tUSBConnection)
 {
//#ifdef UART_NON_RAW_DIAG
  if(diag_target.raw_diag_support == 0)
   setL2Header(pHeader, pduLen);
  else{
//#else
   pTxPDUHeader->extIfhdr.rawHeader.length = *pduLen;
   pTxPDUHeader->extIfhdr.rawHeader.PID = 0;
  }
//#endif
 }


 pTxPDUHeader->DiagSAP = type; // SAP On Tx is 16 bits, is it used for rx???
 pTxPDUHeader->DiagSAP |= 0x8000;

 pTxPDUHeader->moduleID = moduleID;

 if (diagFrameNumberPtr)
 {
  pTxPDUHeader->counter = (UINT16)(*(diagFrameNumberPtr)); // first & second LSBytes (Byte-0, byte-1)
  if (gFlg.FrameNumberExist)
  {
   pTxPDUHeader->moduleID = (moduleID & 0xFF) | ((*diagFrameNumberPtr) >> 8
              & 0xFF00); // 3rd byte (byte-2)
  }
 }
 pTxPDUHeader->msgID = msgID;

 pTxPDUHeader->timeStamp = diagGetTS_LINUX();
# 510 "diag_tx.c"
}

/************************************************************************
* Function: diagSendPDU                                                *
************************************************************************
* Description: receives report data, composes Tx PDU according to the  *
*              Tx PDU template and Calls diagBufferPDUExtIf to insert  *
*              the new PDU into the Rx Queue.                          *
*                                                                      *
* Parameters: type - RSVP or Regular trace                             *
*             moduleID - the module ID given by the Pre-Compiler       *
*             msgID - the report ID given by the Pre-Compiler          *
*             data - pointer to the report data; in case of long       *
*                    message and not RSVP, it's pointer to the         *
*                    (header + data)                                   *
*             dataLenght - the report length                           *
*                                                                      *
* Return value: none                                                   *
*                                                                      *
* Notes:                                                               *
************************************************************************/

void diagSendPDU (UINT8 type,
    UINT16 moduleID,
    UINT16 msgID,
    void *txPduBuffPtr,
    UINT16 dataLength,
    UINT32 numOfDecreasedBytes)
{
 TxPDU *pTxPdu;
 UINT16 pduLength;


 UINT16 pduLengthNoFooter; // when sedning message on INT-if, lets
     // not send the footer and padding


 pTxPdu = ((TxPDU *)txPduBuffPtr);

 pduLength = dataLength + 16;






 (void)numOfDecreasedBytes;
 /* put values in pduLength and pduLengthNoFooter */
 pduLengthNoFooter = pduLength; //pduLength may be incresed by the footer size when invoking setTxDiagTraceHeader
     //so we save the original length in pduLengthNoFooter


 setTxDiagTraceHeader((UINT8 *)pTxPdu, &pduLength, (UINT16)type, moduleID, msgID);

 //  Trace should be sent OVER USB.
 {
  //diagBufferPDUExtIf((UINT8 *)(txPduBuffPtr), pduLength, Pool_Memory_Allocation_Trace, 1);
  if (hPort > 0 || diag_target.hPort >0)
  {
   //write(hPort,txPduBuffPtr,pduLength);
   SendCommMsg(txPduBuffPtr, pduLength);
  }
 }

 //Free this buffer after finish tx
 free(txPduBuffPtr);

 return;

} /* End of diagSendPDU   */