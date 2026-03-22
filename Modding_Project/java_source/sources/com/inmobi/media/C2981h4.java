package com.inmobi.media;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.h4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2981h4 extends X1 implements InterfaceC3259yb {

    /* renamed from: b  reason: collision with root package name */
    public long f24794b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24795c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24796d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24797e;

    /* renamed from: f  reason: collision with root package name */
    public final X3 f24798f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f24799g;

    /* renamed from: h  reason: collision with root package name */
    public final C2899c4 f24800h;

    /* renamed from: i  reason: collision with root package name */
    public final String f24801i;

    /* renamed from: j  reason: collision with root package name */
    public final AdConfig.RenderingConfig f24802j;

    /* renamed from: k  reason: collision with root package name */
    public final ms.i f24803k;

    /* renamed from: l  reason: collision with root package name */
    public R6 f24804l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f24805m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f24806n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981h4(Context context, long j10, String placementType, String impressionId, String creativeId, X3 onLpLifecycleEvent, InterfaceC3269z5 interfaceC3269z5) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        Intrinsics.checkNotNullParameter(onLpLifecycleEvent, "onLpLifecycleEvent");
        this.f24794b = j10;
        this.f24795c = placementType;
        this.f24796d = impressionId;
        this.f24797e = creativeId;
        this.f24798f = onLpLifecycleEvent;
        this.f24799g = interfaceC3269z5;
        this.f24801i = C2981h4.class.getSimpleName();
        LinkedHashMap linkedHashMap = O2.f23923a;
        this.f24802j = ((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getRendering();
        this.f24803k = kotlin.c.b(C2916d4.f24575a);
        setImportantForAccessibility(2);
        getSettings().setJavaScriptEnabled(true);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        C2899c4 c2899c4 = new C2899c4("IN_CUSTOM_EXPAND", new C2933e4(this), new C2949f4(this), new C2965g4(this), interfaceC3269z5);
        setWebViewClient(c2899c4);
        this.f24800h = c2899c4;
        if (getAdConfig().getEnableCookiesOnInAppBrowser()) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this, true);
        }
    }

    private final AdConfig getAdConfig() {
        return (AdConfig) this.f24803k.getValue();
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean a() {
        String TAG = this.f24801i;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        return g();
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean d() {
        String TAG = this.f24801i;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        return g();
    }

    @Override // com.inmobi.media.X1
    public final M6 f() {
        N6 n62 = new N6(true, "DEFAULT", getAdConfig().isCCTEnabled(), false);
        Context context = getContext();
        InterfaceC3269z5 interfaceC3269z5 = this.f24799g;
        Intrinsics.checkNotNull(context);
        return new M6(context, n62, null, null, this, null, interfaceC3269z5);
    }

    public final boolean g() {
        boolean z10;
        if (getViewTouchTimestamp() != -1 && SystemClock.elapsedRealtime() - getViewTouchTimestamp() < this.f24802j.getUserTouchResetTime()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f24802j.getAutoRedirectionEnforcement() && !z10) {
            return false;
        }
        return true;
    }

    @Nullable
    public final R6 getLandingPageTelemetryControlInfo() {
        return this.f24804l;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public long getViewTouchTimestamp() {
        return this.f24794b;
    }

    @Override // android.webkit.WebView
    public final void loadData(String data, String str, String str2) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.loadData(data, str, str2);
        C2899c4 c2899c4 = this.f24800h;
        if (c2899c4 != null) {
            c2899c4.f24386d = true;
        }
    }

    @Override // android.webkit.WebView
    public final void loadUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        super.loadUrl(url);
        C2899c4 c2899c4 = this.f24800h;
        if (c2899c4 != null) {
            c2899c4.f24386d = true;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onScrollChanged(int i10, int i11, int i12, int i13) {
        if (!this.f24806n) {
            this.f24806n = true;
            X3 x32 = this.f24798f;
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            x32.invoke(Gb.a("IN_CUSTOM_EXPAND", "onScroll"));
        }
        super.onScrollChanged(i10, i11, i12, i13);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        setViewTouchTimestamp(SystemClock.elapsedRealtime());
        if (!this.f24805m) {
            this.f24805m = true;
            X3 x32 = this.f24798f;
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            x32.invoke(Gb.a("IN_CUSTOM_EXPAND", "onInteraction"));
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setLandingPageTelemetryControlInfo(@Nullable R6 r62) {
        this.f24804l = r62;
        C2899c4 c2899c4 = this.f24800h;
        if (c2899c4 != null) {
            c2899c4.f24546j = r62;
            c2899c4.f24547k = new O6(r62, c2899c4);
        }
    }

    public void setViewTouchTimestamp(long j10) {
        this.f24794b = j10;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final void a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap hashMap = new HashMap();
        hashMap.put("creativeId", this.f24797e);
        hashMap.put("trigger", triggerApi);
        hashMap.put("impressionId", this.f24796d);
        hashMap.put("adType", this.f24795c);
        Pd pd2 = Pd.f23988a;
        Pd.b("BlockAutoRedirection", hashMap, Td.f24224a);
    }
}
