/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein
 * is confidential and proprietary to MediaTek Inc. and/or its licensors.
 * Without the prior written permission of MediaTek inc. and/or its licensors,
 * any reproduction, modification, use or disclosure of MediaTek Software,
 * and information contained herein, in whole or in part, shall be strictly prohibited.
 */
/* MediaTek Inc. (C) 2010. All rights reserved.
 *
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
 * AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
 * NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
 * SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
 * SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
 * THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
 * THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
 * CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
 * SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
 * CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
 * AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
 * OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
 * MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 *
 * The following software/firmware and/or related documentation ("MediaTek Software")
 * have been modified by MediaTek Inc. All revisions are subject to any receiver's
 * applicable license agreements with MediaTek Inc.
 */

#ifndef CAMERA_SYSRAM_IMP_H
#define CAMERA_SYSRAM_IMP_H
//-----------------------------------------------------------------------------
typedef unsigned long long  MUINT64;
typedef long long           MINT64;
typedef unsigned long       MUINT32;
typedef long                MINT32;
typedef unsigned char       MUINT8;
typedef char                MINT8;
typedef bool                MBOOL;
#define MTRUE               true
#define MFALSE              false
//-----------------------------------------------------------------------------
#define LOG_TAG "SYSRAM"
#define LOG_MSG(fmt, arg...)    xlog_printk(ANDROID_LOG_VERBOSE, LOG_TAG, "[%s]"          fmt "\r\n", __FUNCTION__,           ##arg)
#define LOG_WRN(fmt, arg...)    xlog_printk(ANDROID_LOG_VERBOSE, LOG_TAG, "[%s]WRN(%5d):" fmt "\r\n", __FUNCTION__, __LINE__, ##arg)
#define LOG_ERR(fmt, arg...)    xlog_printk(ANDROID_LOG_ERROR,   LOG_TAG, "[%s]ERR(%5d):" fmt "\r\n", __FUNCTION__, __LINE__, ##arg)
#define LOG_DMP(fmt, arg...)    xlog_printk(ANDROID_LOG_ERROR,   LOG_TAG, ""              fmt,                                ##arg)
//-----------------------------------------------------------------------------
#define SYSRAM_DEBUG_DEFAULT    (0xFFFFFFFF)
#define SYSRAM_JIFFIES_MAX      (0xFFFFFFFF)
#define SYSRAM_PROC_NAME        "Default"
//-----------------------------------------------------------------------------
#define SYSRAM_BASE_PHY_ADDR    ((SYSRAM_BASE&0x0FFFFFFF)|0x10000000)
#define SYSRAM_BASE_SIZE        (81920) //32K+48K
#define SYSRAM_BASE_ADDR_BANK_0 (SYSRAM_BASE_PHY_ADDR)
#define SYSRAM_BASE_SIZE_BANK_0 (SYSRAM_BASE_SIZE)
//
#define SYSRAM_USER_SIZE_VIDO   (SYSRAM_BASE_SIZE)//(78408)//(74496)    // Always allocate max SYSRAM size because there is no other user. //78408: Max size used when format is RGB565.
#define SYSRAM_USER_SIZE_GDMA   (46080)
#define SYSRAM_USER_SIZE_SW_FD  (0) //TBD
//
#define SYSRAM_MEM_NODE_AMOUNT_PER_POOL (SYSRAM_USER_AMOUNT*2 + 2)
//-----------------------------------------------------------------------------
typedef struct
{
    pid_t   pid;                    // thread id
    pid_t   tgid;                   // process id
    char    ProcName[TASK_COMM_LEN];    // executable name
    MUINT64 Time64;
    MUINT32 TimeS;
    MUINT32 TimeUS;
}SYSRAM_USER_STRUCT;
//
typedef struct
{
    spinlock_t              SpinLock;
    MUINT32                 TotalUserCount;
    MUINT32                 AllocatedTbl;
    MUINT32                 AllocatedSize[SYSRAM_USER_AMOUNT];
    SYSRAM_USER_STRUCT      UserInfo[SYSRAM_USER_AMOUNT];
    wait_queue_head_t       WaitQueueHead;
    MBOOL                   EnableClk;
    MUINT32                 DebugFlag;
    dev_t                   DevNo;
    struct cdev*            pCharDrv;
    struct class*           pClass;
}SYSRAM_STRUCT;
//
typedef struct
{
    pid_t   Pid;
    pid_t   Tgid;
    char    ProcName[TASK_COMM_LEN];
    MUINT32 Table;
    MUINT64 Time64;
    MUINT32 TimeS;
    MUINT32 TimeUS;
}SYSRAM_PROC_STRUCT;

//
typedef enum 
{
    SYSRAM_MEM_BANK_0,
    SYSRAM_MEM_BANK_AMOUNT,
    SYSRAM_MEM_BANK_BAD
}SYSRAM_MEM_BANK_ENUM;
//
typedef struct SYSRAM_MEM_NODE
{
    SYSRAM_USER_ENUM        User;
    MUINT32                 Offset;
    MUINT32                 Length;
    MUINT32                 Index;
    struct SYSRAM_MEM_NODE* pNext;
    struct SYSRAM_MEM_NODE* pPrev;
}SYSRAM_MEM_NODE_STRUCT;
//
typedef struct
{
    SYSRAM_MEM_NODE_STRUCT* const   pMemNode;
    MUINT32 const                   UserAmount;
    MUINT32 const                   Addr;
    MUINT32 const                   Size;
    MUINT32                         IndexTbl;
    MUINT32                         UserCount;
}SYSRAM_MEM_POOL_STRUCT;
//------------------------------------------------------------------------------
static SYSRAM_MEM_NODE_STRUCT SysramMemNodeBank0Tbl[SYSRAM_MEM_NODE_AMOUNT_PER_POOL];
static SYSRAM_MEM_POOL_STRUCT SysramMemPoolInfo[SYSRAM_MEM_BANK_AMOUNT] = 
{
    [SYSRAM_MEM_BANK_0] = 
    {
        .pMemNode   = &SysramMemNodeBank0Tbl[0], 
        .UserAmount = SYSRAM_MEM_NODE_AMOUNT_PER_POOL, 
        .Addr       = SYSRAM_BASE_ADDR_BANK_0, 
        .Size       = SYSRAM_BASE_SIZE_BANK_0, 
        .IndexTbl   = (~0x1), 
        .UserCount  = 0, 
    }
};
//
static inline SYSRAM_MEM_POOL_STRUCT* SYSRAM_GetMemPoolInfo(SYSRAM_MEM_BANK_ENUM const MemBankNo)
{
    if(SYSRAM_MEM_BANK_AMOUNT > MemBankNo)
    {
        return &SysramMemPoolInfo[MemBankNo];
    }
    return  NULL;
}
//
enum
{
    SysramMemBank0UserMask =
         (1<<SYSRAM_USER_VIDO)
        |(1<<SYSRAM_USER_GDMA)
        |(1<<SYSRAM_USER_SW_FD)
        , 
    SysramLogUserMask =
         (1<<SYSRAM_USER_VIDO)
        |(1<<SYSRAM_USER_GDMA)
        |(1<<SYSRAM_USER_SW_FD)
};
//
static SYSRAM_MEM_BANK_ENUM SYSRAM_GetMemBankNo(SYSRAM_USER_ENUM const User)
{
    MUINT32 const UserMask = (1<<User);
    //
    if(UserMask & SysramMemBank0UserMask)
    {
        return  SYSRAM_MEM_BANK_0;
    }
    //
    return  SYSRAM_MEM_BANK_BAD;
}
//
static char const*const SysramUserName[SYSRAM_USER_AMOUNT] = 
{
    [SYSRAM_USER_VIDO]  = "VIDO", 
    [SYSRAM_USER_GDMA]  = "GDMA",
    [SYSRAM_USER_SW_FD] = "SW FD"
};
//
static MUINT32 const SysramUserSize[SYSRAM_USER_AMOUNT] = 
{
    [SYSRAM_USER_VIDO]  = (3 + SYSRAM_USER_SIZE_VIDO) / 4 * 4,
    [SYSRAM_USER_GDMA]  = (3 + SYSRAM_USER_SIZE_GDMA) / 4 * 4,
    [SYSRAM_USER_SW_FD] = (3 + SYSRAM_USER_SIZE_SW_FD) / 4 * 4
};
//------------------------------------------------------------------------------
#endif

