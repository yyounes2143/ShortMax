package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.k;
import com.applovin.impl.b2;
import com.applovin.impl.b6;
import com.applovin.impl.b8;
import com.applovin.impl.c2;
import com.applovin.impl.c4;
import com.applovin.impl.e2;
import com.applovin.impl.e4;
import com.applovin.impl.k2;
import com.applovin.impl.k7;
import com.applovin.impl.l8;
import com.applovin.impl.m1;
import com.applovin.impl.p6;
import com.applovin.impl.q2;
import com.applovin.impl.r4;
import com.applovin.impl.s2;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.ad.b;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.x4;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a implements AppLovinCommunicatorSubscriber, AppLovinBroadcastManager.Receiver {
    private volatile AppLovinAdLoadListener A;
    private volatile AppLovinAdDisplayListener B;
    private volatile AppLovinAdViewEventListener C;
    private volatile AppLovinAdClickListener D;

    /* renamed from: a  reason: collision with root package name */
    private Context f7359a;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f7360b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.impl.sdk.k f7361c;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAdServiceImpl f7362d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.o f7363e;

    /* renamed from: f  reason: collision with root package name */
    private AppLovinCommunicator f7364f;

    /* renamed from: g  reason: collision with root package name */
    private b f7365g;

    /* renamed from: i  reason: collision with root package name */
    private AppLovinAdSize f7367i;

    /* renamed from: j  reason: collision with root package name */
    private String f7368j;

    /* renamed from: k  reason: collision with root package name */
    private CustomTabsSession f7369k;

    /* renamed from: l  reason: collision with root package name */
    private com.applovin.impl.adview.c f7370l;

    /* renamed from: m  reason: collision with root package name */
    private e f7371m;

    /* renamed from: n  reason: collision with root package name */
    private com.applovin.impl.adview.b f7372n;

    /* renamed from: o  reason: collision with root package name */
    private WebView f7373o;

    /* renamed from: p  reason: collision with root package name */
    private k f7374p;

    /* renamed from: q  reason: collision with root package name */
    private Runnable f7375q;

    /* renamed from: r  reason: collision with root package name */
    private Runnable f7376r;

    /* renamed from: h  reason: collision with root package name */
    private final Map f7366h = Collections.synchronizedMap(new HashMap());

    /* renamed from: s  reason: collision with root package name */
    private volatile com.applovin.impl.sdk.ad.b f7377s = null;

    /* renamed from: t  reason: collision with root package name */
    private volatile AppLovinAd f7378t = null;

    /* renamed from: u  reason: collision with root package name */
    private f f7379u = null;

    /* renamed from: v  reason: collision with root package name */
    private f f7380v = null;

    /* renamed from: w  reason: collision with root package name */
    private final AtomicReference f7381w = new AtomicReference();

    /* renamed from: x  reason: collision with root package name */
    private final AtomicBoolean f7382x = new AtomicBoolean();

    /* renamed from: y  reason: collision with root package name */
    private volatile boolean f7383y = false;

    /* renamed from: z  reason: collision with root package name */
    private volatile boolean f7384z = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.adview.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0103a extends r4 {
        C0103a() {
        }

        @Override // com.applovin.impl.r4
        protected Map a() {
            return CollectionUtils.hashMap("name", "AdViewController:GAWebView");
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f7372n != null) {
                a.this.f7372n.setVisibility(8);
            }
        }

        /* synthetic */ c(a aVar, C0103a c0103a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: com.applovin.impl.adview.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0104a implements k.a {
            C0104a() {
            }

            @Override // com.applovin.impl.adview.k.a
            public void a() {
                a.this.f7372n.addView(a.this.f7374p, new ViewGroup.LayoutParams(-1, -1));
            }

            @Override // com.applovin.impl.adview.k.a
            public void onFailure() {
                com.applovin.impl.sdk.o unused = a.this.f7363e;
                if (com.applovin.impl.sdk.o.a()) {
                    a.this.f7363e.b("AppLovinAdView", "Watermark failed to render.");
                }
            }
        }

        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f7377s != null) {
                if (a.this.f7372n != null) {
                    a.this.v();
                    com.applovin.impl.sdk.o unused = a.this.f7363e;
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = a.this.f7363e;
                        oVar.a("AppLovinAdView", "Rendering advertisement ad for #" + a.this.f7377s.getAdIdNumber() + "...");
                    }
                    a.b(a.this.f7372n, a.this.f7377s.getSize());
                    if (a.this.f7374p != null) {
                        b8.c(a.this.f7374p);
                        a.this.f7374p = null;
                    }
                    b2 b2Var = new b2(a.this.f7366h, a.this.f7361c);
                    if (b2Var.c()) {
                        a.this.f7374p = new k(b2Var, a.this.f7359a);
                        a.this.f7374p.a(new C0104a());
                    }
                    a.this.f7372n.setAdHtmlLoaded(false);
                    a.this.f7372n.a(a.this.f7377s);
                    if (a.this.f7377s.getSize() != AppLovinAdSize.INTERSTITIAL && !a.this.f7384z) {
                        a.this.f7377s.setHasShown(true);
                        return;
                    }
                    return;
                }
                com.applovin.impl.sdk.o.h("AppLovinAdView", "Unable to render advertisement for ad #" + a.this.f7377s.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                q2.a(a.this.C, a.this.f7377s, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "renderTask");
                CollectionUtils.putStringIfValid("error_message", "Ad view failed to render due to null adView", hashMap);
                a.this.f7361c.g().a(c2.f7666s, a.this.f7377s, hashMap);
            }
        }

        /* synthetic */ d(a aVar, C0103a c0103a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class e implements AppLovinAdLoadListener {

        /* renamed from: a  reason: collision with root package name */
        private final a f7389a;

        e(a aVar, com.applovin.impl.sdk.k kVar) {
            if (aVar != null) {
                if (kVar != null) {
                    this.f7389a = aVar;
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No view specified");
        }

        private a a() {
            return this.f7389a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            a a10 = a();
            if (a10 != null) {
                a10.b(appLovinAd);
            } else {
                com.applovin.impl.sdk.o.h("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i10) {
            a a10 = a();
            if (a10 != null) {
                a10.b(i10);
            }
        }
    }

    private void E() {
        if (this.f7363e != null && com.applovin.impl.sdk.o.a() && com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", "Destroying...");
        }
        l8.b(this.f7372n);
        this.f7372n = null;
        l8.b(this.f7373o);
        this.f7373o = null;
        this.f7369k = null;
        this.A = null;
        this.B = null;
        this.D = null;
        this.C = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.f7384z = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        com.applovin.impl.sdk.ad.b bVar = this.f7377s;
        s2 s2Var = new s2();
        s2Var.a().a(bVar).a(i());
        if (!k7.a(bVar.getSize())) {
            s2Var.a().a("Fullscreen Ad Properties").b(bVar);
        }
        s2Var.a(this.f7361c);
        s2Var.a();
        if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", s2Var.toString());
        }
    }

    private void x() {
        if (!this.f7377s.c1()) {
            return;
        }
        int c10 = this.f7361c.q().c();
        if (com.applovin.impl.sdk.i.a(c10)) {
            this.f7372n.a("javascript:al_muteSwitchOn();");
        } else if (c10 == 2) {
            this.f7372n.a("javascript:al_muteSwitchOff();");
        }
    }

    private void y() {
        if (!k7.a(this.f7367i)) {
            return;
        }
        if (((Boolean) this.f7361c.a(v4.C1)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
        }
        if (((Boolean) this.f7361c.a(v4.D1)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_failure"));
        if (((Boolean) this.f7361c.a(v4.E1)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
        }
        if (((Boolean) this.f7361c.a(v4.F1)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
        }
    }

    public void A() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", "AdView fully watched...");
        }
        b bVar = this.f7365g;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public void B() {
        y();
        if (this.f7377s != null && this.f7377s.B0()) {
            com.applovin.impl.g.a(this.f7372n, this.f7361c);
        }
        b("javascript:al_onAttachedToWindow();");
    }

    public void C() {
        if (!this.f7383y) {
            return;
        }
        if (this.f7377s == null || !this.f7377s.m1()) {
            q2.b(this.B, this.f7377s);
        }
        if (this.f7377s != null && this.f7377s.isOpenMeasurementEnabled() && k7.a(this.f7377s.getSize())) {
            this.f7377s.getAdEventTracker().f();
        }
        if (this.f7372n != null && this.f7379u != null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7363e.a("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
            }
            c();
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
        }
        b("javascript:al_onDetachedFromWindow();");
    }

    public void D() {
        if (this.f7383y && !this.f7384z) {
            this.f7384z = true;
        }
    }

    public void F() {
        if (!this.f7383y) {
            return;
        }
        AppLovinAd appLovinAd = (AppLovinAd) this.f7381w.getAndSet(null);
        if (appLovinAd != null) {
            c(appLovinAd);
        }
        this.f7384z = false;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return a.class.getSimpleName();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            a(new Runnable() { // from class: com.applovin.impl.adview.x
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.t();
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        char c10 = 65535;
        switch (action.hashCode()) {
            case -1770043299:
                if (action.equals("com.applovin.custom_intent_launch_failure")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1638166742:
                if (action.equals("com.applovin.external_redirect_success")) {
                    c10 = 1;
                    break;
                }
                break;
            case -859884819:
                if (action.equals("com.applovin.custom_tabs_failure")) {
                    c10 = 2;
                    break;
                }
                break;
            case -857571151:
                if (action.equals("com.applovin.external_redirect_failure")) {
                    c10 = 3;
                    break;
                }
                break;
            case -794532889:
                if (action.equals("com.applovin.custom_tabs_hidden")) {
                    c10 = 4;
                    break;
                }
                break;
            case -481430233:
                if (action.equals(SessionTracker.ACTION_APPLICATION_PAUSED)) {
                    c10 = 5;
                    break;
                }
                break;
            case -292584652:
                if (action.equals("com.applovin.custom_tabs_shown")) {
                    c10 = 6;
                    break;
                }
                break;
            case -151691010:
                if (action.equals(SessionTracker.ACTION_APPLICATION_RESUMED)) {
                    c10 = 7;
                    break;
                }
                break;
            case 329711075:
                if (action.equals("com.applovin.preload_success")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1110306666:
                if (action.equals("com.applovin.preload_failure")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1744328406:
                if (action.equals("com.applovin.custom_intent_launch_success")) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case '\n':
                a(action, map);
                return;
            case 1:
            case 3:
                c(action, map);
                return;
            case 2:
            case 4:
            case 6:
                b(action, map);
                return;
            case 5:
                m();
                return;
            case 7:
                n();
                return;
            case '\b':
            case '\t':
                d(action, map);
                return;
            default:
                return;
        }
    }

    public void w() {
        if ((this.f7359a instanceof m1) && this.f7377s != null && this.f7377s.U() == b.EnumC0118b.DISMISS) {
            ((m1) this.f7359a).dismiss("postitial_click");
        }
    }

    public void z() {
        if (this.f7379u == null && this.f7380v == null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7363e;
                oVar.a("AppLovinAdView", "Ad: " + this.f7377s + " closed.");
            }
            a(this.f7376r);
            q2.b(this.B, this.f7377s);
            this.f7377s = null;
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        int i10;
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int i11 = -1;
        if (appLovinAdSize == appLovinAdSize2 || appLovinAdSize == AppLovinAdSize.BANNER) {
            i10 = -1;
        } else if (appLovinAdSize.getWidth() == -1) {
            i10 = displayMetrics.widthPixels;
        } else {
            i10 = (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        }
        if (appLovinAdSize != appLovinAdSize2 && appLovinAdSize != AppLovinAdSize.BANNER) {
            if (appLovinAdSize.getHeight() == -1) {
                i11 = displayMetrics.heightPixels;
            } else {
                i11 = (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
            }
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = i10;
        layoutParams.height = i11;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    private void c() {
        a(new Runnable() { // from class: com.applovin.impl.adview.u
            @Override // java.lang.Runnable
            public final void run() {
                a.this.r();
            }
        });
    }

    private void m() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", "handleApplicationPaused()");
        }
        b("javascript:al_onAppPaused();");
    }

    private void n() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.a("AppLovinAdView", "handleApplicationResumed()");
        }
        b("javascript:al_onAppResumed();");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.f7372n.loadDataWithBaseURL(DomExceptionUtils.SEPARATOR, "<html></html>", "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        com.applovin.impl.adview.b bVar;
        d();
        if (this.f7360b == null || (bVar = this.f7372n) == null || bVar.getParent() != null) {
            return;
        }
        this.f7360b.addView(this.f7372n);
        b(this.f7372n, this.f7377s.getSize());
        if (this.f7377s.isOpenMeasurementEnabled()) {
            this.f7377s.getAdEventTracker().a((View) this.f7372n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        if (this.f7372n != null && this.f7379u != null) {
            a();
        }
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        if (this.f7379u != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7363e;
                oVar.a("AppLovinAdView", "Detaching expanded ad: " + this.f7379u.b());
            }
            this.f7380v = this.f7379u;
            this.f7379u = null;
            a(this.f7367i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        com.applovin.impl.sdk.ad.a b10;
        f fVar = this.f7380v;
        if (fVar == null && this.f7379u == null) {
            return;
        }
        if (fVar != null) {
            b10 = fVar.b();
            this.f7380v.dismiss();
            this.f7380v = null;
        } else {
            b10 = this.f7379u.b();
            this.f7379u.dismiss();
            this.f7379u = null;
        }
        q2.a(this.C, b10, (AppLovinAdView) this.f7360b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        f().loadUrl("chrome://crash");
    }

    public AppLovinAdViewEventListener e() {
        return this.C;
    }

    public com.applovin.impl.adview.b f() {
        return this.f7372n;
    }

    public com.applovin.impl.sdk.ad.b g() {
        return this.f7377s;
    }

    public CustomTabsSession h() {
        return this.f7369k;
    }

    public AppLovinAdView i() {
        return (AppLovinAdView) this.f7360b;
    }

    public com.applovin.impl.sdk.k j() {
        return this.f7361c;
    }

    public AppLovinAdSize k() {
        return this.f7367i;
    }

    public String l() {
        return this.f7368j;
    }

    public void u() {
        if (this.f7361c != null && this.f7371m != null && this.f7359a != null && this.f7383y) {
            this.f7362d.loadNextAd(this.f7368j, this.f7367i, this.f7371m);
        } else {
            com.applovin.impl.sdk.o.i("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    private void d() {
        a(new Runnable() { // from class: com.applovin.impl.adview.q
            @Override // java.lang.Runnable
            public final void run() {
                a.this.s();
            }
        });
    }

    public void c(int i10) {
        String a10 = b8.a(i10);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7363e;
            oVar.a("AppLovinAdView", "onWindowVisibilityChanged( " + a10 + " )");
        }
        b("javascript:al_onWindowVisibilityChanged( " + a10 + " );");
    }

    private void d(String str, Map map) {
        a(l8.d(str, map));
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.A = appLovinAdLoadListener;
    }

    public void c(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.B = appLovinAdDisplayListener;
    }

    public void c(WebView webView) {
        a(webView, (String) null);
    }

    private void c(String str, Map map) {
        a(l8.c(str, map));
    }

    public void a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.C = appLovinAdViewEventListener;
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.D = appLovinAdClickListener;
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.k kVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (kVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize != null) {
            this.f7361c = kVar;
            this.f7362d = kVar.k();
            this.f7363e = kVar.O();
            this.f7364f = AppLovinCommunicator.getInstance(context);
            this.f7367i = appLovinAdSize;
            this.f7368j = str;
            if (!(context instanceof AppLovinFullscreenActivity)) {
                context = context.getApplicationContext();
            }
            this.f7359a = context;
            this.f7360b = appLovinAdView;
            this.f7370l = new com.applovin.impl.adview.c(this, kVar);
            this.f7376r = new c(this, null);
            this.f7375q = new d(this, null);
            this.f7371m = new e(this, kVar);
            a(appLovinAdSize);
            return;
        }
        throw new IllegalArgumentException("No ad size specified");
    }

    public void b() {
        a(new Runnable() { // from class: com.applovin.impl.adview.v
            @Override // java.lang.Runnable
            public final void run() {
                a.this.q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        this.f7377s.getAdEventTracker().c(webView);
        k kVar = this.f7374p;
        if (kVar != null && kVar.a()) {
            c4 adEventTracker = this.f7377s.getAdEventTracker();
            k kVar2 = this.f7374p;
            adEventTracker.b(webView, Collections.singletonList(new e4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier())));
        } else {
            this.f7377s.getAdEventTracker().a((View) webView);
        }
        this.f7377s.getAdEventTracker().h();
        this.f7377s.getAdEventTracker().g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AppLovinAdSize appLovinAdSize) {
        try {
            com.applovin.impl.adview.b bVar = new com.applovin.impl.adview.b(this.f7370l, this.f7361c, this.f7359a);
            this.f7372n = bVar;
            bVar.setBackgroundColor(0);
            this.f7372n.setWillNotCacheDrawing(false);
            this.f7360b.setBackgroundColor(0);
            this.f7360b.addView(this.f7372n);
            b(this.f7372n, appLovinAdSize);
            if (!this.f7383y) {
                a(this.f7376r);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.a0
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.o();
                }
            });
            this.f7383y = true;
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("AppLovinAdView", "Failed to initialize AdWebView", th2);
            this.f7361c.E().a("AppLovinAdView", "initAdWebView", th2);
            this.f7382x.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent) {
        if (this.f7379u == null && (this.f7377s instanceof com.applovin.impl.sdk.ad.a) && this.f7372n != null) {
            com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.f7377s;
            Context context = this.f7359a;
            Activity b10 = context instanceof Activity ? (Activity) context : b8.b(this.f7372n, this.f7361c);
            if (b10 != null && !b10.isFinishing()) {
                ViewGroup viewGroup = this.f7360b;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f7372n);
                }
                f fVar = new f(aVar, this.f7372n, b10, this.f7361c);
                this.f7379u = fVar;
                fVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.z
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        a.this.a(dialogInterface);
                    }
                });
                this.f7379u.show();
                q2.c(this.C, this.f7377s, (AppLovinAdView) this.f7360b);
                if (this.f7377s.isOpenMeasurementEnabled()) {
                    this.f7377s.getAdEventTracker().a((View) this.f7379u.c());
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.o.h("AppLovinAdView", "Unable to expand ad. No Activity found.");
            Uri m10 = aVar.m();
            if (m10 != null) {
                this.f7362d.trackAndLaunchClick(aVar, i(), this, m10, motionEvent, null);
            }
            this.f7372n.a("javascript:al_onFailedExpand();");
        }
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            com.applovin.impl.sdk.o.h("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = com.applovin.impl.s.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.a(), appLovinAdSize2, str, context);
            if (com.applovin.impl.s.b(attributeSet)) {
                u();
            }
        }
    }

    void b(final AppLovinAd appLovinAd) {
        if (appLovinAd != null) {
            if (!this.f7384z) {
                c(appLovinAd);
            } else {
                this.f7381w.set(appLovinAd);
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7363e.a("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
                }
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.b0
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(appLovinAd);
                }
            });
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.b("AppLovinAdView", "No provided when to the view controller");
        }
        b(-1);
    }

    public void a(String str, Object obj) {
        this.f7366h.put(str, obj);
    }

    public void a(boolean z10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7363e;
            oVar.a("AppLovinAdView", "onWindowFocusChanged( " + z10 + " )");
        }
        b("javascript:al_onWindowFocusChanged( " + z10 + " );");
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd != null) {
            k7.b(appLovinAd, this.f7361c);
            if (this.f7383y) {
                if (appLovinAd.getSize() != AppLovinAdSize.INTERSTITIAL) {
                    Map a10 = e2.a((AppLovinAdImpl) appLovinAd);
                    CollectionUtils.putStringIfValid("source", "renderAd", a10);
                    this.f7361c.g().d(c2.f7660p, a10);
                }
                com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) k7.a(appLovinAd, this.f7361c);
                if (bVar == null) {
                    com.applovin.impl.sdk.o.h("AppLovinAdView", "Unable to retrieve the loaded ad: " + appLovinAd);
                    q2.a(this.B, "Unable to retrieve the loaded ad");
                    Map a11 = e2.a((AppLovinAdImpl) appLovinAd);
                    CollectionUtils.putStringIfValid("source", "noAdToRender", a11);
                    CollectionUtils.putStringIfValid("error_message", "Unable to retrieve the loaded ad", a11);
                    this.f7361c.g().d(c2.f7666s, a11);
                    return;
                } else if (bVar == this.f7377s) {
                    com.applovin.impl.sdk.o.h("AppLovinAdView", "Attempting to show ad again: " + bVar);
                    if (((Boolean) this.f7361c.a(v4.G1)).booleanValue()) {
                        if (this.B instanceof k2) {
                            q2.a(this.B, "Attempting to show ad again");
                        } else if (!k7.c(this.f7361c)) {
                            this.f7361c.g().a(c2.E0, bVar, CollectionUtils.hashMap("source", "attemptingAdReRender"));
                        } else {
                            throw new IllegalStateException("Attempting to show ad again");
                        }
                    }
                    HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "attemptingAdReRender");
                    CollectionUtils.putStringIfValid("error_message", "Attempting to show ad again", hashMap);
                    this.f7361c.g().a(c2.f7666s, bVar, hashMap);
                    return;
                } else {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f7363e;
                        oVar.a("AppLovinAdView", "Rendering ad #" + bVar.getAdIdNumber() + " (" + bVar.getSize() + ")");
                    }
                    q2.b(this.B, this.f7377s);
                    if (this.f7377s != null && this.f7377s.isOpenMeasurementEnabled()) {
                        this.f7377s.getAdEventTracker().f();
                    }
                    this.f7381w.set(null);
                    this.f7378t = null;
                    this.f7377s = bVar;
                    if (this.f7377s.G0()) {
                        this.f7369k = this.f7361c.A().a(this);
                        this.f7361c.A().b(this.f7377s.D(), this.f7369k);
                    }
                    if (!this.f7384z && k7.a(this.f7367i)) {
                        this.f7361c.k().trackImpression(bVar);
                    }
                    if (this.f7379u != null) {
                        c();
                    }
                    a(this.f7375q);
                    return;
                }
            }
            com.applovin.impl.sdk.o.i("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i10) {
        if (!this.f7384z) {
            a(this.f7376r);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.w
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(i10);
            }
        });
    }

    private void b(String str) {
        if (((Boolean) this.f7361c.a(v4.C1)).booleanValue()) {
            a(str);
        }
    }

    private void b(String str, Map map) {
        a(l8.b(str, map));
    }

    public void b(Uri uri) {
        if (this.f7377s != null && this.f7377s.I0() && this.f7373o == null) {
            String queryParameter = uri.getQueryParameter("tracking_id");
            if (TextUtils.isEmpty(queryParameter)) {
                this.f7361c.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7361c.O().b("AppLovinAdView", "Invalid tracking id. Cannot initialize GA");
                    return;
                }
                return;
            }
            WebView webView = new WebView(this.f7359a);
            this.f7373o = webView;
            webView.setWebViewClient(new C0103a());
            this.f7373o.getSettings().setJavaScriptEnabled(true);
            this.f7373o.loadDataWithBaseURL((String) this.f7361c.a(v4.Z6), "<html><head><link rel=\"icon\" href=\"data:,\"><G-SCRIPT_TAG></head><body></body></html>".replace("<G-SCRIPT_TAG>", "<script src='https://www.googletagmanager.com/gtag/js?id=<G-TRACKING_ID>'></script><script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', '<G-TRACKING_ID>')</script>".replace("<G-TRACKING_ID>", queryParameter)), "text/html", "UTF-8", null);
        }
    }

    public void a(final WebView webView, String str) {
        if (this.f7377s == null) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.p
            @Override // java.lang.Runnable
            public final void run() {
                webView.setVisibility(0);
            }
        });
        if (!((Boolean) this.f7361c.a(v4.f10304m6)).booleanValue() || (str != null && str.startsWith(this.f7377s.k()))) {
            try {
                if (this.f7377s != this.f7378t) {
                    this.f7378t = this.f7377s;
                    x();
                    this.f7372n.setAdHtmlLoaded(true);
                    if (this.B != null) {
                        this.f7361c.z().d(this.f7377s);
                        if (this.f7377s.C0()) {
                            this.f7361c.g().a(c2.f7664r, this.f7377s, CollectionUtils.hashMap("details", e2.b(this.f7377s)));
                        } else {
                            this.f7361c.g().a(c2.f7662q, this.f7377s, CollectionUtils.hashMap("duration_ms", String.valueOf(SystemClock.elapsedRealtime() - this.f7377s.J())));
                            q2.a(this.B, this.f7377s);
                        }
                        if (this.f7377s.d1()) {
                            JSONObject jSONObject = new JSONObject();
                            JsonUtils.putString(jSONObject, "template_browser_package_name", (String) this.f7361c.q0().a(x4.S, ""));
                            com.applovin.impl.adview.b bVar = this.f7372n;
                            bVar.a("javascript:al_onAdViewRendered(" + jSONObject + ");");
                        } else {
                            this.f7372n.a("javascript:al_onAdViewRendered();");
                        }
                        if (this.f7377s.C0()) {
                            com.applovin.impl.adview.b bVar2 = this.f7372n;
                            bVar2.a("javascript:al_onAdRestored( '" + this.f7377s.h0() + "' );");
                        }
                    }
                    if ((this.f7377s instanceof com.applovin.impl.sdk.ad.a) && this.f7377s.isOpenMeasurementEnabled()) {
                        this.f7361c.r0().a(new p6(this.f7361c, "StartOMSDK", new Runnable() { // from class: com.applovin.impl.adview.t
                            @Override // java.lang.Runnable
                            public final void run() {
                                a.this.b(webView);
                            }
                        }), b6.b.OTHER, 500L);
                    }
                }
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("AppLovinAdView", "Exception while notifying ad display listener", th2);
                com.applovin.impl.sdk.k kVar = this.f7361c;
                if (kVar != null) {
                    kVar.E().a("AppLovinAdView", "onAdHtmlLoaded", th2);
                }
            }
        }
    }

    public void a(final MotionEvent motionEvent) {
        a(new Runnable() { // from class: com.applovin.impl.adview.s
            @Override // java.lang.Runnable
            public final void run() {
                a.this.b(motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        a();
    }

    public void a() {
        a(new Runnable() { // from class: com.applovin.impl.adview.r
            @Override // java.lang.Runnable
            public final void run() {
                a.this.p();
            }
        });
    }

    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri, MotionEvent motionEvent, Bundle bundle) {
        if (appLovinAdView != null) {
            this.f7362d.trackAndLaunchClick(bVar, appLovinAdView, this, uri, motionEvent, bundle);
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f7363e.b("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
        q2.a(this.D, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.f7382x.compareAndSet(true, false)) {
            a(this.f7367i);
        }
        try {
            if (this.A != null) {
                this.A.adReceived(appLovinAd);
            }
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.h("AppLovinAdView", "Exception while running ad load callback: " + th2.getMessage());
            com.applovin.impl.sdk.k kVar = this.f7361c;
            if (kVar != null) {
                kVar.E().a("AppLovinAdView", "notifyAdLoadedCallback", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10) {
        try {
            if (this.A != null) {
                this.A.failedToReceiveAd(i10);
            }
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("AppLovinAdView", "Exception while running app load callback", th2);
            com.applovin.impl.sdk.k kVar = this.f7361c;
            if (kVar != null) {
                kVar.E().a("AppLovinAdView", "notifyAdLoadFailedCallback", th2);
            }
        }
    }

    private void a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    public void a(b bVar) {
        this.f7365g = bVar;
    }

    private void a(String str, Map map) {
        a(l8.a(str, map));
    }

    private void a(String str) {
        if (this.f7377s == null || this.f7372n == null || !k7.a(this.f7377s.getSize()) || !StringUtils.isValidString(str)) {
            return;
        }
        this.f7372n.a(str);
    }

    public void a(Uri uri) {
        if (this.f7377s == null || !this.f7377s.I0()) {
            return;
        }
        if (this.f7373o == null) {
            this.f7361c.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7361c.O().a("AppLovinAdView", "GA is not initialized. Cannot fire GA event");
                return;
            }
            return;
        }
        final String queryParameter = uri.getQueryParameter("event_name");
        final String queryParameter2 = uri.getQueryParameter("event_params_json");
        if (TextUtils.isEmpty(queryParameter)) {
            this.f7361c.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7361c.O().a("AppLovinAdView", "Invalid GA event name. Cannot fire GA event");
                return;
            }
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.y
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(queryParameter2, queryParameter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        String str3;
        if (StringUtils.isValidString(str)) {
            str3 = "gtag('event', '" + str2 + "', " + str + ");";
        } else {
            str3 = "gtag('event', '" + str2 + "')";
        }
        if (((Boolean) this.f7361c.a(v4.O2)).booleanValue()) {
            l8.a(this.f7373o, str3, this.f7361c);
        } else {
            l8.a(this.f7373o, str3);
        }
    }
}
