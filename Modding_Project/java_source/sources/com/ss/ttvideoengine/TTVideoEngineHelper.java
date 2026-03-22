package com.ss.ttvideoengine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class TTVideoEngineHelper {
    private static final String TAG = "TTVideoEngine";

    TTVideoEngineHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static IVideoInfo infoFromBitrate(@NonNull IVideoModel iVideoModel, long j10) {
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (j10 > 0 && videoInfoList != null) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && videoInfo.getMediatype() != VideoRef.TYPE_AUDIO && videoInfo.getResolution() != null && videoInfo.getValueInt(3) == j10) {
                    return videoInfo;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isMayUseP2P(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.d(TAG, "url null, may not use p2p");
            return false;
        } else if (!str.contains("http://127.0.0.1") && !str.contains(DataLoaderHelper.MDL_PREFIX)) {
            TTVideoEngineLog.d(TAG, "url not 127 or mdl protocol, may not use p2p");
            return false;
        } else {
            TTVideoEngineLog.d(TAG, "url  may use p2p");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Map<Integer, String> paramsFromVideoInfo(@Nullable IVideoInfo iVideoInfo) {
        if (iVideoInfo == null || TextUtils.isEmpty(iVideoInfo.getValueStr(32))) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(32, iVideoInfo.getValueStr(32));
        return hashMap;
    }
}
