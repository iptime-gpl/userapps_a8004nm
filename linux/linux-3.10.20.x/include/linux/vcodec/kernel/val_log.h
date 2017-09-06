/**
 * @file
 *   val_log.h
 *
 * @par Project:
 *   MFlexVideo
 *
 * @par Description:
 *   Log System
 *
 * @par Author:
 *   Jackal Chen (mtk02532)
 *
 * @par $Revision: 1.1.1.1 $
 * @par $Modtime:$
 * @par $Log: val_log.h,v $
 * @par Revision 1.1.1.1  2016/07/21 08:21:45  mt7623
 * @par init
 * @par
 *
 */

#ifndef _VAL_LOG_H_
#define _VAL_LOG_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <linux/kernel.h>
#include <linux/xlog.h>

#define MFV_LOGI(...) xlog_printk(ANDROID_LOG_INFO, "VDO_LOGI", __VA_ARGS__);
#define MFV_LOGW(...) xlog_printk(ANDROID_LOG_WARN, "VDO_LOGW", __VA_ARGS__);
#define MFV_LOGE(...) xlog_printk(ANDROID_LOG_ERROR, "VDO_LOGE", __VA_ARGS__);

#ifdef MFV_LOG_DEBUG	/* debug information */
#define MFV_LOGD(...) xlog_printk(ANDROID_LOG_DEBUG, "VDO_LOGD", __VA_ARGS__);
#else
#define MFV_LOGD(...)
#endif

#ifdef __cplusplus
}
#endif
#endif				/* #ifndef _VAL_LOG_H_ */
