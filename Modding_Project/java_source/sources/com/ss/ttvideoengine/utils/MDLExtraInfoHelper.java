package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.PreloaderURLItem;
import com.ss.ttvideoengine.PreloaderVidItem;
import com.ss.ttvideoengine.PreloaderVideoModelItem;
import com.ss.ttvideoengine.model.VideoInfo;
/* loaded from: classes6.dex */
public class MDLExtraInfoHelper {
    public static void addPCDNFlag(DataLoaderHelper.DataLoaderTaskItem dataLoaderTaskItem, DataLoaderHelper.DataLoaderTaskItem.TrackItem trackItem) {
        int cdnType;
        PreloaderURLItem preloaderURLItem = dataLoaderTaskItem.mURLItem;
        if (preloaderURLItem != null) {
            cdnType = preloaderURLItem.getCdnType();
        } else {
            PreloaderVidItem preloaderVidItem = dataLoaderTaskItem.mVidItem;
            if (preloaderVidItem != null) {
                cdnType = preloaderVidItem.getCdnType();
            } else {
                PreloaderVideoModelItem preloaderVideoModelItem = dataLoaderTaskItem.mVideoModelItem;
                cdnType = preloaderVideoModelItem != null ? preloaderVideoModelItem.getCdnType() : 0;
            }
        }
        trackItem.mExternalInfo = addPCDNFlag(cdnType, trackItem.mExternalInfo);
    }

    public static void addTags(DataLoaderHelper.DataLoaderTaskItem dataLoaderTaskItem, DataLoaderHelper.DataLoaderTaskItem.TrackItem trackItem) {
        if (dataLoaderTaskItem.mTag != null) {
            if (trackItem.mExternalInfo == null) {
                trackItem.mExternalInfo = "tag=" + TTHelper.encodeUrl(dataLoaderTaskItem.mTag);
            } else {
                trackItem.mExternalInfo += "&tag=" + TTHelper.encodeUrl(dataLoaderTaskItem.mTag);
            }
        }
        if (dataLoaderTaskItem.mSubTag != null) {
            if (trackItem.mExternalInfo == null) {
                trackItem.mExternalInfo = "stag=" + TTHelper.encodeUrl(dataLoaderTaskItem.mSubTag);
                return;
            }
            trackItem.mExternalInfo += "&stag=" + TTHelper.encodeUrl(dataLoaderTaskItem.mSubTag);
        }
    }

    public static String createMDLExtraInfo(VideoInfo videoInfo) {
        StringBuilder sb2 = new StringBuilder();
        String valueStr = videoInfo.getValueStr(28);
        if (valueStr == null) {
            valueStr = "";
        }
        String valueStr2 = videoInfo.getValueStr(29);
        String str = valueStr2 != null ? valueStr2 : "";
        sb2.append("fileId=");
        sb2.append(valueStr);
        sb2.append("&bitrate=");
        sb2.append(videoInfo.getValueInt(44));
        sb2.append("&pcrc=");
        sb2.append(TTHelper.encodeUrl(str));
        return sb2.toString();
    }

    public static String addPCDNFlag(int i10, String str) {
        if (i10 > 0) {
            if (TextUtils.isEmpty(str)) {
                return "fp=1";
            }
            return (str + ContainerUtils.FIELD_DELIMITER) + "fp=1";
        }
        return str;
    }

    public static String createMDLExtraInfo(VideoInfo videoInfo, DataLoaderHelper.DataLoaderTaskItem dataLoaderTaskItem) {
        StringBuilder sb2 = new StringBuilder();
        String valueStr = videoInfo.getValueStr(28);
        if (valueStr == null) {
            valueStr = "";
        }
        String valueStr2 = videoInfo.getValueStr(29);
        String str = valueStr2 != null ? valueStr2 : "";
        int valueInt = videoInfo.getValueInt(44);
        sb2.append("fileId=");
        sb2.append(valueStr);
        sb2.append("&bitrate=");
        sb2.append(valueInt);
        sb2.append("&pcrc=");
        sb2.append(TTHelper.encodeUrl(str));
        sb2.append("&tag=");
        sb2.append(TTHelper.encodeUrl(dataLoaderTaskItem.mTag));
        if (!TextUtils.isEmpty(dataLoaderTaskItem.mSubTag)) {
            sb2.append("&stag=");
            sb2.append(TTHelper.encodeUrl(dataLoaderTaskItem.mSubTag));
        }
        return sb2.toString();
    }
}
