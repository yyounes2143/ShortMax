package com.ss.ttvideoengine.log;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AppLogEngineUploader implements VideoEventEngineUploader {
    private static final String TAG = "AppLogEngineUploader";
    private Context mContext;

    /* loaded from: classes6.dex */
    private static class Holder {
        private static final AppLogEngineUploader instance = new AppLogEngineUploader();

        private Holder() {
        }
    }

    public static AppLogEngineUploader getInstance() {
        return Holder.instance;
    }

    private AppLogEngineUploader() {
    }

    @Override // com.ss.ttvideoengine.log.VideoEventEngineUploader
    public void onEvent(String str, JSONObject jSONObject) {
    }

    @Override // com.ss.ttvideoengine.log.VideoEventEngineUploader
    public void onEventV2(String str, JSONObject jSONObject) {
    }

    public void setReportLogByEngine(boolean z10, Context context) {
    }
}
