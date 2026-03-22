package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenImmersiveActivity;
import com.applovin.impl.adview.a;
import com.applovin.impl.adview.e;
import com.applovin.impl.b6;
import com.applovin.impl.h0;
import com.applovin.impl.o0;
import com.applovin.impl.q4;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.i;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v1;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class v1 implements AppLovinBroadcastManager.Receiver, a.b {
    protected int A;
    protected boolean B;
    private ContentObserver C;
    private Float D;
    protected AppLovinAdClickListener E;
    protected AppLovinAdDisplayListener F;
    protected AppLovinAdVideoPlaybackListener G;
    protected d7 H;
    protected d7 I;
    protected boolean J;
    private final h0 K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.b f10153a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f10154b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.applovin.impl.sdk.o f10155c;

    /* renamed from: d  reason: collision with root package name */
    protected Activity f10156d;

    /* renamed from: e  reason: collision with root package name */
    private final int f10157e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f10158f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.b f10159g;

    /* renamed from: h  reason: collision with root package name */
    private final i.a f10160h;

    /* renamed from: i  reason: collision with root package name */
    protected AppLovinAdView f10161i;

    /* renamed from: j  reason: collision with root package name */
    protected com.applovin.impl.adview.k f10162j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.applovin.impl.adview.g f10163k;

    /* renamed from: l  reason: collision with root package name */
    protected final com.applovin.impl.adview.g f10164l;

    /* renamed from: m  reason: collision with root package name */
    protected final long f10165m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicBoolean f10166n;

    /* renamed from: o  reason: collision with root package name */
    private final AtomicBoolean f10167o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f10168p;

    /* renamed from: q  reason: collision with root package name */
    protected long f10169q;

    /* renamed from: r  reason: collision with root package name */
    protected long f10170r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f10171s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f10172t;

    /* renamed from: u  reason: collision with root package name */
    protected int f10173u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f10174v;

    /* renamed from: w  reason: collision with root package name */
    private int f10175w;

    /* renamed from: x  reason: collision with root package name */
    private final ArrayList f10176x;

    /* renamed from: y  reason: collision with root package name */
    protected int f10177y;

    /* renamed from: z  reason: collision with root package name */
    protected int f10178z;

    /* loaded from: classes2.dex */
    class a implements AppLovinAdDisplayListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = v1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.f10155c.a("AppLovinFullscreenActivity", "Web content rendered");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = v1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.f10155c.a("AppLovinFullscreenActivity", "Closing from WebView");
            }
            v1.this.a("web_view");
        }
    }

    /* loaded from: classes2.dex */
    class b implements i.a {
        b() {
        }

        @Override // com.applovin.impl.sdk.i.a
        public void a(int i10) {
            v1 v1Var = v1.this;
            if (v1Var.A != com.applovin.impl.sdk.i.f9694h) {
                v1Var.B = true;
            }
            com.applovin.impl.adview.b f10 = v1Var.f10161i.getController().f();
            if (f10 == null) {
                com.applovin.impl.sdk.o oVar = v1.this.f10155c;
                if (com.applovin.impl.sdk.o.a()) {
                    v1.this.f10155c.k("AppLovinFullscreenActivity", "Unable to handle ringer mode change: no valid web view.");
                }
            } else if (com.applovin.impl.sdk.i.a(i10) && !com.applovin.impl.sdk.i.a(v1.this.A)) {
                f10.a("javascript:al_muteSwitchOn();");
            } else if (i10 == 2) {
                f10.a("javascript:al_muteSwitchOff();");
            }
            v1.this.A = i10;
        }
    }

    /* loaded from: classes2.dex */
    class c extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f10181a;

        c(com.applovin.impl.sdk.k kVar) {
            this.f10181a = kVar;
        }

        private boolean a(Activity activity) {
            return activity.getClass().getName().equals(k7.a(activity.getApplicationContext(), "AppLovinFullscreenActivity", this.f10181a));
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!v1.this.y() && a(activity)) {
                v1.this.c();
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (v1.this.y() && a(activity)) {
                v1.this.c();
            }
        }
    }

    /* loaded from: classes2.dex */
    class d extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f10183a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Handler handler, com.applovin.impl.sdk.k kVar) {
            super(handler);
            this.f10183a = kVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            String str;
            Float b10 = this.f10183a.q().b();
            if (b10 != null && v1.this.D != null && !b10.equals(v1.this.D)) {
                if (b10.floatValue() > v1.this.D.floatValue()) {
                    str = "volume_up";
                } else {
                    str = "volume_down";
                }
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putDouble(jSONObject, ITTVideoEngineEventSource.KEY_VOLUME, b10.floatValue());
                v1.this.e("javascript:al_onVolumeChangedEvent('" + str + "'," + jSONObject + ");");
                v1.this.D = b10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q4 f10185a;

        e(q4 q4Var) {
            this.f10185a = q4Var;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity instanceof AppLovinFullscreenActivity) {
                this.f10185a.b(null);
                v1.this.f10154b.e().b(this);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a(v1 v1Var);

        void a(String str, Throwable th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h implements AppLovinAdClickListener, View.OnClickListener {
        private h() {
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.o oVar = v1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.f10155c.a("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            q2.a(v1.this.E, appLovinAd);
            v1.this.f10178z++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1 v1Var = v1.this;
            if (view == v1Var.f10163k && ((Boolean) v1Var.f10154b.a(v4.V1)).booleanValue()) {
                v1.e(v1.this);
                if (v1.this.f10153a.b1()) {
                    v1 v1Var2 = v1.this;
                    v1Var2.e("javascript:al_onCloseButtonTapped(" + v1.this.f10175w + "," + v1.this.f10177y + "," + v1.this.f10178z + ");");
                }
                List P = v1.this.f10153a.P();
                com.applovin.impl.sdk.o oVar = v1.this.f10155c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = v1.this.f10155c;
                    oVar2.a("AppLovinFullscreenActivity", "Handling close button tap " + v1.this.f10175w + " with multi close delay: " + P);
                }
                if (P != null && P.size() > v1.this.f10175w) {
                    v1.this.f10176x.add(Long.valueOf(SystemClock.elapsedRealtime() - v1.this.f10169q));
                    List N = v1.this.f10153a.N();
                    if (N != null && N.size() > v1.this.f10175w) {
                        v1 v1Var3 = v1.this;
                        v1Var3.f10163k.a((e.a) N.get(v1Var3.f10175w));
                    }
                    com.applovin.impl.sdk.o oVar3 = v1.this.f10155c;
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar4 = v1.this.f10155c;
                        oVar4.a("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + P.get(v1.this.f10175w));
                    }
                    v1.this.f10163k.setVisibility(8);
                    v1 v1Var4 = v1.this;
                    v1Var4.a(v1Var4.f10163k, ((Integer) P.get(v1Var4.f10175w)).intValue(), new Runnable() { // from class: com.applovin.impl.pf
                        @Override // java.lang.Runnable
                        public final void run() {
                            v1.h.this.a();
                        }
                    });
                    return;
                }
                v1.this.a("native_close_button");
                return;
            }
            com.applovin.impl.sdk.o oVar5 = v1.this.f10155c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar6 = v1.this.f10155c;
                oVar6.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }

        /* synthetic */ h(v1 v1Var, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            v1.this.f10169q = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f10158f = handler;
        this.f10165m = SystemClock.elapsedRealtime();
        this.f10166n = new AtomicBoolean();
        this.f10167o = new AtomicBoolean();
        this.f10169q = -1L;
        this.f10175w = 0;
        this.f10176x = new ArrayList();
        this.f10177y = 0;
        this.f10178z = 0;
        this.A = com.applovin.impl.sdk.i.f9694h;
        this.L = false;
        this.f10153a = bVar;
        this.f10154b = kVar;
        this.f10155c = kVar.O();
        this.f10156d = activity;
        this.f10157e = bVar.b0();
        this.E = appLovinAdClickListener;
        this.F = appLovinAdDisplayListener;
        this.G = appLovinAdVideoPlaybackListener;
        this.K = new h0(kVar);
        h hVar = new h(this, null);
        if (((Boolean) kVar.a(v4.f10292l2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        if (((Boolean) kVar.a(v4.f10340r2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.al_onPoststitialShow_evaluation_error"));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_shown"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_hidden"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_tabs_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.custom_intent_launch_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.external_redirect_failure"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_success"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.preload_failure"));
        t1 t1Var = new t1(kVar.z0(), AppLovinAdSize.INTERSTITIAL, activity);
        this.f10161i = t1Var;
        t1Var.setAdClickListener(hVar);
        this.f10161i.setAdDisplayListener(new a());
        bVar.h().putString("ad_view_address", b8.a(this.f10161i));
        this.f10161i.getController().a(this);
        b2 b2Var = new b2(map, kVar);
        if (b2Var.c()) {
            this.f10162j = new com.applovin.impl.adview.k(b2Var, activity);
        }
        kVar.k().trackImpression(bVar);
        List P = bVar.P();
        if (bVar.s() < 0 && P == null) {
            this.f10163k = null;
        } else {
            com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.q(), activity);
            this.f10163k = gVar;
            gVar.setVisibility(8);
            gVar.setOnClickListener(hVar);
        }
        com.applovin.impl.adview.g gVar2 = new com.applovin.impl.adview.g(e.a.WHITE_ON_TRANSPARENT, activity);
        this.f10164l = gVar2;
        gVar2.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v1.this.a(view);
            }
        });
        if (bVar.i1()) {
            this.f10160h = new b();
        } else {
            this.f10160h = null;
        }
        this.f10159g = new c(kVar);
        if (bVar.e1()) {
            this.D = kVar.q().b();
            this.C = new d(handler, kVar);
            activity.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI.buildUpon().appendPath("volume_music_speaker").build(), false, this.C);
        }
    }

    private void A() {
        if (this.f10160h != null) {
            this.f10154b.q().a(this.f10160h);
        }
        if (this.f10159g != null) {
            this.f10154b.e().a(this.f10159g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        if (a() >= 0) {
            return true;
        }
        return false;
    }

    public abstract void a(ViewGroup viewGroup);

    public abstract void b(long j10);

    protected abstract void l();

    /* JADX INFO: Access modifiers changed from: protected */
    public void o() {
        com.applovin.impl.adview.b f10;
        if (this.f10161i == null || !this.f10153a.D0() || (f10 = this.f10161i.getController().f()) == null) {
            return;
        }
        this.K.a(f10, new f());
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        char c10 = 65535;
        switch (action.hashCode()) {
            case -1852867992:
                if (action.equals("com.applovin.al_onPoststitialShow_evaluation_error")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1770043299:
                if (action.equals("com.applovin.custom_intent_launch_failure")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1638166742:
                if (action.equals("com.applovin.external_redirect_success")) {
                    c10 = 2;
                    break;
                }
                break;
            case -859884819:
                if (action.equals("com.applovin.custom_tabs_failure")) {
                    c10 = 3;
                    break;
                }
                break;
            case -857571151:
                if (action.equals("com.applovin.external_redirect_failure")) {
                    c10 = 4;
                    break;
                }
                break;
            case -794532889:
                if (action.equals("com.applovin.custom_tabs_hidden")) {
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
            case -269649010:
                if (action.equals("com.applovin.render_process_gone")) {
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
                d();
                return;
            case 1:
            case '\n':
                a(action, map);
                return;
            case 2:
            case 4:
                c(action, map);
                return;
            case 3:
            case 5:
            case 6:
                b(action, map);
                return;
            case 7:
                if (!this.f10172t) {
                    e();
                    return;
                }
                return;
            case '\b':
            case '\t':
                d(action, map);
                return;
            default:
                return;
        }
    }

    public void p() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.L) {
            a("back_button");
        }
        if (this.f10153a.b1()) {
            e("javascript:onBackPressed();");
        }
    }

    public void q() {
        AppLovinAdView appLovinAdView = this.f10161i;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.f10161i.destroy();
            this.f10161i = null;
            if ((parent instanceof ViewGroup) && h()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        l();
        k();
        this.E = null;
        this.F = null;
        this.G = null;
        this.f10156d = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public void r() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "onPause()");
        }
        d("javascript:al_onAppPaused();");
        m();
    }

    public void s() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "onResume()");
        }
        d("javascript:al_onAppResumed();");
        n();
    }

    public void t() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public abstract void u();

    public abstract void v();

    /* JADX INFO: Access modifiers changed from: protected */
    public void w() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "Setting ad fully watched");
        }
        this.J = true;
    }

    public boolean x() {
        return this.f10168p;
    }

    protected abstract void z();

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (y()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.d("AppLovinFullscreenActivity", "App relaunch detected with launcher activity. Will attempt to re-show the ad");
            }
            this.f10168p = true;
            long f10 = this.f10153a.f();
            if (f10 < 0) {
                return;
            }
            a(new Runnable() { // from class: com.applovin.impl.ff
                @Override // java.lang.Runnable
                public final void run() {
                    v1.this.i();
                }
            }, f10);
            return;
        }
        f("app_relaunch");
    }

    static /* synthetic */ int e(v1 v1Var) {
        int i10 = v1Var.f10175w;
        v1Var.f10175w = i10 + 1;
        return i10;
    }

    private void f(final String str) {
        if (this.f10167o.get()) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.nf
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.c(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        if (this.f10153a.b0() <= this.f10157e && !com.applovin.impl.d.d(this.f10156d)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.d("AppLovinFullscreenActivity", "Ad reshow timed out. Will attempt to bring existing ad activity to front.");
            }
            this.f10168p = false;
            long c10 = this.f10153a.c();
            if (c10 > 0) {
                a(c10).a(q4.f9328h, new q4.b() { // from class: com.applovin.impl.of
                    @Override // com.applovin.impl.q4.b
                    public final void a(boolean z10, Object obj, Object obj2) {
                        v1.this.a(z10, (Void) obj, (Void) obj2);
                    }
                });
            } else {
                f("app_relaunch_reshow_timed_out");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        if (this.f10153a.L0().getAndSet(true)) {
            return;
        }
        this.f10154b.r0().a((g5) new k6(this.f10153a, this.f10154b), b6.b.OTHER);
    }

    public void b(boolean z10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.d("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z10);
        }
        d("javascript:al_onWindowFocusChanged( " + z10 + " );");
        d7 d7Var = this.I;
        if (d7Var != null) {
            if (z10) {
                d7Var.e();
            } else {
                d7Var.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g() {
        return AppLovinAdType.INCENTIVIZED == this.f10153a.getType();
    }

    protected boolean h() {
        return this.f10156d instanceof AppLovinFullscreenActivity;
    }

    protected void k() {
        if (!this.f10168p && this.f10167o.compareAndSet(false, true)) {
            q2.b(this.F, this.f10153a);
            this.f10154b.I().b(this.f10153a);
            HashMap hashMap = new HashMap();
            com.applovin.impl.sdk.ad.b bVar = this.f10153a;
            if (bVar != null) {
                CollectionUtils.putStringIfValid("source", bVar.F(), hashMap);
                CollectionUtils.putStringIfValid("details", e2.b(this.f10153a), hashMap);
            }
            this.f10154b.g().a(c2.f7668t, this.f10153a, hashMap);
        }
    }

    protected void m() {
        d7 d7Var = this.H;
        if (d7Var != null) {
            d7Var.d();
        }
    }

    protected void n() {
        d7 d7Var = this.H;
        if (d7Var != null) {
            d7Var.e();
        }
    }

    public void d(boolean z10) {
        this.f10168p = z10;
    }

    public void e(String str) {
        a(str, 0L);
    }

    /* loaded from: classes2.dex */
    class f implements h0.c {
        f() {
        }

        @Override // com.applovin.impl.h0.c
        public void a(int i10, int i11) {
            Map a10 = e2.a((AppLovinAdImpl) v1.this.f10153a);
            a10.putAll(e2.a(v1.this.f10153a));
            a10.put("details", "detection_count=" + i10 + ",total_checks=" + i11);
            v1.this.f10154b.E().d(c2.f7677x0, a10);
        }

        @Override // com.applovin.impl.h0.c
        public void a(int i10, int i11, int i12) {
            Map a10 = e2.a((AppLovinAdImpl) v1.this.f10153a);
            a10.putAll(e2.a(v1.this.f10153a));
            a10.put("details", "detections_to_report=" + i10 + ",detection_count=" + i11 + ",total_checks=" + i12);
            v1.this.f10154b.E().d(c2.f7679y0, a10);
            if (((Boolean) v1.this.f10154b.a(v4.f10248f6)).booleanValue()) {
                v1.this.w();
            }
            if (((Boolean) v1.this.f10154b.a(v4.P0)).booleanValue()) {
                v1.this.f10154b.H().c(v1.this.f10153a, com.applovin.impl.sdk.k.o());
            }
            if (((Boolean) v1.this.f10154b.a(v4.f10214b6)).booleanValue()) {
                v1.this.a("black_view_auto_dismiss");
                return;
            }
            v1 v1Var = v1.this;
            v1Var.L = ((Boolean) v1Var.f10154b.a(v4.f10223c6)).booleanValue();
            if (((Boolean) v1.this.f10154b.a(v4.f10232d6)).booleanValue()) {
                v1.this.z();
            }
        }
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, Map map, com.applovin.impl.sdk.k kVar, Activity activity, g gVar) {
        v1 y1Var;
        if (bVar instanceof l7) {
            try {
                y1Var = new y1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th2) {
                gVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + kVar + " and throwable: " + th2.getMessage(), th2);
                return;
            }
        } else if (bVar.hasVideoUrl()) {
            try {
                y1Var = new z1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th3) {
                gVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + kVar + " and throwable: " + th3.getMessage(), th3);
                return;
            }
        } else {
            try {
                y1Var = new w1(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th4) {
                gVar.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + kVar + " and throwable: " + th4.getMessage(), th4);
                return;
            }
        }
        y1Var.A();
        gVar.a(y1Var);
    }

    protected void d(String str) {
        if (this.f10153a.H0()) {
            a(str, 0L);
        }
    }

    public void e() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.f10172t = true;
    }

    public boolean f() {
        return this.f10171s;
    }

    public void d() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.d("AppLovinFullscreenActivity", "Handling al_onPoststitialShow evaluation error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        com.applovin.impl.adview.b f10;
        AppLovinAdView appLovinAdView = this.f10161i;
        if (appLovinAdView == null || (f10 = appLovinAdView.getController().f()) == null) {
            return;
        }
        f10.a(str);
    }

    private void d(String str, Map map) {
        e(l8.d(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        com.applovin.impl.sdk.o.h("AppLovinFullscreenActivity", "Dismissing on-screen ad due to " + str);
        try {
            a(str);
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("AppLovinFullscreenActivity", "Failed to dismiss ad.", th2);
            try {
                k();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        b8.a(gVar, 400L, new Runnable() { // from class: com.applovin.impl.lf
            @Override // java.lang.Runnable
            public final void run() {
                v1.a(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b() {
        int u10 = this.f10153a.u();
        return (u10 <= 0 && ((Boolean) this.f10154b.a(v4.f10276j2)).booleanValue()) ? this.f10173u + 1 : u10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(boolean z10) {
        a(z10, ((Long) this.f10154b.a(v4.f10284k2)).longValue());
        if (!this.f10153a.C0()) {
            q2.a(this.F, this.f10153a);
        }
        this.f10154b.I().a(this.f10153a);
        if (!this.f10153a.C0() && (this.f10153a.hasVideoUrl() || g())) {
            q2.a(this.G, this.f10153a);
        }
        new k4(this.f10156d).a(this.f10153a);
        this.f10153a.setHasShown(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a("backup_close_button");
    }

    private void b(String str, Map map) {
        e(l8.b(str, map));
    }

    public long a() {
        com.applovin.impl.sdk.ad.b bVar = this.f10153a;
        if (bVar == null) {
            return -1L;
        }
        return bVar.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, Void r22, Void r32) {
        if (z10) {
            return;
        }
        f("app_relaunch_bring_to_front_failed");
    }

    private q4 a(long j10) {
        final q4 q4Var = new q4("bringAdActivityToFront");
        final e eVar = new e(q4Var);
        this.f10154b.e().a(eVar);
        Intent intent = new Intent(this.f10156d, this.f10153a.X0() ? AppLovinFullscreenImmersiveActivity.class : AppLovinFullscreenActivity.class);
        intent.setFlags(131072);
        this.f10156d.startActivity(intent);
        a(new Runnable() { // from class: com.applovin.impl.gf
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.a(eVar, q4Var);
            }
        }, j10);
        return q4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.jf
            @Override // java.lang.Runnable
            public final void run() {
                v1.b(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.a("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j10) + " seconds...");
        }
        this.H = d7.a(j10, this.f10154b, new Runnable() { // from class: com.applovin.impl.if
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.j();
            }
        });
    }

    private void c(String str, Map map) {
        e(l8.c(str, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.b bVar, q4 q4Var) {
        this.f10154b.e().b(bVar);
        if (q4Var.c()) {
            return;
        }
        q4Var.a((Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(boolean z10) {
        List a10 = k7.a(z10, this.f10153a, this.f10154b, this.f10156d);
        if (a10.isEmpty()) {
            return false;
        }
        String str = "Missing ad resources: " + a10;
        Map a11 = e2.a((AppLovinAdImpl) this.f10153a);
        if (((Boolean) this.f10154b.a(v4.H5)).booleanValue()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f10155c.b("AppLovinFullscreenActivity", "Dismissing ad due to missing resources: " + a10);
            }
            if (((Boolean) this.f10154b.a(v4.K5)).booleanValue()) {
                AppLovinAdDisplayListener appLovinAdDisplayListener = this.F;
                if (appLovinAdDisplayListener instanceof k2) {
                    q2.a(appLovinAdDisplayListener, "Missing ad resources");
                }
            } else {
                m2.a(this.f10153a, this.F, "Missing ad resources", (Throwable) null, (AppLovinFullscreenActivity) null);
            }
            a("missing_ad_resources");
            a(str, "Failing ad display", a11);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "missingCachedAdResources");
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            this.f10154b.g().a(c2.f7666s, this.f10153a, hashMap);
            return ((Boolean) this.f10154b.a(v4.J5)).booleanValue();
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.b("AppLovinFullscreenActivity", "Streaming ad due to missing ad resources: " + a10);
        }
        this.f10153a.Q0();
        a(str, "Streaming ad", a11);
        return false;
    }

    public void a(o0.a aVar, o0.a aVar2, o0.a aVar3) {
        if (((Boolean) this.f10154b.a(v4.B4)).booleanValue()) {
            HashMap hashMap = new HashMap();
            hashMap.put(AdUnitActivity.EXTRA_ORIENTATION, k7.b(this.f10156d));
            if (aVar != null) {
                hashMap.put("display_cutout_insets", aVar.e());
            }
            if (aVar2 != null) {
                hashMap.put("status_bar_insets", aVar2.e());
            }
            if (aVar3 != null) {
                hashMap.put("nav_bar_insets", aVar3.e());
            }
            e(l8.a(hashMap));
        }
    }

    public void a(String str) {
        this.f10171s = true;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f10165m;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.d("AppLovinFullscreenActivity", "Dismissing ad after " + TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime) + " seconds from source: " + str);
        }
        com.applovin.impl.sdk.ad.b bVar = this.f10153a;
        if (bVar != null) {
            bVar.getAdEventTracker().f();
        }
        this.f10158f.removeCallbacksAndMessages(null);
        com.applovin.impl.sdk.ad.b bVar2 = this.f10153a;
        a("javascript:al_onPoststitialDismiss();", bVar2 != null ? bVar2.G() : 0L);
        if (((Boolean) this.f10154b.a(v4.D6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar3 = this.f10153a;
            if (bVar3 != null) {
                bVar3.a(str);
            }
            l();
        }
        k();
        this.K.b();
        if (this.f10160h != null) {
            this.f10154b.q().b(this.f10160h);
        }
        if (this.f10159g != null) {
            this.f10154b.e().b(this.f10159g);
        }
        if (this.C != null) {
            this.f10156d.getContentResolver().unregisterContentObserver(this.C);
            this.C = null;
        }
        if (h()) {
            this.f10156d.finish();
            return;
        }
        this.f10154b.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f10154b.O().a("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        }
        q();
    }

    public void a(Configuration configuration) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.d("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    public void a(int i10, KeyEvent keyEvent) {
        if (this.f10155c == null || !com.applovin.impl.sdk.o.a()) {
            return;
        }
        com.applovin.impl.sdk.o oVar = this.f10155c;
        oVar.d("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i10 + ", " + keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final String str, long j10) {
        if (j10 < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.kf
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.b(str);
            }
        }, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final com.applovin.impl.adview.g gVar, long j10, final Runnable runnable) {
        if (j10 >= ((Long) this.f10154b.a(v4.U1)).longValue()) {
            return;
        }
        this.I = d7.a(TimeUnit.SECONDS.toMillis(j10), this.f10154b, new Runnable() { // from class: com.applovin.impl.hf
            @Override // java.lang.Runnable
            public final void run() {
                v1.c(com.applovin.impl.adview.g.this, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.adview.g gVar, Runnable runnable) {
        gVar.bringToFront();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10, boolean z10, boolean z11, long j10) {
        if (!this.f10168p && this.f10166n.compareAndSet(false, true)) {
            if (this.f10153a.hasVideoUrl() || g()) {
                q2.a(this.G, this.f10153a, i10, z11);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f10165m;
            this.f10154b.k().trackVideoEnd(this.f10153a, TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime), i10, z10);
            long elapsedRealtime2 = this.f10169q != -1 ? SystemClock.elapsedRealtime() - this.f10169q : -1L;
            this.f10154b.k().trackFullScreenAdClosed(this.f10153a, elapsedRealtime2, this.f10176x, j10, this.B, this.A);
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f10155c;
                oVar.a("AppLovinFullscreenActivity", "Video ad ended at percent: " + i10 + "%, elapsedTime: " + elapsedRealtime + "ms, skipTimeMillis: " + j10 + "ms, closeTimeMillis: " + elapsedRealtime2 + "ms");
            }
        }
    }

    private void a(String str, String str2, Map map) {
        HashMap hashMap = new HashMap(map);
        CollectionUtils.putStringIfValid("error_message", str, hashMap);
        CollectionUtils.putStringIfValid("details", str2, hashMap);
        this.f10154b.E().a(c2.f7681z0, "missingCachedAdResources", hashMap);
    }

    @Override // com.applovin.impl.adview.a.b
    public void a(com.applovin.impl.adview.a aVar) {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Fully watched from ad web view...");
        }
        this.J = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z10, long j10) {
        if (this.f10153a.T0()) {
            a(z10 ? "javascript:al_mute();" : "javascript:al_unmute();", j10);
        }
    }

    private void a(String str, Map map) {
        e(l8.a(str, map));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Runnable runnable, long j10) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j10, this.f10158f);
    }
}
