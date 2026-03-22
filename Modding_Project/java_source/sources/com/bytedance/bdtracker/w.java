package com.bytedance.bdtracker;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class w implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static final k0 f12479a = new k0(null, "@APPLOG_APP_USE");

    /* renamed from: b  reason: collision with root package name */
    public static boolean f12480b = false;

    /* renamed from: c  reason: collision with root package name */
    public static int f12481c;

    /* renamed from: d  reason: collision with root package name */
    public static e4 f12482d;

    /* renamed from: e  reason: collision with root package name */
    public static e4 f12483e;

    /* renamed from: f  reason: collision with root package name */
    public static long f12484f;

    /* renamed from: g  reason: collision with root package name */
    public static String f12485g;

    /* renamed from: h  reason: collision with root package name */
    public static Object f12486h;

    /* renamed from: i  reason: collision with root package name */
    public static long f12487i;

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Integer, List<e4>> f12488j;

    /* renamed from: k  reason: collision with root package name */
    public static final List<WeakReference<Object>> f12489k;

    /* renamed from: l  reason: collision with root package name */
    public static e4 f12490l;

    /* renamed from: m  reason: collision with root package name */
    public static final HashSet<Integer> f12491m;

    /* renamed from: n  reason: collision with root package name */
    public static volatile w f12492n;

    static {
        Arrays.asList("android.arch.lifecycle.ReportFragment", "androidx.lifecycle.ReportFragment");
        Collections.singletonList("com.bumptech.glide.manager.SupportRequestManagerFragment");
        f12481c = 0;
        f12488j = new HashMap();
        f12489k = new ArrayList();
        f12491m = new HashSet<>(8);
        f12492n = null;
    }

    public static e4 a() {
        e4 e4Var = f12482d;
        e4 e4Var2 = f12483e;
        if (e4Var2 != null) {
            return e4Var2;
        }
        if (e4Var != null) {
            return e4Var;
        }
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        f12491m.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        f12491m.remove(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        f12479a.a(currentTimeMillis);
        f12480b = false;
        IAppLogLogger global = LoggerImpl.global();
        if (activity != null) {
            str = activity.getClass().getName();
        } else {
            str = "";
        }
        global.debug("onActivityPaused:{}", str);
        if (f12483e != null) {
            Object obj = f12486h;
            long currentTimeMillis2 = System.currentTimeMillis();
            f12487i = currentTimeMillis2;
            a(true, f12483e, currentTimeMillis2);
            f12483e = null;
            f12486h = null;
            if (obj != null) {
                Iterator<WeakReference<Object>> it = f12489k.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<Object> next = it.next();
                    if (next != null && next.get() == obj) {
                        it.remove();
                        break;
                    }
                }
            }
        }
        e4 e4Var = f12482d;
        if (e4Var != null) {
            f12485g = e4Var.f11996u;
            f12484f = currentTimeMillis;
            a(false, e4Var, currentTimeMillis);
            f12482d = null;
            if (activity != null) {
                activity.isChild();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        long currentTimeMillis = System.currentTimeMillis();
        f12479a.c(currentTimeMillis);
        f12480b = true;
        String c10 = v4.c(activity);
        LoggerImpl.global().debug("onActivityResumed:{} {}", c10, activity.getClass().getName());
        e4 a10 = a(activity.getClass(), false, activity.getClass().getName(), "", c10, v4.b(activity), currentTimeMillis, v4.d(activity));
        f12482d = a10;
        a10.A = !f12491m.remove(Integer.valueOf(activity.hashCode())) ? 1 : 0;
        activity.isChild();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        f12481c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (f12485g != null) {
            int i10 = f12481c - 1;
            f12481c = i10;
            if (i10 <= 0) {
                f12485g = null;
                f12487i = 0L;
                f12484f = 0L;
                b.a(new c());
            }
        }
    }

    public static synchronized w a(Application application) {
        w wVar;
        synchronized (w.class) {
            try {
                if (f12492n == null) {
                    f12492n = new w();
                    application.registerActivityLifecycleCallbacks(f12492n);
                }
                wVar = f12492n;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return wVar;
    }

    public void a(Activity activity, int i10) {
        e4 a10 = a(activity.getClass(), false, activity.getClass().getName(), "", v4.c(activity), v4.b(activity), System.currentTimeMillis(), v4.d(activity));
        f12482d = a10;
        a10.A = !f12491m.remove(Integer.valueOf(i10)) ? 1 : 0;
    }

    public static e4 a(boolean z10, e4 e4Var, long j10) {
        e4 e4Var2 = (e4) e4Var.m4626clone();
        e4Var2.a(j10);
        long j11 = j10 - e4Var.f12446c;
        if (j11 <= 0) {
            j11 = 1000;
        }
        e4Var2.f11994s = j11;
        e4Var2.D = z10;
        b.a(e4Var2, new v(e4Var2));
        b.a(new t(e4Var2), new u());
        return e4Var2;
    }

    public static e4 a(Class<?> cls, boolean z10, String str, String str2, String str3, String str4, long j10, JSONObject jSONObject) {
        e4 e4Var = new e4();
        e4Var.E = cls;
        if (TextUtils.isEmpty(str2)) {
            e4Var.f11996u = str;
        } else {
            e4Var.f11996u = str + ":" + str2;
        }
        e4Var.a(j10);
        e4Var.f12001z = j10;
        e4Var.f11994s = -1L;
        e4 e4Var2 = f12490l;
        e4Var.f11995t = e4Var2 != null ? e4Var2.f11996u : "";
        if (str3 == null) {
            str3 = "";
        }
        e4Var.f11997v = str3;
        e4Var.f11998w = e4Var2 != null ? e4Var2.f11997v : "";
        if (str4 == null) {
            str4 = "";
        }
        e4Var.f11999x = str4;
        e4Var.f12000y = e4Var2 != null ? e4Var2.f11999x : "";
        e4Var.f12458o = jSONObject;
        e4Var.D = z10;
        b.a(e4Var, new v(e4Var));
        f12490l = e4Var;
        return e4Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
