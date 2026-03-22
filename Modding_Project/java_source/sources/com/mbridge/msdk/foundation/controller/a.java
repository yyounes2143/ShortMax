package com.mbridge.msdk.foundation.controller;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseMBSDKContext.java */
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: q  reason: collision with root package name */
    public static final String f26682q = com.mbridge.msdk.foundation.controller.c.class.getSimpleName();

    /* renamed from: r  reason: collision with root package name */
    public static HashMap<String, String> f26683r = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    protected String f26685b;

    /* renamed from: c  reason: collision with root package name */
    protected Context f26686c;

    /* renamed from: d  reason: collision with root package name */
    protected String f26687d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<Activity> f26688e;

    /* renamed from: f  reason: collision with root package name */
    private String f26689f;

    /* renamed from: g  reason: collision with root package name */
    private int f26690g;

    /* renamed from: j  reason: collision with root package name */
    private String f26693j;

    /* renamed from: k  reason: collision with root package name */
    private String f26694k;

    /* renamed from: l  reason: collision with root package name */
    private int f26695l;

    /* renamed from: n  reason: collision with root package name */
    private WeakReference<Context> f26697n;

    /* renamed from: o  reason: collision with root package name */
    private JSONObject f26698o;

    /* renamed from: a  reason: collision with root package name */
    private final r f26684a = new r();

    /* renamed from: h  reason: collision with root package name */
    private JSONObject f26691h = new JSONObject();

    /* renamed from: i  reason: collision with root package name */
    private boolean f26692i = false;

    /* renamed from: m  reason: collision with root package name */
    private ConcurrentHashMap<String, String> f26696m = new ConcurrentHashMap<>();

    /* renamed from: p  reason: collision with root package name */
    private int f26699p = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMBSDKContext.java */
    /* renamed from: com.mbridge.msdk.foundation.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0363a implements Runnable {
        RunnableC0363a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.e.a(a.this.f26686c).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMBSDKContext.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.d.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMBSDKContext.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a aVar = a.this;
                aVar.f26685b = (String) x0.a(aVar.f26686c, "sp_appId", "");
            } catch (Throwable th2) {
                p0.b(a.f26682q, th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMBSDKContext.java */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a aVar = a.this;
                aVar.f26693j = (String) x0.a(aVar.f26686c, "sp_appKey", "");
            } catch (Throwable th2) {
                p0.b(a.f26682q, th2.getMessage());
            }
        }
    }

    /* compiled from: BaseMBSDKContext.java */
    /* loaded from: classes5.dex */
    public interface e {
    }

    private void l() {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                Object a10 = x0.a(this.f26686c, MBridgeConstans.SP_GA_ID, "");
                Object a11 = x0.a(this.f26686c, MBridgeConstans.SP_GA_ID_LIMIT, 0);
                if (a10 instanceof String) {
                    String str = (String) a10;
                    if (!TextUtils.isEmpty(str)) {
                        f.a(str);
                    } else {
                        f.d();
                    }
                    if (a11 instanceof Integer) {
                        f.a(((Integer) a11).intValue());
                    }
                }
            }
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
        }
    }

    protected abstract void a(e eVar);

    public void b(int i10) {
        this.f26695l = i10;
    }

    public void c(int i10) {
        this.f26699p = i10;
    }

    public Context d() {
        return this.f26686c;
    }

    public r e() {
        return this.f26684a;
    }

    public Context f() {
        WeakReference<Context> weakReference = this.f26697n;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public int g() {
        return this.f26690g;
    }

    public String h() {
        try {
            if (!TextUtils.isEmpty(this.f26687d)) {
                return this.f26687d;
            }
            Context context = this.f26686c;
            if (context != null) {
                String packageName = context.getPackageName();
                this.f26687d = packageName;
                return packageName;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String i() {
        if (!TextUtils.isEmpty(this.f26694k)) {
            return this.f26694k;
        }
        Context context = this.f26686c;
        if (context != null) {
            return (String) x0.a(context, "sp_wx_appKey", "");
        }
        return null;
    }

    public JSONObject j() {
        return this.f26698o;
    }

    public int k() {
        return this.f26699p;
    }

    public WeakReference<Activity> a() {
        return this.f26688e;
    }

    public void b(e eVar) {
        try {
            l0.C(this.f26686c);
            a(eVar);
            h.a(this.f26686c, this.f26685b);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                try {
                    l0.d(this.f26686c.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled ? 1 : 2);
                } catch (PackageManager.NameNotFoundException unused) {
                    l0.d(0);
                }
            }
            g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null) {
                d10 = h.b().a();
            }
            r e10 = com.mbridge.msdk.foundation.controller.c.m().e();
            if (e10 != null && e10.b() && d10 != null && d10.E() == 1) {
                com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0363a());
            }
            if (e10 == null || !e10.a()) {
                return;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new b());
        } catch (Exception e11) {
            p0.b(f26682q, e11.getMessage());
        }
    }

    public void c(e eVar) {
        if (this.f26692i) {
            return;
        }
        l();
        try {
            JSONObject jSONObject = new JSONObject();
            this.f26698o = jSONObject;
            jSONObject.put("webgl", 0);
        } catch (JSONException e10) {
            p0.b(f26682q, e10.getMessage());
        }
        b(eVar);
    }

    public void d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f26694k = str;
            Context context = this.f26686c;
            if (context != null) {
                x0.b(context, "sp_wx_appKey", str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e(String str) {
        Context context;
        try {
            this.f26685b = str;
            if (TextUtils.isEmpty(str) || (context = this.f26686c) == null) {
                return;
            }
            x0.b(context, "sp_appId", str);
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
        }
    }

    public void f(String str) {
        Context context;
        try {
            this.f26693j = str;
            if (TextUtils.isEmpty(str) || (context = this.f26686c) == null) {
                return;
            }
            x0.b(context, "sp_appKey", str);
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
        }
    }

    public void a(WeakReference<Activity> weakReference) {
        this.f26688e = weakReference;
    }

    public void a(Context context) {
        if (context instanceof Activity) {
            this.f26697n = new WeakReference<>(context);
        }
    }

    public void a(int i10) {
        this.f26690g = i10;
    }

    public BitmapDrawable a(String str, int i10) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.f26696m) == null || !concurrentHashMap.containsKey(str) || !r0.a().a("w_m_r_l", true)) {
            return null;
        }
        String str2 = this.f26696m.get(str);
        BitmapDrawable n10 = u0.n(str2);
        j.a(str, i10, TextUtils.isEmpty(str2) ? 2 : 1, TextUtils.isEmpty(str2) ? "get watermark failed" : n10 != null ? "" : "str to bitmap failed", n10 == null ? 2 : 1, str2);
        return n10;
    }

    public String c() {
        try {
            if (!TextUtils.isEmpty(this.f26693j)) {
                return this.f26693j;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new d());
            return "";
        } catch (Throwable th2) {
            p0.b(f26682q, th2.getMessage());
            return "";
        }
    }

    public void a(JSONObject jSONObject) {
        this.f26698o = jSONObject;
    }

    public void a(String str) {
        try {
            if (this.f26696m != null && !TextUtils.isEmpty(str) && this.f26696m.containsKey(str)) {
                this.f26696m.remove(str);
            }
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
        }
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f26687d = str;
    }

    public void a(String str, JSONObject jSONObject) {
        if (r0.a().a("w_m_r_l", true)) {
            try {
                if (this.f26691h == null) {
                    this.f26691h = jSONObject;
                } else if (jSONObject != null) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        this.f26691h.put(next, jSONObject.get(next));
                    }
                }
                if (this.f26691h.has(MBridgeConstans.EXTRA_KEY_WM)) {
                    if (this.f26696m == null) {
                        this.f26696m = new ConcurrentHashMap<>();
                    }
                    this.f26696m.put(str, this.f26691h.getString(MBridgeConstans.EXTRA_KEY_WM));
                }
            } catch (Exception e10) {
                p0.b(f26682q, e10.getMessage());
            }
        }
    }

    public String b() {
        try {
            if (!TextUtils.isEmpty(this.f26685b)) {
                return this.f26685b;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            return "";
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
            return "";
        }
    }

    public void b(String str) {
        Context context;
        try {
            this.f26689f = str;
            if (TextUtils.isEmpty(str) || (context = this.f26686c) == null) {
                return;
            }
            x0.b(context, "applicationIds", str);
        } catch (Exception e10) {
            p0.b(f26682q, e10.getMessage());
        }
    }

    public void b(Context context) {
        this.f26686c = context;
    }
}
