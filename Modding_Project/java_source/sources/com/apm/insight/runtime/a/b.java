package com.apm.insight.runtime.a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ActivityDataManager.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f7131a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f7132b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7133c = false;

    /* renamed from: d  reason: collision with root package name */
    private static int f7134d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f7135e = false;

    /* renamed from: f  reason: collision with root package name */
    private static long f7136f = -1;

    /* renamed from: z  reason: collision with root package name */
    private static volatile b f7137z;
    private int B;

    /* renamed from: g  reason: collision with root package name */
    private Application f7138g;

    /* renamed from: h  reason: collision with root package name */
    private Context f7139h;

    /* renamed from: n  reason: collision with root package name */
    private String f7145n;

    /* renamed from: o  reason: collision with root package name */
    private long f7146o;

    /* renamed from: p  reason: collision with root package name */
    private String f7147p;

    /* renamed from: q  reason: collision with root package name */
    private long f7148q;

    /* renamed from: r  reason: collision with root package name */
    private String f7149r;

    /* renamed from: s  reason: collision with root package name */
    private long f7150s;

    /* renamed from: t  reason: collision with root package name */
    private String f7151t;

    /* renamed from: u  reason: collision with root package name */
    private long f7152u;

    /* renamed from: v  reason: collision with root package name */
    private String f7153v;

    /* renamed from: w  reason: collision with root package name */
    private long f7154w;

    /* renamed from: i  reason: collision with root package name */
    private List<String> f7140i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private List<Long> f7141j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private List<String> f7142k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private List<Long> f7143l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private LinkedList<a> f7144m = new LinkedList<>();

    /* renamed from: x  reason: collision with root package name */
    private boolean f7155x = false;

    /* renamed from: y  reason: collision with root package name */
    private long f7156y = -1;
    private int A = 50;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityDataManager.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f7158a;

        /* renamed from: b  reason: collision with root package name */
        String f7159b;

        /* renamed from: c  reason: collision with root package name */
        long f7160c;

        a(String str, String str2, long j10) {
            this.f7159b = str2;
            this.f7160c = j10;
            this.f7158a = str;
        }

        public final String toString() {
            return com.apm.insight.l.b.a().format(new Date(this.f7160c)) + " : " + this.f7158a + ' ' + this.f7159b;
        }
    }

    private b(@NonNull Application application) {
        this.f7139h = application;
        this.f7138g = application;
        if (application != null) {
            try {
                this.f7138g.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.apm.insight.runtime.a.b.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        boolean z10;
                        b.this.f7145n = activity.getClass().getName();
                        b.this.f7146o = System.currentTimeMillis();
                        if (bundle != null) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        boolean unused = b.f7132b = z10;
                        boolean unused2 = b.f7133c = true;
                        b.this.f7140i.add(b.this.f7145n);
                        b.this.f7141j.add(Long.valueOf(b.this.f7146o));
                        b bVar = b.this;
                        b.a(bVar, bVar.f7145n, b.this.f7146o, "onCreate");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityDestroyed(Activity activity) {
                        String name = activity.getClass().getName();
                        int indexOf = b.this.f7140i.indexOf(name);
                        if (indexOf >= 0 && indexOf < b.this.f7140i.size()) {
                            b.this.f7140i.remove(indexOf);
                            b.this.f7141j.remove(indexOf);
                        }
                        b.this.f7142k.add(name);
                        long currentTimeMillis = System.currentTimeMillis();
                        b.this.f7143l.add(Long.valueOf(currentTimeMillis));
                        b.a(b.this, name, currentTimeMillis, "onDestroy");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                        b.this.f7151t = activity.getClass().getName();
                        b.this.f7152u = System.currentTimeMillis();
                        b.l(b.this);
                        if (b.this.B == 0) {
                            b.this.f7155x = false;
                            boolean unused = b.f7133c = false;
                            b.this.f7156y = SystemClock.uptimeMillis();
                        } else if (b.this.B < 0) {
                            b.n(b.this);
                            b.this.f7155x = false;
                            boolean unused2 = b.f7133c = false;
                            b.this.f7156y = SystemClock.uptimeMillis();
                        }
                        b bVar = b.this;
                        b.a(bVar, bVar.f7151t, b.this.f7152u, "onPause");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                        b.this.f7149r = activity.getClass().getName();
                        b.this.f7150s = System.currentTimeMillis();
                        b.g(b.this);
                        if (!b.this.f7155x) {
                            if (b.f7131a) {
                                b.k();
                                int unused = b.f7134d = 1;
                                long unused2 = b.f7136f = b.this.f7150s;
                            }
                            if (!b.this.f7149r.equals(b.this.f7151t)) {
                                return;
                            }
                            if (b.f7133c && !b.f7132b) {
                                int unused3 = b.f7134d = 4;
                                long unused4 = b.f7136f = b.this.f7150s;
                                return;
                            } else if (!b.f7133c) {
                                int unused5 = b.f7134d = 3;
                                long unused6 = b.f7136f = b.this.f7150s;
                                return;
                            }
                        }
                        b.this.f7155x = true;
                        b bVar = b.this;
                        b.a(bVar, bVar.f7149r, b.this.f7150s, "onResume");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                        b.this.f7147p = activity.getClass().getName();
                        b.this.f7148q = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f7147p, b.this.f7148q, "onStart");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                        b.this.f7153v = activity.getClass().getName();
                        b.this.f7154w = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f7153v, b.this.f7154w, "onStop");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    static /* synthetic */ int g(b bVar) {
        int i10 = bVar.B;
        bVar.B = i10 + 1;
        return i10;
    }

    static /* synthetic */ int l(b bVar) {
        int i10 = bVar.B;
        bVar.B = i10 - 1;
        return i10;
    }

    static /* synthetic */ int n(b bVar) {
        bVar.B = 0;
        return 0;
    }

    static /* synthetic */ boolean k() {
        f7131a = false;
        return false;
    }

    private JSONArray n() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f7140i;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.f7140i.size(); i10++) {
                try {
                    jSONArray.put(a(this.f7140i.get(i10), this.f7141j.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray o() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f7142k;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.f7142k.size(); i10++) {
                try {
                    jSONArray.put(a(this.f7142k.get(i10), this.f7143l.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    public final JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        if (com.apm.insight.e.w()) {
            try {
                jSONObject.put("last_create_activity", a(this.f7145n, this.f7146o));
                jSONObject.put("last_start_activity", a(this.f7147p, this.f7148q));
                jSONObject.put("last_resume_activity", a(this.f7149r, this.f7150s));
                jSONObject.put("last_pause_activity", a(this.f7151t, this.f7152u));
                jSONObject.put("last_stop_activity", a(this.f7153v, this.f7154w));
                jSONObject.put("alive_activities", n());
                jSONObject.put("finish_activities", o());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    @NonNull
    public final String h() {
        return String.valueOf(this.f7149r);
    }

    public final JSONArray i() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = new ArrayList(this.f7144m).iterator();
        while (it.hasNext()) {
            jSONArray.put(((a) it.next()).toString());
        }
        return jSONArray;
    }

    public final boolean f() {
        return this.f7155x;
    }

    public static long c() {
        return f7136f;
    }

    public static b d() {
        if (f7137z == null) {
            synchronized (b.class) {
                try {
                    if (f7137z == null) {
                        f7137z = new b(com.apm.insight.e.h());
                    }
                } finally {
                }
            }
        }
        return f7137z;
    }

    public final long e() {
        return SystemClock.uptimeMillis() - this.f7156y;
    }

    public static int b() {
        int i10 = f7134d;
        return i10 == 1 ? f7135e ? 2 : 1 : i10;
    }

    public static void a() {
        f7135e = true;
    }

    private static JSONObject a(String str, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put(CrashHianalyticsData.TIME, j10);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    static /* synthetic */ void a(b bVar, String str, long j10, String str2) {
        a aVar;
        if (com.apm.insight.e.w()) {
            try {
                if (bVar.f7144m.size() >= bVar.A) {
                    aVar = bVar.f7144m.poll();
                    if (aVar != null) {
                        bVar.f7144m.add(aVar);
                    }
                } else {
                    aVar = null;
                }
                if (aVar == null) {
                    aVar = new a(str, str2, j10);
                    bVar.f7144m.add(aVar);
                }
                aVar.f7159b = str2;
                aVar.f7158a = str;
                aVar.f7160c = j10;
            } catch (Throwable unused) {
            }
        }
    }
}
