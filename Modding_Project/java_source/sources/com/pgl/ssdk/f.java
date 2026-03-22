package com.pgl.ssdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static long f36753a = 28800;

    /* renamed from: b  reason: collision with root package name */
    public static int f36754b = 5;

    public static long a(long j10, InputStream inputStream) throws IOException {
        if (j10 != -1) {
            return j10;
        }
        byte[] bArr = new byte[8192];
        long j11 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j11;
            }
            j11 += read;
        }
    }

    public static long b() {
        Context b10 = z.b();
        if (b10 == null) {
            return 0L;
        }
        long a10 = x0.a(b10, "pgl_frt", 0L);
        if (a10 == 0) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            x0.b(b10, "pgl_frt", currentTimeMillis);
            return currentTimeMillis;
        }
        return a10;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:26:0x0054
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static synchronized void c() {
        /*
            java.lang.Class<com.pgl.ssdk.f> r0 = com.pgl.ssdk.f.class
            monitor-enter(r0)
            boolean r1 = d()     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto Lb
            monitor-exit(r0)
            return
        Lb:
            java.lang.String r1 = com.pgl.ssdk.v.c()     // Catch: java.lang.Throwable -> L61
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L17
            monitor-exit(r0)
            return
        L17:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L61
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L61
            boolean r1 = r2.exists()     // Catch: java.lang.Throwable -> L61
            if (r1 == 0) goto L61
            r1 = 1
            org.json.JSONObject r1 = a(r2, r1)     // Catch: java.lang.Throwable -> L61
            java.lang.String r2 = "apk_info"
            java.lang.String r3 = com.pgl.ssdk.v.b()     // Catch: java.lang.Throwable -> L61
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> L61
            java.lang.String r2 = "app_name"
            android.content.Context r3 = com.pgl.ssdk.z.b()     // Catch: java.lang.Throwable -> L61
            java.lang.String r3 = com.pgl.ssdk.b0.d(r3)     // Catch: java.lang.Throwable -> L61
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> L61
            com.pgl.ssdk.ces.out.PglSSManager r2 = com.pgl.ssdk.ces.out.PglSSManager.getInstance()     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L56
            com.pgl.ssdk.ces.out.PglSSCallBack r2 = r2.getPglCallBack()     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L61
            java.lang.String r3 = "detailed_app_info"
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L61
            r2.reportSoftDecData(r3, r1)     // Catch: java.lang.Throwable -> L61
            monitor-exit(r0)
            return
        L54:
            r1 = move-exception
            goto L5f
        L56:
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L61
            com.pgl.ssdk.u0.a(r1)     // Catch: java.lang.Throwable -> L61
            monitor-exit(r0)
            return
        L5f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            throw r1
        L61:
            monitor-exit(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.f.c():void");
    }

    private static boolean d() {
        int a10 = x0.a(z.b(), "pgl_is_hit", 0);
        u0.a("hitsTimes " + a10);
        if (a10 > 0) {
            return false;
        }
        long currentTimeMillis = (System.currentTimeMillis() / 1000) - b();
        u0.a("runningTime ".concat(String.valueOf(currentTimeMillis)));
        if (currentTimeMillis < f36753a) {
            return false;
        }
        x0.b(z.b(), "pgl_is_hit", 1);
        return e();
    }

    private static boolean e() {
        boolean z10;
        if (f36754b == 100) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            if (((int) ((Math.random() * 100.0d) + 1.0d)) > f36754b) {
                return false;
            }
            return true;
        }
        return z10;
    }

    public static void a(JSONObject jSONObject, String str, List<String> list, boolean z10) {
        if (jSONObject == null || list == null || list.isEmpty()) {
            return;
        }
        if (z10) {
            try {
                jSONObject.put(str + "_size", list.size());
            } catch (JSONException unused) {
                return;
            }
        }
        jSONObject.put(str, n.a(list));
    }

    private static JSONObject a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            if (str.endsWith(".png")) {
                arrayList2.add(str.substring(0, str.lastIndexOf(".png")));
            } else if (str.endsWith(".xml")) {
                arrayList.add(str.substring(0, str.lastIndexOf(".xml")));
            } else {
                arrayList3.add(str);
            }
        }
        a(jSONObject, "xml", arrayList, true);
        a(jSONObject, "png", arrayList2, true);
        a(jSONObject, "other", arrayList3, true);
        return jSONObject;
    }

    public static JSONObject a() throws JSONException {
        String[] strArr;
        Context b10 = z.b();
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (b10 != null) {
            ApplicationInfo applicationInfo = b10.getApplicationInfo();
            String str = applicationInfo.nativeLibraryDir;
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (file.exists() && file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null && listFiles.length > 0) {
                        for (File file2 : listFiles) {
                            arrayList.add(file2.getName());
                        }
                    }
                    if ("arm64".equals(file.getName())) {
                        a(jSONObject2, "v8a", arrayList, false);
                    } else {
                        a(jSONObject2, "v7a", arrayList, false);
                    }
                    if (jSONObject2.length() > 0) {
                        jSONObject.put("lib", jSONObject2);
                    }
                }
            }
            if (!arrayList.isEmpty() || (strArr = applicationInfo.splitPublicSourceDirs) == null) {
                return jSONObject;
            }
            for (String str2 : strArr) {
                if (str2.endsWith("armeabi-v7a.apk") || str2.endsWith("arm64_v8a.apk")) {
                    File file3 = new File(str2);
                    return file3.exists() ? a(file3, false) : jSONObject;
                }
            }
            return jSONObject;
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a9, code lost:
        if (r8 != null) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject a(java.io.File r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.f.a(java.io.File, boolean):org.json.JSONObject");
    }
}
