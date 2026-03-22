package com.bytedance.sdk.openadsdk.jr.oJ;

import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class tB {
    public static int ZYk = 6;
    public static boolean oJ = false;
    public static String tB = "engaged_view";

    public static void ZYk(cY cYVar) {
        ZYk tB2 = tB(cYVar);
        if (tB2 == null) {
            return;
        }
        tB2.ZYk();
    }

    public static void oJ(cY cYVar) {
        ZYk tB2 = tB(cYVar);
        if (tB2 == null) {
            return;
        }
        tB2.oJ();
    }

    private static ZYk tB(cY cYVar) {
        if (cYVar != null && cYVar.rxj()) {
            return cYVar.PO();
        }
        return null;
    }

    public static void oJ(cY cYVar, int i10) {
        ZYk tB2 = tB(cYVar);
        if (tB2 == null || tB2.tB()) {
            return;
        }
        tB2.oJ(i10);
    }

    public static void oJ(cY cYVar, boolean z10) {
        ZYk tB2 = tB(cYVar);
        if (tB2 == null || tB2.tB()) {
            return;
        }
        tB2.oJ(z10);
        tB2.oJ(z10 ? 4 : 8);
    }
}
