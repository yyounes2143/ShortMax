package com.apm.insight.l;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;
import java.util.Locale;
/* compiled from: RomUtils.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final CharSequence f7079a = "amigo";

    /* renamed from: b  reason: collision with root package name */
    private static final CharSequence f7080b = "funtouch";

    public static String a() {
        String str;
        String str2 = "";
        if (d.b()) {
            if (d.b()) {
                return "miui_" + a("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
            }
            return "";
        } else if (d.c()) {
            String str3 = Build.DISPLAY;
            return (str3 == null || !str3.toLowerCase(Locale.getDefault()).contains("flyme")) ? "" : str3;
        } else if (b()) {
            if (b()) {
                return "coloros_" + a("ro.build.version.opporom") + "_" + Build.DISPLAY;
            }
            return "";
        } else {
            String a10 = d.a();
            if (a10 == null || !a10.toLowerCase(Locale.getDefault()).contains("emotionui")) {
                str = "";
            } else {
                str = a10 + "_" + Build.DISPLAY;
            }
            if (TextUtils.isEmpty(str)) {
                String a11 = a("ro.vivo.os.build.display.id");
                if (!TextUtils.isEmpty(a11) && a11.toLowerCase(Locale.getDefault()).contains(f7080b)) {
                    return a("ro.vivo.os.build.display.id") + "_" + a("ro.vivo.product.version");
                }
                String str4 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str4) && str4.toLowerCase(Locale.getDefault()).contains(f7079a)) {
                    return str4 + "_" + a("ro.gn.sv.version");
                }
                String str5 = Build.MANUFACTURER + Build.BRAND;
                if (!TextUtils.isEmpty(str5)) {
                    String lowerCase = str5.toLowerCase(Locale.getDefault());
                    if (lowerCase.contains("360") || lowerCase.contains("qiku")) {
                        return a("ro.build.uiversion") + "_" + str4;
                    }
                }
                if (!TextUtils.isEmpty(a("ro.letv.release.version"))) {
                    str2 = "eui_" + a("ro.letv.release.version") + "_" + str4;
                }
                return !TextUtils.isEmpty(str2) ? str2 : str4;
            }
            return str;
        }
    }

    private static boolean b() {
        String str = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase(Locale.getDefault()).contains("oppo");
        }
        return false;
    }

    private static String a(String str) {
        BufferedReader bufferedReader;
        String str2 = "";
        try {
            Process exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
            try {
                str2 = bufferedReader.readLine();
                exec.destroy();
                com.apm.insight.a.a((Closeable) bufferedReader);
                return str2;
            } catch (Throwable unused) {
                com.apm.insight.a.a((Closeable) bufferedReader);
                return str2;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }
}
