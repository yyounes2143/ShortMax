package com.apm.insight;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.apm.insight.runtime.ConfigManager;
import com.apm.insight.runtime.g;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: NpthBus.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static Context f6848a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Application f6849b = null;

    /* renamed from: c  reason: collision with root package name */
    private static long f6850c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static String f6851d = "default";

    /* renamed from: e  reason: collision with root package name */
    private static boolean f6852e = false;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f  reason: collision with root package name */
    private static com.apm.insight.nativecrash.b f6853f;

    /* renamed from: i  reason: collision with root package name */
    private static volatile ConcurrentHashMap<Integer, String> f6856i;

    /* renamed from: n  reason: collision with root package name */
    private static volatile String f6861n;

    /* renamed from: g  reason: collision with root package name */
    private static ConfigManager f6854g = new ConfigManager();

    /* renamed from: h  reason: collision with root package name */
    private static a f6855h = new a();

    /* renamed from: j  reason: collision with root package name */
    private static g f6857j = null;

    /* renamed from: k  reason: collision with root package name */
    private static volatile String f6858k = null;

    /* renamed from: l  reason: collision with root package name */
    private static Object f6859l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private static volatile int f6860m = 0;

    /* renamed from: o  reason: collision with root package name */
    private static int f6862o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f6863p = true;

    /* renamed from: q  reason: collision with root package name */
    private static boolean f6864q = true;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f6865r = false;

    /* renamed from: s  reason: collision with root package name */
    private static boolean f6866s = true;

    /* renamed from: t  reason: collision with root package name */
    private static boolean f6867t = true;

    /* renamed from: u  reason: collision with root package name */
    private static boolean f6868u = true;

    public static com.apm.insight.nativecrash.b a() {
        if (f6853f == null) {
            f6853f = g.a(f6848a);
        }
        return f6853f;
    }

    public static a b() {
        return f6855h;
    }

    public static g c() {
        if (f6857j == null) {
            synchronized (e.class) {
                f6857j = new g();
            }
        }
        return f6857j;
    }

    public static void d(boolean z10) {
        f6866s = z10;
    }

    public static String e() {
        return f() + '_' + Long.toHexString(new Random().nextLong()) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
    }

    public static String f() {
        if (f6858k == null) {
            synchronized (f6859l) {
                try {
                    if (f6858k == null) {
                        f6858k = Long.toHexString(new Random().nextLong()) + "U";
                    }
                } finally {
                }
            }
        }
        return f6858k;
    }

    public static Context g() {
        return f6848a;
    }

    public static Application h() {
        return f6849b;
    }

    public static ConfigManager i() {
        return f6854g;
    }

    public static long j() {
        return f6850c;
    }

    public static String k() {
        return f6851d;
    }

    public static void l() {
        f6862o = 1;
    }

    public static int m() {
        return f6862o;
    }

    public static boolean n() {
        return f6852e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o() {
        f6852e = true;
    }

    public static ConcurrentHashMap<Integer, String> p() {
        return f6856i;
    }

    public static int q() {
        return f6860m;
    }

    public static String r() {
        return f6861n;
    }

    public static boolean s() {
        return f6863p;
    }

    public static boolean t() {
        return f6864q;
    }

    public static boolean u() {
        return f6865r;
    }

    public static boolean v() {
        return f6866s;
    }

    public static boolean w() {
        return f6868u;
    }

    public static boolean x() {
        return f6867t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i10, String str) {
        f6860m = i10;
        f6861n = str;
    }

    public static boolean d() {
        String valueOf;
        if (f6854g.isDebugMode()) {
            Object obj = a().a().get(AppsFlyerProperties.CHANNEL);
            if (obj == null) {
                valueOf = "unknown";
            } else {
                valueOf = String.valueOf(obj);
            }
            return valueOf.contains("local_test");
        }
        return false;
    }

    public static void e(boolean z10) {
        f6868u = z10;
    }

    public static void a(com.apm.insight.nativecrash.b bVar) {
        f6853f = bVar;
    }

    public static void b(boolean z10) {
        f6864q = z10;
    }

    public static void a(Application application) {
        if (application != null) {
            f6849b = application;
        }
    }

    public static void a(Application application, Context context) {
        if (f6849b == null) {
            f6850c = System.currentTimeMillis();
            f6848a = context;
            f6849b = application;
            f6858k = Long.toHexString(new Random().nextLong()) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
        }
    }

    public static void c(boolean z10) {
        f6865r = z10;
    }

    public static void f(boolean z10) {
        f6867t = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Application application, Context context, ICommonParams iCommonParams) {
        a(application, context);
        f6853f = new com.apm.insight.nativecrash.b(f6848a, iCommonParams, a());
    }

    public static String a(long j10, CrashType crashType, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j10);
        sb2.append("_");
        sb2.append(crashType.getName());
        sb2.append('_');
        sb2.append(f());
        sb2.append('_');
        sb2.append(z10 ? "oom_" : "normal_");
        sb2.append(f6850c);
        sb2.append('_');
        sb2.append(z11 ? "ignore_" : "normal_");
        sb2.append(Long.toHexString(new Random().nextLong()));
        sb2.append(RequestConfiguration.MAX_AD_CONTENT_RATING_G);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        f6851d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i10, String str) {
        if (f6856i == null) {
            synchronized (e.class) {
                try {
                    if (f6856i == null) {
                        f6856i = new ConcurrentHashMap<>();
                    }
                } finally {
                }
            }
        }
        f6856i.put(Integer.valueOf(i10), str);
    }

    public static void a(boolean z10) {
        f6863p = z10;
    }
}
