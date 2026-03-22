package com.bytedance.adsdk.oJ;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba implements so {
    @Override // com.bytedance.adsdk.oJ.so
    /* renamed from: ZYk */
    public String oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length < 2) {
            return null;
        }
        String valueOf = String.valueOf(objArr[0]);
        if (TextUtils.isEmpty(valueOf)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(valueOf);
            String valueOf2 = String.valueOf(objArr[1]);
            if (TextUtils.isEmpty(valueOf2)) {
                return null;
            }
            Object oJ = com.bytedance.adsdk.oJ.ZYk.oJ.oJ(valueOf2).oJ(jSONObject2);
            if (TextUtils.isEmpty(String.valueOf(oJ))) {
                if (objArr.length < 3) {
                    return null;
                }
                return String.valueOf(objArr[2]);
            }
            return String.valueOf(oJ);
        } catch (JSONException unused) {
            return null;
        }
    }
}
