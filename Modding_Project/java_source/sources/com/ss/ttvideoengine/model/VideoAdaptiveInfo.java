package com.ss.ttvideoengine.model;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoAdaptiveInfo {
    public static final String KEY_ADAPTIVE_TYPE = "AdaptiveType";
    public static final String KEY_BACKUP_PLAY_URL = "BackupPlayUrl";
    public static final String KEY_MAIN_PLAY_URL = "MainPlayUrl";
    private String mAdaptiveType;
    private String mBackupPlayUrl;
    private String mMainPlayUrl;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.mAdaptiveType = jSONObject.optString(KEY_ADAPTIVE_TYPE);
        this.mMainPlayUrl = jSONObject.optString(KEY_MAIN_PLAY_URL);
        this.mBackupPlayUrl = jSONObject.optString(KEY_BACKUP_PLAY_URL);
    }

    public String getValueStr(int i10) {
        if (i10 != 108) {
            if (i10 != 109) {
                if (i10 != 215) {
                    return "";
                }
                return this.mAdaptiveType;
            }
            return this.mBackupPlayUrl;
        }
        return this.mMainPlayUrl;
    }
}
