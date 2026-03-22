package com.bytedance.bdtracker;

import android.os.Bundle;
import com.bytedance.applog.AppLog;
import com.volcengine.onekit.service.Analytics;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class h3 implements Analytics {
    public void onEventV3(String str, Bundle bundle) {
        AppLog.onEventV3(str, bundle);
    }

    public void onEventV3(String str, JSONObject jSONObject) {
        AppLog.onEventV3(str, jSONObject);
    }
}
