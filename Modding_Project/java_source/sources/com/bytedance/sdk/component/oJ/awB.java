package com.bytedance.sdk.component.oJ;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class awB {
    private final Map<String, Object> oJ = new ConcurrentHashMap();

    private awB() {
    }

    public static awB oJ() {
        return new awB();
    }

    public String ZYk() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.oJ.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public awB oJ(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.oJ.put(str, obj);
        }
        return this;
    }
}
