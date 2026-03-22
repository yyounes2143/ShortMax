package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    private static String ZYk;
    private static boolean ex;
    private static String oJ;
    private static String tB;

    @RequiresPermission(anyOf = {"android.permission.ACCESS_WIFI_STATE"})
    @SuppressLint({"HardwareIds"})
    private static void Pfn(Context context) {
        if (ex || ex(context) == null) {
            return;
        }
        ZYk = String.valueOf(Build.TIME);
        tB = tB.oJ().ZYk("uuid", (String) null);
        ex = true;
    }

    public static String ZYk(Context context) {
        if (ZYk == null && !ex) {
            synchronized (BTZ.class) {
                try {
                    if (!ex) {
                        Pfn(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    private static void ba(Context context) {
        if (ex(context) == null) {
            return;
        }
        String ZYk2 = tB.oJ().ZYk("abcd", (String) null);
        if (!TextUtils.isEmpty(ZYk2)) {
            try {
                JSONObject jSONObject = new JSONObject(ZYk2);
                int optInt = jSONObject.optInt("cypher", -1);
                String optString = jSONObject.optString("message");
                if (optInt == 3) {
                    String tB2 = com.bytedance.sdk.component.utils.oJ.tB(optString);
                    if (!TextUtils.isEmpty(tB2)) {
                        oJ = new JSONObject(tB2).optString("abcd");
                        oJ();
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static Context ex(Context context) {
        if (context == null) {
            return si.oJ();
        }
        return context;
    }

    public static String oJ(Context context) {
        if (!TextUtils.isEmpty(oJ)) {
            return oJ;
        }
        ba(context);
        return oJ;
    }

    public static String tB(Context context) {
        if (TextUtils.isEmpty(tB) && !ex) {
            synchronized (BTZ.class) {
                try {
                    if (!ex) {
                        Pfn(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return tB;
    }

    public static void oJ(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.equals(oJ)) {
                oJ = str;
            }
            oJ();
        }
        if (TextUtils.isEmpty(oJ)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.jFA.tB.ZYk(oJ);
        dLZ.oJ(oJ);
    }

    public static String ZYk() {
        try {
            Locale locale = LocaleList.getDefault().get(0);
            String language = locale != null ? locale.getLanguage() : "";
            if (locale == null || !"zh".equals(language)) {
                return language;
            }
            String locale2 = locale.toString();
            if (locale.toString().length() >= 5) {
                locale2 = locale2.substring(0, 5);
            }
            if (Locale.SIMPLIFIED_CHINESE.toString().equals(locale2)) {
                return "zh";
            }
            return "zh-Hant";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void oJ() {
        if (TextUtils.isEmpty(oJ)) {
            return;
        }
        com.bytedance.sdk.openadsdk.utils.ofl.ZYk(new com.bytedance.sdk.component.so.so("update_did") { // from class: com.bytedance.sdk.openadsdk.core.BTZ.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(CrashHianalyticsData.TIME, SystemClock.elapsedRealtime());
                    jSONObject.put("abcd", BTZ.oJ);
                    tB.oJ().oJ("abcd", com.bytedance.sdk.component.utils.oJ.oJ(jSONObject).toString());
                } catch (Throwable unused) {
                }
            }
        });
    }
}
