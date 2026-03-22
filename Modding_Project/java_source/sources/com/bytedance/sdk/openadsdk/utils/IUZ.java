package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class IUZ {
    private static String Pfn = null;
    public static boolean ZYk = false;

    /* renamed from: ba  reason: collision with root package name */
    private static int f13399ba = Integer.MAX_VALUE;
    public static boolean oJ = false;
    private static final CharSequence tB = "amigo";
    private static final CharSequence ex = "funtouch";
    private static final ConcurrentHashMap<String, String> cFZ = new ConcurrentHashMap<>();

    /* loaded from: classes3.dex */
    public static class oJ implements Callable<String> {
        private final String oJ;

        public oJ(String str) {
            this.oJ = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: oJ */
        public String call() throws Exception {
            String str = (String) IUZ.cFZ.get(this.oJ);
            if (str != null) {
                return str;
            }
            System.currentTimeMillis();
            String tB = IUZ.tB(this.oJ);
            System.currentTimeMillis();
            if (tB != null) {
                IUZ.cFZ.put(this.oJ, tB);
            }
            return tB;
        }
    }

    public static String BTZ() {
        if (Pfn()) {
            return "miui_" + ex("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
        }
        return "";
    }

    private static String Id() {
        if (awB()) {
            return eZI();
        }
        if (Pfn()) {
            return BTZ();
        }
        if (ZYk()) {
            return si();
        }
        if (Ry()) {
            return RZ();
        }
        String PiB = PiB();
        if (!TextUtils.isEmpty(PiB)) {
            return PiB;
        }
        if (cFZ()) {
            return ba();
        }
        if (so()) {
            return jFA();
        }
        if (ex()) {
            return tB();
        }
        String kkU = kkU();
        if (!TextUtils.isEmpty(kkU)) {
            return kkU;
        }
        return Build.DISPLAY;
    }

    public static boolean Pfn() {
        if (!ZYk) {
            try {
                Class.forName("miui.os.Build");
                oJ = true;
                ZYk = true;
                return true;
            } catch (Exception unused) {
                ZYk = true;
            }
        }
        return oJ;
    }

    public static String PiB() {
        String WcQ = WcQ();
        if (WcQ != null && WcQ.toLowerCase().contains("emotionui")) {
            return WcQ + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static boolean QSm() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String RZ() {
        if (Ry()) {
            String cFZ2 = HyG.cFZ("ro.build.version.kllkrom");
            return "coloros_" + ex(cFZ2) + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static boolean Ry() {
        if (f13399ba == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String cFZ2 = HyG.cFZ("kllk");
            if (!TextUtils.isEmpty(str) && str.toLowerCase().contains(cFZ2)) {
                f13399ba = 1;
            } else {
                f13399ba = 0;
            }
        }
        if (f13399ba != 1) {
            return false;
        }
        return true;
    }

    public static String WcQ() {
        return ex("ro.build.version.emui");
    }

    public static boolean awB() {
        if (!"smartisan".equalsIgnoreCase(Build.MANUFACTURER) && !"smartisan".equalsIgnoreCase(Build.BRAND)) {
            return false;
        }
        return true;
    }

    public static String ba() {
        return ex("ro.vivo.os.build.display.id") + "_" + ex("ro.vivo.product.version");
    }

    public static boolean cFZ() {
        String ex2 = ex("ro.vivo.os.build.display.id");
        if (!TextUtils.isEmpty(ex2) && ex2.toLowerCase().contains(ex)) {
            return true;
        }
        return false;
    }

    public static boolean dLZ() {
        if (!TextUtils.isEmpty(ex("ro.letv.release.version"))) {
            return true;
        }
        return false;
    }

    public static String eZI() {
        if (awB()) {
            try {
                return "smartisan_".concat(String.valueOf(ex("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static boolean ex() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String jFA() {
        return Build.DISPLAY + "_" + ex("ro.gn.sv.version");
    }

    public static String kkU() {
        if (dLZ()) {
            return "eui_" + ex("ro.letv.release.version") + "_" + Build.DISPLAY;
        }
        return "";
    }

    public static String oJ() {
        if (!TextUtils.isEmpty(Pfn)) {
            return Pfn;
        }
        String oJ2 = com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_local_rom_info", 604800000L);
        Pfn = oJ2;
        if (TextUtils.isEmpty(oJ2)) {
            String Id = Id();
            Pfn = Id;
            com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_local_rom_info", Id);
        }
        return Pfn;
    }

    public static String si() {
        String str = Build.DISPLAY;
        if (str != null && str.toLowerCase().contains("flyme")) {
            return str;
        }
        return "";
    }

    public static boolean so() {
        String str = Build.DISPLAY;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().contains(tB)) {
            return true;
        }
        return false;
    }

    public static String tB() {
        return ex("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean ZYk() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tB(String str) {
        BufferedReader bufferedReader;
        Throwable th2;
        Process exec;
        String str2 = "";
        Process process = null;
        try {
            try {
                try {
                    exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                    } catch (IllegalThreadStateException unused) {
                        bufferedReader = null;
                    }
                } catch (IOException e10) {
                    com.bytedance.sdk.component.utils.QSm.oJ("ToolUtils", "Exception while closing InputStream", e10);
                }
            } catch (Throwable th3) {
                bufferedReader = null;
                th2 = th3;
            }
        } catch (IllegalThreadStateException unused2) {
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.exitValue();
            bufferedReader.close();
        } catch (IllegalThreadStateException unused3) {
            process = exec;
            try {
                process.destroy();
            } catch (Throwable unused4) {
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return str2;
        } catch (Throwable th4) {
            th2 = th4;
            try {
                com.bytedance.sdk.component.utils.QSm.oJ("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th2);
                return str2;
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e11) {
                        com.bytedance.sdk.component.utils.QSm.oJ("ToolUtils", "Exception while closing InputStream", e11);
                    }
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String ex(java.lang.String r4) {
        /*
            java.lang.String r0 = ""
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.bytedance.sdk.openadsdk.utils.IUZ.cFZ
            java.lang.Object r1 = r1.get(r4)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto Ld
            return r1
        Ld:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L34
            com.bytedance.sdk.openadsdk.utils.IUZ$oJ r1 = new com.bytedance.sdk.openadsdk.utils.IUZ$oJ     // Catch: java.lang.Throwable -> L34
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L34
            com.bytedance.sdk.component.so.cFZ r4 = new com.bytedance.sdk.component.so.cFZ     // Catch: java.lang.Throwable -> L34
            r2 = 5
            r3 = 2
            r4.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L34
            com.bytedance.sdk.openadsdk.utils.IUZ$1 r1 = new com.bytedance.sdk.openadsdk.utils.IUZ$1     // Catch: java.lang.Throwable -> L34
            java.lang.String r2 = "_getSystemPropertyTask"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L34
            com.bytedance.sdk.openadsdk.utils.ofl.ZYk(r1)     // Catch: java.lang.Throwable -> L34
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L34
            r2 = 1
            java.lang.Object r4 = r4.get(r2, r1)     // Catch: java.lang.Throwable -> L34
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L34
            goto L35
        L34:
            r4 = r0
        L35:
            if (r4 != 0) goto L38
            goto L39
        L38:
            r0 = r4
        L39:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.IUZ.ex(java.lang.String):java.lang.String");
    }

    public static boolean oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            str = WcQ();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || QSm();
    }
}
