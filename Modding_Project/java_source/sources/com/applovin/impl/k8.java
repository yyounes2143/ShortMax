package com.applovin.impl;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class k8 {

    /* renamed from: a  reason: collision with root package name */
    private static String f8254a;

    /* renamed from: d  reason: collision with root package name */
    private static int f8257d;

    /* renamed from: e  reason: collision with root package name */
    private static String f8258e;

    /* renamed from: f  reason: collision with root package name */
    private static String f8259f;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f8255b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f8256c = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    private static final AtomicBoolean f8260g = new AtomicBoolean();

    static {
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
        if (kVar != null && ((Boolean) kVar.a(v4.f10204a4)).booleanValue() && e()) {
            f8254a = (String) y4.a(x4.L, "", com.applovin.impl.sdk.k.o());
            return;
        }
        f8254a = "";
        y4.b(x4.L, (Object) null, com.applovin.impl.sdk.k.o());
    }

    public static void a(final com.applovin.impl.sdk.k kVar) {
        if (f8256c.getAndSet(true)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.vb
            @Override // java.lang.Runnable
            public final void run() {
                k8.d(com.applovin.impl.sdk.k.this);
            }
        });
    }

    public static String b() {
        return f8259f;
    }

    public static String c() {
        return f8258e;
    }

    public static int d() {
        return f8257d;
    }

    public static void b(com.applovin.impl.sdk.k kVar) {
        if (f8260g.getAndSet(true)) {
            return;
        }
        PackageInfo c10 = c(kVar);
        if (c10 == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("WebViewDataCollector", "Failed to get WebView package info");
                return;
            }
            return;
        }
        f8257d = c10.versionCode;
        f8258e = c10.versionName;
        f8259f = c10.packageName;
    }

    private static PackageInfo c(com.applovin.impl.sdk.k kVar) {
        PackageInfo currentWebViewPackage;
        PackageManager packageManager = com.applovin.impl.sdk.k.o().getPackageManager();
        if (o0.h()) {
            currentWebViewPackage = WebView.getCurrentWebViewPackage();
            return currentWebViewPackage;
        }
        Iterator it = kVar.c(v4.f10294l4).iterator();
        while (it.hasNext()) {
            try {
                return packageManager.getPackageInfo((String) it.next(), 0);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(com.applovin.impl.sdk.k kVar) {
        try {
            synchronized (f8255b) {
                String defaultUserAgent = WebSettings.getDefaultUserAgent(com.applovin.impl.sdk.k.o());
                if (TextUtils.isEmpty(defaultUserAgent)) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().b("WebViewDataCollector", "Collected invalid user agent");
                    }
                    kVar.E().a(c2.N0, "collectedInvalidUserAgent");
                    return;
                }
                f8254a = defaultUserAgent;
                y4.b(x4.L, f8254a, com.applovin.impl.sdk.k.o());
            }
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("WebViewDataCollector", "Failed to collect user agent", th2);
            }
            kVar.E().a("WebViewDataCollector", "collectUserAgent", th2);
        }
    }

    private static boolean e() {
        boolean isValidString;
        synchronized (f8255b) {
            isValidString = StringUtils.isValidString((String) y4.a(x4.L, "", com.applovin.impl.sdk.k.o()));
        }
        return isValidString;
    }

    public static String a() {
        String str;
        synchronized (f8255b) {
            str = f8254a;
        }
        return str;
    }
}
