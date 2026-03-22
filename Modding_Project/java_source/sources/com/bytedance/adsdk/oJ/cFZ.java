package com.bytedance.adsdk.oJ;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ implements so {
    @Override // com.bytedance.adsdk.oJ.so
    /* renamed from: ZYk */
    public Boolean oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            try {
                Double.parseDouble(String.valueOf(objArr[0]));
                return Boolean.TRUE;
            } catch (NumberFormatException unused) {
                return Boolean.FALSE;
            }
        }
        return Boolean.FALSE;
    }
}
