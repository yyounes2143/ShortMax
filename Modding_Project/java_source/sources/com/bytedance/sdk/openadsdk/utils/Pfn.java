package com.bytedance.sdk.openadsdk.utils;

import android.os.SystemClock;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    private static long ZYk;
    private static WeakReference<com.bytedance.sdk.openadsdk.core.model.cY> oJ;
    private static boolean tB;

    private static void ZYk(final long j10) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar;
        WeakReference<com.bytedance.sdk.openadsdk.core.model.cY> weakReference = oJ;
        if (weakReference == null || j10 <= 0 || (cYVar = weakReference.get()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, cYVar.ex(), "store_duration", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.utils.Pfn.1
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", j10);
                } catch (JSONException unused) {
                }
                return jSONObject;
            }
        });
        oJ = null;
        tB = false;
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.ba Wd = cYVar.Wd();
        if (Wd == null || TextUtils.isEmpty(Wd.oJ())) {
            return;
        }
        oJ = new WeakReference<>(cYVar);
    }

    public static boolean tB() {
        WeakReference<com.bytedance.sdk.openadsdk.core.model.cY> weakReference = oJ;
        if (weakReference != null && weakReference.get() != null) {
            tB = true;
            return true;
        }
        return false;
    }

    public static void oJ(long j10) {
        ZYk(j10);
    }

    public static void ZYk() {
        if (oJ == null || tB) {
            return;
        }
        ZYk = SystemClock.elapsedRealtime();
    }

    public static void oJ() {
        if (oJ == null || tB) {
            return;
        }
        if (ZYk > 0) {
            ZYk(SystemClock.elapsedRealtime() - ZYk);
        }
        oJ = null;
        ZYk = 0L;
    }
}
