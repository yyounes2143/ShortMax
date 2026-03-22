package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.DataLoaderCDNLog;
import com.ss.ttvideoengine.utils.Error;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface DataLoaderListener {
    @Nullable
    @Deprecated
    String apiStringForFetchVideoModel(Map<String, String> map, String str, Resolution resolution);

    @Nullable
    @Deprecated
    String authStringForFetchVideoModel(String str, Resolution resolution);

    void dataLoaderError(String str, int i10, Error error);

    @Nullable
    String getCheckSumInfo(String str);

    @Nullable
    HashMap<String, String> getCustomHttpHeaders(String str);

    boolean loadLibrary(String str);

    void onLoadProgress(DataLoaderHelper.DataLoaderTaskLoadProgress dataLoaderTaskLoadProgress);

    void onLogInfo(int i10, String str, JSONObject jSONObject);

    void onLogInfoToMonitor(int i10, String str, JSONObject jSONObject);

    void onNotify(int i10, long j10, long j11, String str);

    void onNotifyCDNLog(DataLoaderCDNLog dataLoaderCDNLog);

    void onNotifyCDNLog(JSONObject jSONObject);

    void onTaskProgress(DataLoaderHelper.DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo);

    default void onStartComplete() {
    }

    default void onMultiNetworkSwitch(String str, String str2) {
    }
}
