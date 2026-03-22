package com.bytedance.sdk.openadsdk.utils;

import android.content.SharedPreferences;
/* loaded from: classes3.dex */
public class HL {
    public static boolean oJ = oJ();

    private static boolean oJ() {
        SharedPreferences sharedPreferences;
        try {
            if (com.bytedance.sdk.openadsdk.core.si.oJ() != null && (sharedPreferences = com.bytedance.sdk.openadsdk.core.si.oJ().getSharedPreferences("pag_sp_prop_switch", 0)) != null) {
                return sharedPreferences.getInt("perf_con_use_prop", 1) == 1;
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
        }
        return true;
    }

    public static void oJ(int i10) {
        try {
            SharedPreferences.Editor edit = com.bytedance.sdk.openadsdk.core.si.oJ().getSharedPreferences("pag_sp_prop_switch", 0).edit();
            edit.putInt("perf_con_use_prop", i10);
            edit.apply();
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
        }
    }
}
