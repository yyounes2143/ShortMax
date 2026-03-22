package com.bytedance.sdk.openadsdk.multipro.ex;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.component.oJ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.si;
/* loaded from: classes3.dex */
public class ex {
    private static String ZYk(String str) {
        return TextUtils.isEmpty(str) ? "tt_sp" : str;
    }

    private static boolean oJ() {
        return si.oJ() == null;
    }

    public static void oJ(String str, String str2, Boolean bool) {
        if (oJ()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ.oJ(ZYk(str), str2, bool);
        } else {
            oJ(ZYk(str), str2, bool);
        }
    }

    public static String ZYk(String str, String str2, String str3) {
        if (oJ()) {
            return str3;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return oJ.ZYk(ZYk(str), str2, str3);
        }
        return oJ.oJ(si.oJ(), ZYk(str), str2, str3);
    }

    public static void oJ(String str, String str2, Long l10) {
        if (oJ()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ.oJ(ZYk(str), str2, l10);
        } else {
            oJ(ZYk(str), str2, l10);
        }
    }

    public static void oJ(String str, String str2, String str3) {
        if (oJ()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ.oJ(ZYk(str), str2, str3);
        } else {
            oJ(ZYk(str), str2, str3);
        }
    }

    public static void oJ(String str, String str2, Integer num) {
        if (oJ()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ.oJ(ZYk(str), str2, num);
        } else {
            oJ(ZYk(str), str2, num);
        }
    }

    public static int oJ(String str, String str2, int i10) {
        if (oJ()) {
            return i10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return oJ.oJ(ZYk(str), str2, i10);
        }
        return oJ.oJ(si.oJ(), ZYk(str), str2, i10);
    }

    public static boolean oJ(String str, String str2, boolean z10) {
        if (oJ()) {
            return z10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return oJ.oJ(ZYk(str), str2, z10);
        }
        return oJ.oJ(si.oJ(), ZYk(str), str2, z10);
    }

    public static long oJ(String str, String str2, long j10) {
        if (oJ()) {
            return j10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return oJ.oJ(ZYk(str), str2, j10);
        }
        return oJ.oJ(si.oJ(), ZYk(str), str2, j10);
    }

    public static void oJ(String str, String str2) {
        if (oJ()) {
            return;
        }
        try {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                oJ.ZYk(ZYk(str), str2);
            } else {
                ZYk.ZYk(si.oJ(), ZYk(str), str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void oJ(String str) {
        if (oJ()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            oJ.oJ(ZYk(str));
        } else {
            ZYk.ZYk(si.oJ(), ZYk(str));
        }
    }

    private static <T> void oJ(String str, String str2, T t10) {
        String oJ = oJ.oJ(str, str2);
        if (jFA.cFZ(oJ)) {
            oJ.tB ZYk = com.bytedance.sdk.component.oJ.oJ(si.oJ(), ZYk(oJ)).ZYk();
            ZYk.oJ(ZYk, str2, (Object) t10);
            ZYk.apply();
            return;
        }
        SharedPreferences oJ2 = ZYk.oJ(si.oJ(), ZYk(oJ));
        if (oJ2 == null) {
            return;
        }
        SharedPreferences.Editor edit = oJ2.edit();
        ZYk.oJ(edit, str2, t10);
        edit.apply();
    }
}
