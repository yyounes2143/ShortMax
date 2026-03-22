package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.si;
/* loaded from: classes3.dex */
public class ex {
    public static String oJ = "com.bytedance.openadsdk";
    public static String ZYk = "content://" + oJ + ".TTMultiProvider";

    static {
        oJ();
    }

    public static void oJ() {
        if (si.oJ() != null) {
            oJ = si.oJ().getPackageName();
            ZYk = "content://" + oJ + ".TTMultiProvider";
        }
    }
}
