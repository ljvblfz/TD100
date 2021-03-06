/* @file  includes.h
 * @brief This file contains definition for include files
 *
 * Copyright (C) 2011 Marvell International Ltd., All Rights Reserved
 *
 * MARVELL CONFIDENTIAL
 * The source code contained or described herein and all documents related to
 * the source code ("Material") are owned by Marvell International Ltd or its
 * suppliers or licensors. Title to the Material remains with Marvell International Ltd
 * or its suppliers and licensors. The Material contains trade secrets and
 * proprietary and confidential information of Marvell or its suppliers and
 * licensors. The Material is protected by worldwide copyright and trade secret
 * laws and treaty provisions. No part of the Material may be used, copied,
 * reproduced, modified, published, uploaded, posted, transmitted, distributed,
 * or disclosed in any way without Marvell's prior express written permission.
 *
 * No license under any patent, copyright, trade secret or other intellectual
 * property right is granted to or conferred upon you by disclosure or delivery
 * of the Materials, either expressly, by implication, inducement, estoppel or
 * otherwise. Any license under such intellectual property rights must be
 * express and approved by Marvell in writing.
 *
 */

#ifndef INCLUDES_H
#define INCLUDES_H

#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>
#include <ctype.h>

#include "common.h"

#ifdef DBG_PRINT_FUNC
/** ENTER */
#define ENTER()		printf("Enter: %s, %s:%i\n", __FUNCTION__, __FILE__, __LINE__)
/** LEAVE */
#define LEAVE()		printf("Leave: %s, %s:%i\n", __FUNCTION__, __FILE__, __LINE__)
#else
/** ENTER */
#define ENTER()
/** LEAVE */
#define LEAVE()
#endif

#endif /* INCLUDES_H */
