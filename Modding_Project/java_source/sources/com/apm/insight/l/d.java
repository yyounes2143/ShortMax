package com.apm.insight.l;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Device.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f7054a = false;

    /* renamed from: b  reason: collision with root package name */
    private static int f7055b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f7056c = Pattern.compile("^0-([\\d]+)$");

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = b("ro.build.version.emui");
        }
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("emotionui")) {
            return e();
        }
        return true;
    }

    private static String b(String str) {
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            bufferedReader.close();
            com.apm.insight.a.a((Closeable) bufferedReader);
            return str2;
        } catch (Throwable unused2) {
            com.apm.insight.a.a((Closeable) bufferedReader);
            return str2;
        }
    }

    public static boolean c() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static int d() {
        int i10 = f7055b;
        if (i10 > 0) {
            return i10;
        }
        int c10 = c("/sys/devices/system/cpu/possible");
        if (c10 <= 0) {
            c10 = c("/sys/devices/system/cpu/present");
        }
        if (c10 <= 0) {
            c10 = e("/sys/devices/system/cpu/");
        }
        if (c10 <= 0) {
            c10 = Runtime.getRuntime().availableProcessors();
        }
        if (c10 <= 0) {
            c10 = 1;
        }
        f7055b = c10;
        return c10;
    }

    private static boolean e() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static int c(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                int d10 = d(readLine);
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                return d10;
            }
        } catch (Throwable unused3) {
            if (bufferedReader == null) {
                return -1;
            }
            bufferedReader.close();
        }
        try {
            bufferedReader.close();
        } catch (IOException unused4) {
            return -1;
        }
    }

    private static int e(String str) {
        try {
            File[] listFiles = new File(str).listFiles(new FilenameFilter() { // from class: com.apm.insight.l.d.1

                /* renamed from: a  reason: collision with root package name */
                private final Pattern f7057a = Pattern.compile("^cpu[\\d]+$");

                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str2) {
                    return this.f7057a.matcher(str2).matches();
                }
            });
            if (listFiles == null || listFiles.length <= 0) {
                return -1;
            }
            return listFiles.length;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static String a() {
        return b("ro.build.version.emui");
    }

    public static boolean b() {
        if (!f7054a) {
            try {
                Class.forName("miui.os.Build");
                com.apm.insight.k.e.f7008a = true;
                f7054a = true;
                return true;
            } catch (Exception unused) {
                f7054a = true;
            }
        }
        return com.apm.insight.k.e.f7008a;
    }

    private static int d(String str) {
        Matcher matcher = f7056c.matcher(str);
        if (matcher.matches()) {
            try {
                return Integer.parseInt(matcher.group(1)) + 1;
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }
}
