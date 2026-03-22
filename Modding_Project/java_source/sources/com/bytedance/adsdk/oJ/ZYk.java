package com.bytedance.adsdk.oJ;

import android.net.Uri;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk implements so {
    @Override // com.bytedance.adsdk.oJ.so
    public Object oJ(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        String valueOf = String.valueOf(objArr[0]);
        if (TextUtils.isEmpty(valueOf)) {
            return null;
        }
        return Uri.decode(valueOf);
    }
}
