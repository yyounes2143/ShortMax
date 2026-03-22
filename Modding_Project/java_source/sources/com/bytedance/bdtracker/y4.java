package com.bytedance.bdtracker;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.l0;
import com.huawei.hms.android.SystemUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;
/* loaded from: classes3.dex */
public class y4 {

    /* renamed from: a  reason: collision with root package name */
    public static final CharSequence f12532a = "amigo";

    /* renamed from: b  reason: collision with root package name */
    public static final CharSequence f12533b = "funtouch";

    /* renamed from: c  reason: collision with root package name */
    public static final j4<Boolean> f12534c = new a();

    /* loaded from: classes3.dex */
    public static class a extends j4<Boolean> {
        @Override // com.bytedance.bdtracker.j4
        public Boolean a(Object[] objArr) {
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                return Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0])));
            } catch (Throwable unused) {
                return Boolean.FALSE;
            }
        }
    }

    public static boolean a() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }

    public static boolean b() {
        String str = Build.DISPLAY;
        if ((!TextUtils.isEmpty(str) && str.contains("Flyme")) || "flyme".equals(Build.USER)) {
            return true;
        }
        return false;
    }

    public static boolean c() {
        String trim;
        String str = Build.MANUFACTURER;
        if (str == null) {
            trim = "";
        } else {
            trim = str.trim();
        }
        return trim.toUpperCase().contains(SystemUtils.PRODUCT_HUAWEI);
    }

    public static boolean d() {
        try {
            if (Class.forName("miui.os.Build").getName().length() <= 0) {
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a(String str) {
        BufferedReader bufferedReader;
        String a10 = a5.a(str);
        if (TextUtils.isEmpty(a10)) {
            String str2 = "";
            if (!TextUtils.isEmpty(str)) {
                try {
                    Runtime runtime = Runtime.getRuntime();
                    Process exec = runtime.exec("getprop " + str);
                    bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                    try {
                        str2 = bufferedReader.readLine();
                        exec.destroy();
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            LoggerImpl.global().error("getSysPropByExec error", th, new Object[0]);
                            return str2;
                        } finally {
                            l0.b.a((Closeable) bufferedReader);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
            }
            return str2;
        }
        return a10;
    }
}
