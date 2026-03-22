package com.ss.mediakit.medialoader;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AVMDLDataLoaderNotifyInfo {
    public long code;
    public JSONObject jsonLog;
    public String logExtraJsonStr;
    public String logInfo;
    public String logType;
    public long parameter;
    public int what;

    public AVMDLDataLoaderNotifyInfo() {
        this.what = -1;
        this.code = -1L;
        this.parameter = -1L;
        this.logInfo = null;
        this.jsonLog = null;
    }

    public void logToJson() {
        if (this.logInfo == null) {
            return;
        }
        this.jsonLog = null;
        try {
            this.jsonLog = new JSONObject(this.logInfo);
        } catch (Exception unused) {
            this.jsonLog = null;
        }
    }

    public AVMDLDataLoaderNotifyInfo(int i10, int i11, String str) {
        this.what = i10;
        this.code = i11;
        this.parameter = -1L;
        this.logInfo = str;
        this.jsonLog = null;
    }
}
