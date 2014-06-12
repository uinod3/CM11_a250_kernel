#define LOG_TAG "MtkCam/PREVIEWFEATUREBuffer"
//
#include <CamUtils.h>
using namespace android;
using namespace MtkCamUtils;
//
#include <stdlib.h> 
#include <linux/cache.h>
//
#include "PreviewFeatureBufMgr.h"
//
#include <cutils/atomic.h>
//
/******************************************************************************
*
*******************************************************************************/
#include <inc/common/CamLog.h>
#define MY_LOGV(fmt, arg...)        CAM_LOGV("(%d)[%s] "fmt, ::gettid(), __FUNCTION__, ##arg)
#define MY_LOGD(fmt, arg...)        CAM_LOGD("(%d)[%s] "fmt, ::gettid(), __FUNCTION__, ##arg)
#define MY_LOGI(fmt, arg...)        CAM_LOGI("(%d)[%s] "fmt, ::gettid(), __FUNCTION__, ##arg)
#define MY_LOGW(fmt, arg...)        CAM_LOGW("(%d)[%s] "fmt, ::gettid(), __FUNCTION__, ##arg)
#define MY_LOGE(fmt, arg...)        CAM_LOGE("(%d)[%s] "fmt, ::gettid(), __FUNCTION__, ##arg)
//
#define MY_LOGV_IF(cond, arg...)    if (cond) { MY_LOGV(arg); }
#define MY_LOGD_IF(cond, arg...)    if (cond) { MY_LOGD(arg); }
#define MY_LOGI_IF(cond, arg...)    if (cond) { MY_LOGI(arg); }
#define MY_LOGW_IF(cond, arg...)    if (cond) { MY_LOGW(arg); }
#define MY_LOGE_IF(cond, arg...)    if (cond) { MY_LOGE(arg); }

#define FUNCTION_IN                 MY_LOGD("+")
#define FUNCTION_OUT                MY_LOGD("-")

/******************************************************************************
*
*******************************************************************************/
void 
PREVIEWFEATUREBuffer::
createBuffer()
{
    FUNCTION_IN;  
    //
    mbufSize = (mbufSize + L1_CACHE_BYTES-1) & ~(L1_CACHE_BYTES-1);    
    mbufInfo.size = mbufSize;

    mpIMemDrv = IMemDrv::createInstance();
    if ( ! mpIMemDrv || ! mpIMemDrv->init() ) {
        MY_LOGE("mpIMemDrv->init() error");
    }
 
    if ( ! mpIMemDrv || mpIMemDrv->allocVirtBuf(&mbufInfo) < 0) {
        MY_LOGE("mpIMemDrv->allocVirtBuf() error");
    }

    MY_LOGW_IF( mbufInfo.size & (L1_CACHE_BYTES-1), "bufSize(%d) not aligned!", mbufInfo.size);
    MY_LOGW_IF( mbufInfo.virtAddr & (L1_CACHE_BYTES-1), "bufAddr(%d) not aligned!", mbufInfo.virtAddr);    
    //
    FUNCTION_OUT;  
}


/******************************************************************************
*
*******************************************************************************/
void
PREVIEWFEATUREBuffer::
destroyBuffer()
{
    FUNCTION_IN;
    //
    if (0 == mbufInfo.virtAddr)
    {
        MY_LOGD("[FD Buffer doesn't exist]");
        return;
    }
      
    if ( ! mpIMemDrv || mpIMemDrv->freeVirtBuf(&mbufInfo) < 0) {
        MY_LOGE("m_pIMemDrv->freeVirtBuf() error");
    }

    if ( ! mpIMemDrv || ! mpIMemDrv->uninit() ) {
        MY_LOGE("m_pIMemDrv->uninit error");  
    }    
    //
    FUNCTION_OUT;
}

