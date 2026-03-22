package com.ss.ttvideoengine.model;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SubInfo {
    public static final String KEY_FORMAT = "Format";
    public static final String KEY_LANGUAGE_ID = "LanguageId";
    public static final String KEY_SUB_ID = "SubtitleId";
    public static final String KEY_VERSION = "Version";
    public static final int VALUE_SUB_INFO_FORMAT = 2;
    public static final int VALUE_SUB_INFO_ID = 0;
    public static final int VALUE_SUB_INFO_LANGUAGE_ID = 1;
    public static final int VALUE_SUB_INFO_VERSION = 3;
    private String mFormat;
    private int mLanguageId;
    private int mSubId;
    private String mVersion;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.mSubId = jSONObject.optInt(KEY_SUB_ID);
        this.mLanguageId = jSONObject.optInt(KEY_LANGUAGE_ID);
        this.mFormat = jSONObject.optString(KEY_FORMAT);
        this.mVersion = jSONObject.optString("Version");
    }

    public int getValueInt(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return -1;
            }
            return this.mLanguageId;
        }
        return this.mSubId;
    }

    public String getValueStr(int i10) {
        if (i10 != 2) {
            if (i10 != 3) {
                return "";
            }
            return this.mVersion;
        }
        return this.mFormat;
    }
}
