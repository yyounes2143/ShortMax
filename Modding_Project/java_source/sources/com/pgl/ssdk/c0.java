package com.pgl.ssdk;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinMediationProvider;
import java.io.File;
import java.io.FileFilter;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final FileFilter f36702a = new a();

    /* loaded from: classes6.dex */
    static class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        if (r1 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(java.lang.String r2) {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L15
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L15
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L13
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L13
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> L17
            r2.close()     // Catch: java.lang.Throwable -> L1f
            goto L1f
        L13:
            r2 = r0
            goto L17
        L15:
            r2 = r0
            r1 = r2
        L17:
            if (r2 == 0) goto L1c
            r2.close()     // Catch: java.lang.Throwable -> L1c
        L1c:
            if (r1 != 0) goto L1f
            goto L22
        L1f:
            r1.close()     // Catch: java.lang.Throwable -> L22
        L22:
            if (r0 != 0) goto L27
            java.lang.String r2 = "0"
            return r2
        L27:
            java.lang.String r2 = r0.trim()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.c0.a(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
        if (r2 != null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.HashMap<java.lang.String, java.lang.String> b() {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L40
            java.lang.String r3 = "/proc/cpuinfo"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L40
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L41
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L41
        L12:
            java.lang.String r1 = r3.readLine()     // Catch: java.lang.Throwable -> L3e
            if (r1 != 0) goto L1c
            r3.close()     // Catch: java.lang.Throwable -> L49
            goto L49
        L1c:
            java.lang.String r4 = ":"
            r5 = 2
            java.lang.String[] r1 = r1.split(r4, r5)     // Catch: java.lang.Throwable -> L3e
            int r4 = r1.length     // Catch: java.lang.Throwable -> L3e
            if (r4 < r5) goto L12
            r4 = 0
            r4 = r1[r4]     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Throwable -> L3e
            r5 = 1
            r1 = r1[r5]     // Catch: java.lang.Throwable -> L3e
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r5 = r0.get(r4)     // Catch: java.lang.Throwable -> L3e
            if (r5 != 0) goto L12
            r0.put(r4, r1)     // Catch: java.lang.Throwable -> L3e
            goto L12
        L3e:
            r1 = r3
            goto L41
        L40:
            r2 = r1
        L41:
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.lang.Throwable -> L46
        L46:
            if (r2 != 0) goto L49
            goto L4c
        L49:
            r2.close()     // Catch: java.lang.Throwable -> L4c
        L4c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.c0.b():java.util.HashMap");
    }

    public static String c() {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap<String, String> b10 = b();
            jSONObject.put("core", a());
            jSONObject.put("hw", a(b10, "Hardware"));
            jSONObject.put(AppLovinMediationProvider.MAX, a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
            jSONObject.put("min", a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"));
            jSONObject.put("ft", a(b10, "Features"));
        } catch (Throwable unused) {
        }
        String jSONObject2 = jSONObject.toString();
        if (jSONObject2 == null) {
            return JsonUtils.EMPTY_JSON;
        }
        return jSONObject2.trim();
    }

    private static String a(HashMap<String, String> hashMap, String str) {
        String str2;
        try {
            str2 = hashMap.get(str);
        } catch (Throwable unused) {
            str2 = null;
        }
        return str2 == null ? "" : str2.trim();
    }

    private static int a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(f36702a).length;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
