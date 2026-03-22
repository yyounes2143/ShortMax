package com.bytedance.adsdk.oJ;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn implements so {
    @Override // com.bytedance.adsdk.oJ.so
    public Object oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            for (Object obj : objArr) {
                String valueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(valueOf) && !TextUtils.equals(valueOf, "null")) {
                    return valueOf;
                }
            }
        }
        return null;
    }
}
