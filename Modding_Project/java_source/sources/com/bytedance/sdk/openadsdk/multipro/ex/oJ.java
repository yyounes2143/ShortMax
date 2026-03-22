package com.bytedance.sdk.openadsdk.multipro.ex;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.ba;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
/* loaded from: classes3.dex */
public class oJ {
    public static HashSet<String> oJ = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.multipro.ex.oJ.1
        {
            add("app_id");
            add("tt_gdpr");
            add("extra_data");
            add("sdk_app_sha1");
            add("uuid");
            add("android_system_ua");
            add("sdk_local_web_ua");
            add("sdk_local_rom_info");
        }
    };

    private static ba ZYk() {
        try {
            if (oJ()) {
                return com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String ex() {
        return com.bytedance.sdk.openadsdk.multipro.ex.ZYk + "/t_sp/";
    }

    public static boolean oJ() {
        return si.oJ() != null;
    }

    private static Context tB() {
        return si.oJ();
    }

    public static synchronized void oJ(String str, String str2, Boolean bool) {
        synchronized (oJ.class) {
            if (oJ()) {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        ZYk.oJ(tB(), str, str2, bool);
                        return;
                    }
                    ba ZYk = ZYk();
                    if (ZYk != null) {
                        Uri parse = Uri.parse(ex() + "boolean/" + str2 + ZYk(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool);
                        ZYk.oJ(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    private static String ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return "?sp_file_name=".concat(String.valueOf(str));
    }

    public static String ZYk(String str, String str2, String str3) {
        if (oJ()) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return oJ(tB(), str, str2, str3);
            }
            ba ZYk = ZYk();
            if (ZYk != null) {
                String oJ2 = ZYk.oJ(Uri.parse(ex() + "string/" + str2 + ZYk(str)));
                if (oJ2 != null && !oJ2.equals("null")) {
                    return oJ2;
                }
            }
            return str3;
        }
        return str3;
    }

    public static void ZYk(String str, String str2) {
        if (oJ()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                    ZYk.ZYk(tB(), str, str2);
                    return;
                }
                ba ZYk = ZYk();
                if (ZYk != null) {
                    ZYk.oJ(Uri.parse(ex() + "long/" + str2 + ZYk(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void oJ(String str, String str2, String str3) {
        synchronized (oJ.class) {
            if (oJ()) {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        ZYk.oJ(tB(), str, str2, str3);
                        return;
                    }
                    ba ZYk = ZYk();
                    if (ZYk != null) {
                        Uri parse = Uri.parse(ex() + "string/" + str2 + ZYk(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, str3);
                        ZYk.oJ(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void oJ(String str, String str2, Integer num) {
        synchronized (oJ.class) {
            if (oJ()) {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        ZYk.oJ(tB(), str, str2, num);
                        return;
                    }
                    ba ZYk = ZYk();
                    if (ZYk != null) {
                        Uri parse = Uri.parse(ex() + "int/" + str2 + ZYk(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, num);
                        ZYk.oJ(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void oJ(String str, String str2, Long l10) {
        synchronized (oJ.class) {
            if (oJ()) {
                try {
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        ZYk.oJ(tB(), str, str2, l10);
                        return;
                    }
                    ba ZYk = ZYk();
                    if (ZYk != null) {
                        Uri parse = Uri.parse(ex() + "long/" + str2 + ZYk(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, l10);
                        ZYk.oJ(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String oJ(Context context, String str, String str2, String str3) {
        String oJ2 = oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2, str3);
        }
        SharedPreferences oJ3 = ZYk.oJ(context, oJ2);
        return oJ3 == null ? str3 : oJ3.getString(str2, str3);
    }

    public static String oJ(String str, String str2) {
        return oJ.contains(str2) ? "pag_sp_bad_par" : str;
    }

    public static int oJ(String str, String str2, int i10) {
        if (oJ()) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return oJ(tB(), str, str2, i10);
            }
            ba ZYk = ZYk();
            if (ZYk != null) {
                String oJ2 = ZYk.oJ(Uri.parse(ex() + "int/" + str2 + ZYk(str)));
                if (oJ2 != null && !oJ2.equals("null")) {
                    return Integer.parseInt(oJ2);
                }
            }
            return i10;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int oJ(Context context, String str, String str2, int i10) {
        String oJ2 = oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2, i10);
        }
        SharedPreferences oJ3 = ZYk.oJ(context, oJ2);
        return oJ3 == null ? i10 : oJ3.getInt(str2, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static float oJ(Context context, String str, String str2, float f10) {
        String oJ2 = oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2, f10);
        }
        SharedPreferences oJ3 = ZYk.oJ(context, oJ2);
        return oJ3 == null ? f10 : oJ3.getFloat(str2, f10);
    }

    public static boolean oJ(String str, String str2, boolean z10) {
        if (oJ()) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return oJ(tB(), str, str2, z10);
            }
            ba ZYk = ZYk();
            if (ZYk != null) {
                String oJ2 = ZYk.oJ(Uri.parse(ex() + "boolean/" + str2 + ZYk(str)));
                if (oJ2 != null && !oJ2.equals("null")) {
                    return Boolean.parseBoolean(oJ2);
                }
            }
            return z10;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean oJ(Context context, String str, String str2, boolean z10) {
        String oJ2 = oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2, z10);
        }
        SharedPreferences oJ3 = ZYk.oJ(context, oJ2);
        return oJ3 == null ? z10 : oJ3.getBoolean(str2, z10);
    }

    public static long oJ(String str, String str2, long j10) {
        if (oJ()) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return oJ(tB(), str, str2, j10);
            }
            ba ZYk = ZYk();
            if (ZYk != null) {
                String oJ2 = ZYk.oJ(Uri.parse(ex() + "long/" + str2 + ZYk(str)));
                if (oJ2 != null && !oJ2.equals("null")) {
                    return Long.parseLong(oJ2);
                }
            }
            return j10;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long oJ(Context context, String str, String str2, long j10) {
        String oJ2 = oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2, j10);
        }
        SharedPreferences oJ3 = ZYk.oJ(context, oJ2);
        return oJ3 == null ? j10 : oJ3.getLong(str2, j10);
    }

    public static void oJ(String str) {
        if (oJ()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                    ZYk.ZYk(tB(), str);
                    return;
                }
                ba ZYk = ZYk();
                if (ZYk != null) {
                    ZYk.oJ(Uri.parse(ex() + "clean" + ZYk(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
