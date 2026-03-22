package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.text.TextUtils;
import android.util.Base64;
/* loaded from: classes3.dex */
public class ba {
    public static String ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return new String(Base64.decode(str, 10));
    }

    public static String oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return Base64.encodeToString(str.getBytes(), 10);
    }
}
