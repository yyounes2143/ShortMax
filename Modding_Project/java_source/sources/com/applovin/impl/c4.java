package com.applovin.impl;

import android.view.View;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class c4 {

    /* renamed from: a  reason: collision with root package name */
    protected final AppLovinAdBase f7695a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f7696b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.applovin.impl.sdk.o f7697c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f7698d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f7699e;

    /* renamed from: f  reason: collision with root package name */
    protected AdSession f7700f;

    /* renamed from: g  reason: collision with root package name */
    protected AdEvents f7701g;

    public c4(AppLovinAdBase appLovinAdBase) {
        this.f7695a = appLovinAdBase;
        this.f7696b = appLovinAdBase.getSdk();
        this.f7697c = appLovinAdBase.getSdk().O();
        String str = "AdEventTracker:" + appLovinAdBase.getAdIdNumber();
        if (StringUtils.isValidString(appLovinAdBase.getDspName())) {
            str = str + ":" + appLovinAdBase.getDspName();
        }
        this.f7698d = str;
    }

    protected abstract AdSessionConfiguration a();

    protected abstract AdSessionContext a(WebView webView);

    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.d9
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        AdSessionContext a10;
        if (!this.f7695a.isOpenMeasurementEnabled()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.d(this.f7698d, "Skip starting session - Open Measurement disabled");
            }
        } else if (this.f7700f != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7697c;
                String str = this.f7698d;
                oVar.k(str, "Attempting to start session again for ad: " + this.f7695a);
            }
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.a(this.f7698d, "Starting session");
            }
            AdSessionConfiguration a11 = a();
            if (a11 == null || (a10 = a(webView)) == null) {
                return;
            }
            try {
                AdSession createAdSession = AdSession.createAdSession(a11, a10);
                this.f7700f = createAdSession;
                try {
                    this.f7701g = AdEvents.createAdEvents(createAdSession);
                    a(this.f7700f);
                    this.f7700f.start();
                    this.f7699e = true;
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7697c.a(this.f7698d, "Session started");
                    }
                } catch (Throwable th2) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7697c.a(this.f7698d, "Failed to create ad events", th2);
                    }
                }
            } catch (Throwable th3) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7697c.a(this.f7698d, "Failed to create session", th3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f7701g.loaded();
    }

    protected void a(AdSession adSession) {
    }

    public void c(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x8
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.b(webView);
            }
        });
    }

    public void e() {
        c((WebView) null);
    }

    public void f() {
        b("stop session", new Runnable() { // from class: com.applovin.impl.b9
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.b();
            }
        });
    }

    public void g() {
        b("track impression event", new Runnable() { // from class: com.applovin.impl.c9
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.f7701g.impressionOccurred();
    }

    public void a(View view) {
        b(view, Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, List list) {
        this.f7700f.registerAdView(view);
        this.f7700f.removeAllFriendlyObstructions();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            e4 e4Var = (e4) it.next();
            if (e4Var.c() != null) {
                try {
                    this.f7700f.addFriendlyObstruction(e4Var.c(), e4Var.b(), e4Var.a());
                } catch (Throwable th2) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f7697c;
                        String str = this.f7698d;
                        oVar.a(str, "Failed to add friendly obstruction (" + e4Var + ")", th2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        this.f7700f.error(ErrorType.VIDEO, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (this.f7699e) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7697c;
                    String str2 = this.f7698d;
                    oVar.a(str2, "Running operation: " + str);
                }
                runnable.run();
            }
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7697c;
                String str3 = this.f7698d;
                oVar2.a(str3, "Failed to run operation: " + str, th2);
            }
        }
    }

    public void b(final View view, final List list) {
        b("update main view: " + view, new Runnable() { // from class: com.applovin.impl.z8
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.a(view, list);
            }
        });
    }

    public void b(final String str) {
        b("track error", new Runnable() { // from class: com.applovin.impl.y8
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.f7699e = false;
        this.f7700f.finish();
        this.f7700f = null;
        this.f7701g = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.a9
            @Override // java.lang.Runnable
            public final void run() {
                c4.this.a(str, runnable);
            }
        });
    }
}
