package com.pandora.common.applog;

import jc.a;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface IAppLogEngine {
    void addDataObserver(IApplogObserver iApplogObserver);

    a getConfig();

    String getDeviceID();

    String getUUID();

    @Deprecated
    void onPause();

    @Deprecated
    void onResume();

    void onUpload(String str, JSONObject jSONObject);
}
