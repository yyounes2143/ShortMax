package com.mbridge.msdk.setting;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.f0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.x0;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SettingManager.java */
/* loaded from: classes6.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final String f29017a = "h";

    /* renamed from: b  reason: collision with root package name */
    private static volatile h f29018b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile g f29019c;

    /* renamed from: d  reason: collision with root package name */
    private static HashMap<String, l> f29020d = new HashMap<>();

    private h() {
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r5, java.lang.String r6) {
        /*
            com.mbridge.msdk.foundation.controller.d r0 = com.mbridge.msdk.foundation.controller.d.a()
            boolean r0 = r0.e()
            java.lang.String r1 = "mbridge"
            r2 = 0
            if (r0 == 0) goto L1d
            com.mbridge.msdk.foundation.tools.FastKV$Builder r0 = new com.mbridge.msdk.foundation.tools.FastKV$Builder     // Catch: java.lang.Exception -> L1d
            com.mbridge.msdk.foundation.same.directory.c r3 = com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG     // Catch: java.lang.Exception -> L1d
            java.lang.String r3 = com.mbridge.msdk.foundation.same.directory.e.b(r3)     // Catch: java.lang.Exception -> L1d
            r0.<init>(r3, r1)     // Catch: java.lang.Exception -> L1d
            com.mbridge.msdk.foundation.tools.FastKV r0 = r0.build()     // Catch: java.lang.Exception -> L1d
            goto L1e
        L1d:
            r0 = r2
        L1e:
            java.lang.String r3 = "_"
            if (r0 == 0) goto L66
            java.util.Map r2 = r0.getAll()     // Catch: java.lang.Exception -> L26
        L26:
            if (r2 == 0) goto Lac
            java.util.Set r5 = r2.keySet()     // Catch: java.lang.Exception -> L61
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Exception -> L61
        L30:
            boolean r0 = r5.hasNext()     // Catch: java.lang.Exception -> L61
            if (r0 == 0) goto Lac
            java.lang.Object r0 = r5.next()     // Catch: java.lang.Exception -> L61
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L61
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L61
            r1.<init>()     // Catch: java.lang.Exception -> L61
            r1.append(r6)     // Catch: java.lang.Exception -> L61
            r1.append(r3)     // Catch: java.lang.Exception -> L61
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L61
            boolean r1 = r0.startsWith(r1)     // Catch: java.lang.Exception -> L61
            if (r1 == 0) goto L30
            java.util.HashMap<java.lang.String, com.mbridge.msdk.setting.l> r1 = com.mbridge.msdk.setting.h.f29020d     // Catch: java.lang.Exception -> L61
            java.lang.Object r4 = r2.get(r0)     // Catch: java.lang.Exception -> L61
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> L61
            com.mbridge.msdk.setting.l r4 = com.mbridge.msdk.setting.l.l(r4)     // Catch: java.lang.Exception -> L61
            r1.put(r0, r4)     // Catch: java.lang.Exception -> L61
            goto L30
        L61:
            r5 = move-exception
            r5.printStackTrace()
            goto Lac
        L66:
            r0 = 0
            android.content.SharedPreferences r5 = r5.getSharedPreferences(r1, r0)     // Catch: java.lang.Exception -> La8
            java.util.Map r5 = r5.getAll()     // Catch: java.lang.Exception -> La8
            java.util.Set r0 = r5.keySet()     // Catch: java.lang.Exception -> La8
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> La8
        L77:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> La8
            if (r1 == 0) goto Lac
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> La8
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> La8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La8
            r2.<init>()     // Catch: java.lang.Exception -> La8
            r2.append(r6)     // Catch: java.lang.Exception -> La8
            r2.append(r3)     // Catch: java.lang.Exception -> La8
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> La8
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Exception -> La8
            if (r2 == 0) goto L77
            java.util.HashMap<java.lang.String, com.mbridge.msdk.setting.l> r2 = com.mbridge.msdk.setting.h.f29020d     // Catch: java.lang.Exception -> La8
            java.lang.Object r4 = r5.get(r1)     // Catch: java.lang.Exception -> La8
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> La8
            com.mbridge.msdk.setting.l r4 = com.mbridge.msdk.setting.l.l(r4)     // Catch: java.lang.Exception -> La8
            r2.put(r1, r4)     // Catch: java.lang.Exception -> La8
            goto L77
        La8:
            r5 = move-exception
            r5.printStackTrace()
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.setting.h.a(android.content.Context, java.lang.String):void");
    }

    public static h b() {
        if (f29018b == null) {
            synchronized (h.class) {
                try {
                    if (f29018b == null) {
                        f29018b = new h();
                    }
                } finally {
                }
            }
        }
        return f29018b;
    }

    public g c() {
        if (f29019c != null) {
            return f29019c;
        }
        return a();
    }

    public g d(String str) {
        if (f29019c == null) {
            try {
                String a10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
                if (!TextUtils.isEmpty(a10)) {
                    JSONObject jSONObject = new JSONObject(a10);
                    if (jSONObject.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                        jSONObject.remove(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    }
                    if (jSONObject.has("c")) {
                        jSONObject.remove("c");
                    }
                    f29019c = g.C(jSONObject.toString());
                    if (f29019c != null) {
                        f29019c.K0();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return f29019c;
    }

    public l e(String str, String str2) {
        l b10 = b(str, str2);
        if (b10 != null && b10.L() == 0) {
            b10.d(1);
        }
        return b10;
    }

    public String f(String str, String str2) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str + "_" + str2);
    }

    public boolean g(String str, String str2) {
        g d10 = d(str2);
        if (f(str2) && a(str2, 1, str)) {
            new j().b(com.mbridge.msdk.foundation.controller.c.m().d(), str2, com.mbridge.msdk.foundation.controller.c.m().c());
        }
        l e10 = e(str2, str);
        if (d10 != null && e10 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            long o10 = e10.o() + (d10.q0() * 1000);
            if (o10 > currentTimeMillis) {
                String str3 = f29017a;
                p0.c(str3, "unit setting  nexttime is not ready  [settingNextRequestTime= " + o10 + " currentTime = " + currentTimeMillis + "]");
                return false;
            }
        }
        p0.c(f29017a, "unit setting timeout or not exists");
        return true;
    }

    public void h(String str) {
        try {
            String e10 = e(str);
            if (TextUtils.isEmpty(e10)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(e10);
            jSONObject.put("current_time", System.currentTimeMillis());
            h(str, jSONObject.toString());
        } catch (Throwable th2) {
            p0.b(f29017a, th2.getMessage());
        }
    }

    public void i(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a b10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
        b10.a("ivreward_" + str, str2);
    }

    public void j(String str, String str2) {
        try {
            com.mbridge.msdk.foundation.buffer.sharedperference.a b10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
            String a10 = b10.a(str + "_" + str2);
            if (!TextUtils.isEmpty(a10)) {
                JSONObject jSONObject = new JSONObject(a10);
                jSONObject.put("current_time", System.currentTimeMillis());
                a(str, str2, jSONObject.toString());
            }
        } catch (Throwable th2) {
            p0.b(f29017a, th2.getMessage());
        }
    }

    public boolean f(String str) {
        g d10 = d(str);
        if (d10 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            long w10 = d10.w() + (d10.A() * 1000);
            if (w10 > currentTimeMillis) {
                String str2 = f29017a;
                p0.c(str2, "app setting nexttime is not ready  [settingNextRequestTime= " + w10 + " currentTime = " + currentTimeMillis + "]");
                return false;
            }
        }
        p0.c(f29017a, "app setting timeout or not exists");
        return true;
    }

    public String c(String str) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a b10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
        return b10.a("ivreward_" + str);
    }

    public String e(String str) {
        if (str == null) {
            return "";
        }
        try {
            String a10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
            return a10 == null ? "" : a10;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return "";
        }
    }

    public l c(String str, String str2) {
        l a10 = a(str, str2);
        return a10 == null ? l.N() : a10;
    }

    public g b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return a();
            }
            g d10 = d(str);
            return d10 == null ? a() : d10;
        } catch (Exception unused) {
            return a();
        }
    }

    public void h(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str, str2);
        f29019c = g.C(str2);
        if (f29019c != null) {
            f29019c.K0();
        }
        i.a(f29019c);
        f0.a().a(f29019c.Q());
    }

    public void g(String str) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a b10 = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();
        b10.c("ivreward_" + str);
    }

    private l b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = com.mbridge.msdk.foundation.controller.c.m().b();
        }
        String str3 = str + "_" + str2;
        if (f29020d.containsKey(str3)) {
            return f29020d.get(str3);
        }
        l lVar = null;
        try {
            lVar = l.l(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
            f29020d.put(str3, lVar);
            return lVar;
        } catch (Exception e10) {
            l lVar2 = lVar;
            e10.printStackTrace();
            return lVar2;
        }
    }

    public l d(String str, String str2) {
        l e10 = e(str, str2);
        return e10 == null ? l.N() : e10;
    }

    public void a(String str) {
        i.a(str, this);
    }

    public g a() {
        return i.a();
    }

    public l a(String str, String str2) {
        return b(str, str2);
    }

    public boolean a(String str, int i10, String str2) {
        try {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            String str3 = str + "_" + i10 + "_" + str2;
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = 0;
            long longValue = ((Long) x0.a(d10, str3, 0L)).longValue();
            g d11 = d(str);
            if (d11 == null) {
                d11 = b().a();
            } else {
                j10 = longValue;
            }
            if (j10 + (d11.l0() * 1000) > currentTimeMillis) {
                return false;
            }
            x0.b(d10, str3, Long.valueOf(currentTimeMillis));
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return jSONObject2;
        }
        if (jSONObject2 != null && jSONObject2.length() != 0) {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    if ("unitSetting".equals(next) && jSONObject.has("unitSetting")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("unitSetting");
                        jSONArray.put(0, a((JSONObject) jSONArray.get(0), (JSONObject) jSONObject2.getJSONArray("unitSetting").get(0)));
                        jSONObject.put(next, jSONArray);
                    } else {
                        jSONObject.put(next, jSONObject2.opt(next));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return jSONObject;
    }

    public void a(String str, String str2, String str3) {
        String str4 = str + "_" + str2;
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str4, str3);
        f29020d.put(str4, l.l(str3));
    }
}
