package com.bytedance.sdk.openadsdk.utils;

import java.lang.ref.SoftReference;
/* loaded from: classes3.dex */
public class ZYk {
    private static Boolean ZYk;
    public static SoftReference<com.bytedance.sdk.openadsdk.core.model.cY> oJ;

    public static com.bytedance.sdk.openadsdk.core.model.cY ZYk() {
        SoftReference<com.bytedance.sdk.openadsdk.core.model.cY> softReference = oJ;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    public static boolean oJ() {
        try {
            if (ZYk == null) {
                boolean z10 = true;
                if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("enable_get_ad_new", 0) != 1) {
                    z10 = false;
                }
                ZYk = Boolean.valueOf(z10);
            }
            return ZYk.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return;
        }
        oJ = new SoftReference<>(cYVar);
    }
}
