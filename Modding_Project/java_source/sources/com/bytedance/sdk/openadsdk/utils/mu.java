package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class mu {
    private static final Map<String, mu> oJ = new HashMap();
    private SharedPreferences ZYk;

    private mu(String str, Context context) {
        if (context != null) {
            this.ZYk = context.getSharedPreferences(str, 0);
        }
    }

    public static mu oJ(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_sp";
        }
        Map<String, mu> map = oJ;
        mu muVar = map.get(str);
        if (muVar == null) {
            synchronized (mu.class) {
                if (muVar == null) {
                    try {
                        muVar = new mu(str, com.bytedance.sdk.openadsdk.core.si.oJ());
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                map.put(str, muVar);
            }
        }
        return muVar;
    }

    public String oJ(String str, String str2) {
        try {
            return this.ZYk.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public void oJ(String str) {
        try {
            this.ZYk.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }
}
