package com.bytedance.bdtracker;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.l0;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes3.dex */
public class n4 implements r4 {

    /* renamed from: h  reason: collision with root package name */
    public static String f12254h;

    /* renamed from: i  reason: collision with root package name */
    public static String f12255i;

    /* renamed from: j  reason: collision with root package name */
    public static volatile String f12256j;

    /* renamed from: a  reason: collision with root package name */
    public final Context f12257a;

    /* renamed from: b  reason: collision with root package name */
    public v3 f12258b;

    /* renamed from: c  reason: collision with root package name */
    public final t3 f12259c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12260d;

    /* renamed from: e  reason: collision with root package name */
    public final d f12261e;

    /* renamed from: f  reason: collision with root package name */
    public final p1 f12262f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f12263g = Collections.singletonList("DeviceParamsProvider");

    public n4(d dVar, Context context, p1 p1Var, t3 t3Var) {
        String str;
        this.f12261e = dVar;
        this.f12262f = p1Var;
        if (p1Var.f12304c.getLocalTest()) {
            str = "_local";
        } else {
            str = "";
        }
        this.f12260d = str;
        Context applicationContext = context.getApplicationContext();
        this.f12257a = applicationContext;
        m4 m4Var = new m4();
        this.f12259c = t3Var;
        g4 g4Var = new g4(applicationContext, "snssdk_openudid", p1Var.f12304c.getSpName());
        this.f12258b = g4Var;
        g4Var.f12469a = t3Var;
        if (!p1Var.f12304c.getAnonymous()) {
            new Thread(new l4(m4Var)).start();
        }
        a(p1Var.f12304c.getAccount());
    }

    public void a(Account account) {
        t3 t3Var = this.f12259c;
        if (t3Var != null) {
            t3Var.a(account);
        }
    }

    public String b() {
        if (TextUtils.isEmpty(f12256j)) {
            f12256j = this.f12258b.c("", "");
            return f12256j;
        }
        return f12256j;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String c() {
        /*
            r8 = this;
            java.lang.String r0 = com.bytedance.bdtracker.n4.f12254h
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r0 = com.bytedance.bdtracker.n4.f12254h
            return r0
        Lb:
            com.bytedance.bdtracker.p1 r0 = r8.f12262f
            com.bytedance.applog.InitConfig r1 = r0.f12304c
            boolean r1 = r1.isAndroidIdEnabled()
            java.lang.String r2 = "openudid"
            if (r1 == 0) goto L24
            boolean r0 = r0.a(r2)
            if (r0 != 0) goto L24
            android.content.Context r0 = r8.f12257a
            java.lang.String r0 = com.bytedance.applog.util.HardwareUtils.getSecureAndroidId(r0)
            goto L26
        L24:
            java.lang.String r0 = ""
        L26:
            r1 = 0
            boolean r3 = com.bytedance.bdtracker.l0.b.e(r0)     // Catch: java.lang.Throwable -> L3f
            r4 = 0
            if (r3 == 0) goto L41
            java.lang.String r3 = "9774d56d682e549c"
            boolean r3 = r3.equals(r0)     // Catch: java.lang.Throwable -> L3f
            if (r3 == 0) goto L37
            goto L41
        L37:
            com.bytedance.bdtracker.v3 r2 = r8.f12258b     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = r2.d(r4, r0)     // Catch: java.lang.Throwable -> L3f
            goto Lb0
        L3f:
            r2 = move-exception
            goto La3
        L41:
            android.content.Context r3 = r8.f12257a     // Catch: java.lang.Throwable -> L3f
            java.lang.String r5 = "snssdk_openudid"
            android.content.SharedPreferences r3 = com.bytedance.bdtracker.g4.a(r3, r5, r1)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r5 = r3.getString(r2, r4)     // Catch: java.lang.Throwable -> L3f
            boolean r6 = com.bytedance.bdtracker.l0.b.e(r5)     // Catch: java.lang.Throwable -> L3f
            if (r6 != 0) goto L9c
            java.security.SecureRandom r4 = new java.security.SecureRandom     // Catch: java.lang.Throwable -> L3f
            r4.<init>()     // Catch: java.lang.Throwable -> L3f
            java.math.BigInteger r5 = new java.math.BigInteger     // Catch: java.lang.Throwable -> L3f
            r6 = 80
            r5.<init>(r6, r4)     // Catch: java.lang.Throwable -> L3f
            r4 = 16
            java.lang.String r4 = r5.toString(r4)     // Catch: java.lang.Throwable -> L3f
            char r5 = r4.charAt(r1)     // Catch: java.lang.Throwable -> L3f
            r6 = 45
            if (r5 != r6) goto L72
            r5 = 1
            java.lang.String r4 = r4.substring(r5)     // Catch: java.lang.Throwable -> L3f
        L72:
            int r5 = r4.length()     // Catch: java.lang.Throwable -> L3f
            int r5 = 13 - r5
            if (r5 <= 0) goto L90
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3f
            r6.<init>()     // Catch: java.lang.Throwable -> L3f
        L7f:
            if (r5 <= 0) goto L89
            r7 = 70
            r6.append(r7)     // Catch: java.lang.Throwable -> L3f
            int r5 = r5 + (-1)
            goto L7f
        L89:
            r6.append(r4)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> L3f
        L90:
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L3f
            r3.putString(r2, r4)     // Catch: java.lang.Throwable -> L3f
            r3.apply()     // Catch: java.lang.Throwable -> L3f
            r0 = r4
            goto Lb0
        L9c:
            com.bytedance.bdtracker.t3 r2 = r8.f12259c     // Catch: java.lang.Throwable -> L3f
            r2.d(r5, r4)     // Catch: java.lang.Throwable -> L3f
            r0 = r5
            goto Lb0
        La3:
            com.bytedance.bdtracker.d r3 = r8.f12261e
            com.bytedance.applog.log.IAppLogLogger r3 = r3.D
            java.util.List<java.lang.String> r4 = r8.f12263g
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r5 = "getOpenUdid failed"
            r3.error(r4, r5, r2, r1)
        Lb0:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lc3
            java.lang.StringBuilder r0 = com.bytedance.bdtracker.a.a(r0)
            java.lang.String r1 = r8.f12260d
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        Lc3:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lcb
            com.bytedance.bdtracker.n4.f12254h = r0
        Lcb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.n4.c():java.lang.String");
    }

    public void a(String str) {
        this.f12258b.a(str);
        IAppLogLogger iAppLogLogger = this.f12261e.D;
        List<String> list = this.f12263g;
        iAppLogLogger.debug(list, "DeviceParamsProvider#clear clearKey=" + str + " sDeviceId=" + f12256j, new Object[0]);
    }

    public void b(String str) {
        if (!l0.b.a(str) || l0.b.a(str, f12256j)) {
            return;
        }
        f12256j = this.f12258b.c(str, f12256j);
    }

    public String a() {
        if (TextUtils.isEmpty(f12255i)) {
            try {
                SharedPreferences a10 = g4.a(this.f12257a, "snssdk_openudid", 0);
                String string = a10.getString("clientudid", null);
                if (l0.b.e(string)) {
                    this.f12259c.b(string, null);
                } else {
                    string = UUID.randomUUID().toString();
                    SharedPreferences.Editor edit = a10.edit();
                    edit.putString("clientudid", string);
                    edit.apply();
                }
                if (!TextUtils.isEmpty(string)) {
                    string = string + this.f12260d;
                }
                f12255i = string;
                return string;
            } catch (Throwable th2) {
                this.f12261e.D.error(this.f12263g, "getClientUDID failed", th2, new Object[0]);
                return "";
            }
        }
        return f12255i;
    }
}
