package com.bytedance.sdk.component.ba.oJ;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk {
    private static volatile List<Object> oJ = new ArrayList();

    public static void Pfn() {
        ex exVar = ex.oJ;
    }

    public static boolean ZYk() {
        if (so.cFZ().eZI() != null && so.cFZ().ba() != null) {
            return false;
        }
        return true;
    }

    public static void ex() {
        ex.oJ.ZYk();
    }

    public static void oJ(oJ oJVar, Context context) {
        ex.oJ.oJ(oJVar, context);
    }

    public static void tB() {
        oJ(false);
        ex.oJ.oJ();
    }

    public static void oJ(boolean z10) {
        ex.oJ.oJ(z10);
    }

    public static List<Object> oJ() {
        return oJ;
    }

    public static void oJ(String str, boolean z10) {
        ex.oJ.oJ(str, z10);
    }

    public static void oJ(String str, List<String> list, boolean z10, int i10, String str2) {
        oJ(str, list, z10, null, i10, str2);
    }

    public static void oJ(String str, List<String> list, boolean z10, Map<String, String> map, int i10, String str2) {
        ex.oJ.oJ(str, list, z10, map, i10, str2);
    }

    public static void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        ex.oJ.oJ(oJVar);
    }
}
