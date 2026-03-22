package com.inmobi.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.c4 */
/* loaded from: classes5.dex */
public final class C2899c4 extends Y1 {

    /* renamed from: f */
    public final String f24542f;

    /* renamed from: g */
    public final Lambda f24543g;

    /* renamed from: h */
    public final Lambda f24544h;

    /* renamed from: i */
    public final Lambda f24545i;

    /* renamed from: j */
    public R6 f24546j;

    /* renamed from: k */
    public O6 f24547k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2899c4(String api, Function0 onUserLandingCompleted, Function1 onLpLifecycleEvent, Function2 fireLandingPageTracker, InterfaceC3269z5 interfaceC3269z5) {
        super(interfaceC3269z5);
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(onUserLandingCompleted, "onUserLandingCompleted");
        Intrinsics.checkNotNullParameter(onLpLifecycleEvent, "onLpLifecycleEvent");
        Intrinsics.checkNotNullParameter(fireLandingPageTracker, "fireLandingPageTracker");
        this.f24542f = api;
        this.f24543g = (Lambda) onUserLandingCompleted;
        this.f24544h = (Lambda) onLpLifecycleEvent;
        this.f24545i = (Lambda) fireLandingPageTracker;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    public final boolean a(WebView webView, String str) {
        Integer num;
        int i10;
        InterfaceC2882b4 interfaceC2882b4;
        Fe userLeftApplicationListener;
        if (this.f24387e.get()) {
            return true;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", AbstractC2977h0.a("onShouldOverrideUrlLoading: ", str));
        }
        if (webView instanceof X1) {
            K6 a10 = M6.a(((X1) webView).getLandingPageHandler(), this.f24542f, null, str, this.f24546j, false, 16);
            num = a10.f23778b;
            i10 = a10.f23777a;
        } else {
            num = null;
            i10 = 0;
        }
        if (i10 != 1) {
            if (i10 == 2 || i10 == 3) {
                a(3, false, str, Integer.valueOf(num != null ? num.intValue() : 10));
                return true;
            }
            return false;
        }
        if (webView instanceof C2981h4) {
            ViewParent parent = ((C2981h4) webView).getParent();
            if ((parent instanceof Y3) && (userLeftApplicationListener = ((Y3) parent).getUserLeftApplicationListener()) != null) {
                userLeftApplicationListener.a();
            }
        }
        ?? r02 = this.f24544h;
        Gb gb2 = GestureDetector$OnGestureListenerC2941ec.Y0;
        String str2 = this.f24542f;
        gb2.getClass();
        r02.invoke(Gb.a(str2, "onNavigatingAway"));
        a(webView);
        if (!AbstractC3266z2.a(str)) {
            if (webView.canGoBack()) {
                webView.goBack();
            } else if (webView instanceof C2981h4) {
                ViewParent parent2 = ((C2981h4) webView).getParent();
                if ((parent2 instanceof Y3) && (interfaceC2882b4 = ((Y3) parent2).f24392d) != null) {
                    C3014j5.a(((C2998i5) interfaceC2882b4).f24854a);
                }
            }
        }
        a(this, 2, false, str, 8);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", AbstractC2977h0.a("onPageCommitVisible: ", str));
        }
        a(this, 4, true, str, 8);
    }

    @Override // com.inmobi.media.Y1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", AbstractC2977h0.a("onPageFinished: ", str));
        }
        a(this, 2, true, str, 8);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", AbstractC2977h0.a("onPageStarted: ", str));
        }
        ?? r22 = this.f24544h;
        Gb gb2 = GestureDetector$OnGestureListenerC2941ec.Y0;
        String str2 = this.f24542f;
        gb2.getClass();
        r22.invoke(Gb.a(str2, "onPageStart"));
        a(this, 1, true, str, 8);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i10, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        a(3, false, failingUrl, Integer.valueOf(i10));
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", AbstractC2977h0.a("onReceivedError: ", failingUrl));
        }
    }

    @Override // com.inmobi.media.Y1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        boolean didCrash;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        boolean onRenderProcessGone = super.onRenderProcessGone(view, detail);
        if (Build.VERSION.SDK_INT >= 26) {
            a(3, true, null, Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp));
            Pair a10 = ms.k.a("source", "embedded_browser");
            didCrash = detail.didCrash();
            Map o10 = kotlin.collections.p0.o(a10, ms.k.a("isCrashed", Boolean.valueOf(didCrash)));
            Pd pd2 = Pd.f23988a;
            Pd.b("WebViewRenderProcessGoneEvent", o10, Td.f24224a);
        }
        return onRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (L3.G()) {
            String str = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (str = url.toString()) == null) ? "" : "";
            if (webView == null || str.length() <= 0) {
                return false;
            }
            return a(webView, str);
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", "onReceivedError: " + request.getUrl());
        }
        if (request.isForMainFrame()) {
            a(3, true, request.getUrl().toString(), Integer.valueOf(error.getErrorCode()));
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("EmbeddedBrowserViewClient", "shouldOverrideUrlLoading Called");
        }
        if (webView == null || str == null) {
            return false;
        }
        return a(webView, str);
    }

    public static /* synthetic */ void a(C2899c4 c2899c4, int i10, boolean z10, String str, int i11) {
        if ((i11 & 4) != 0) {
            str = null;
        }
        c2899c4.a(i10, z10, str, null);
    }

    /* JADX WARN: Type inference failed for: r9v11, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v15, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v17, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v23, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v7, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.Lambda] */
    public final void a(int i10, boolean z10, String str, Integer num) {
        O6 o62 = this.f24547k;
        if (o62 != null) {
            try {
                if (o62.f23942e) {
                    return;
                }
                R6 r62 = o62.f23938a;
                if (r62 != null) {
                    r62.f24066g = "IN_CUSTOM";
                }
                switch (i10) {
                    case 1:
                        if (z10) {
                            o62.f23941d = str;
                            C2899c4 c2899c4 = o62.f23939b;
                            F6 funnelState = F6.f23638h;
                            c2899c4.getClass();
                            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                            J6.a(funnelState, r62, (Integer) null, (Function2) c2899c4.f24545i);
                            break;
                        }
                        break;
                    case 2:
                        if (z10) {
                            o62.f23941d = str;
                            o62.f23942e = true;
                            if (!o62.f23940c.contains(1)) {
                                C2899c4 c2899c42 = o62.f23939b;
                                F6 funnelState2 = F6.f23638h;
                                R6 r63 = o62.f23938a;
                                Integer valueOf = Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p);
                                c2899c42.getClass();
                                Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                                J6.a(funnelState2, r63, valueOf, (Function2) c2899c42.f24545i);
                            }
                            o62.f23939b.f24543g.invoke();
                            C2899c4 c2899c43 = o62.f23939b;
                            F6 funnelState3 = F6.f23639i;
                            R6 r64 = o62.f23938a;
                            c2899c43.getClass();
                            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
                            J6.a(funnelState3, r64, (Integer) null, (Function2) c2899c43.f24545i);
                            break;
                        }
                        break;
                    case 3:
                        if (z10 || (str != null && Intrinsics.areEqual(str, o62.f23941d))) {
                            o62.f23942e = true;
                            if (!o62.f23940c.contains(1)) {
                                C2899c4 c2899c44 = o62.f23939b;
                                F6 funnelState4 = F6.f23638h;
                                R6 r65 = o62.f23938a;
                                Integer valueOf2 = Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p);
                                c2899c44.getClass();
                                Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
                                J6.a(funnelState4, r65, valueOf2, (Function2) c2899c44.f24545i);
                            }
                            C2899c4 c2899c45 = o62.f23939b;
                            F6 funnelState5 = F6.f23640j;
                            R6 r66 = o62.f23938a;
                            Integer valueOf3 = Integer.valueOf(num != null ? num.intValue() : 8100);
                            c2899c45.getClass();
                            Intrinsics.checkNotNullParameter(funnelState5, "funnelState");
                            J6.a(funnelState5, r66, valueOf3, (Function2) c2899c45.f24545i);
                            break;
                        }
                    case 4:
                        if (z10) {
                            o62.f23941d = str;
                            break;
                        }
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        o62.f23942e = true;
                        switch (i10) {
                            case 5:
                                r3 = JosStatusCodes.RNT_CODE_SERVER_ERROR;
                                break;
                            case 6:
                                r3 = JosStatusCodes.RNT_CODE_NETWORK_ERROR;
                                break;
                            case 7:
                                r3 = 8400;
                                break;
                            case 8:
                                r3 = 8600;
                                break;
                            case 9:
                                r3 = 8500;
                                break;
                        }
                        int i11 = 4;
                        if (!o62.f23940c.contains(4)) {
                            i11 = 0;
                        }
                        int i12 = r3 + i11;
                        C2899c4 c2899c46 = o62.f23939b;
                        F6 funnelState6 = F6.f23640j;
                        R6 r67 = o62.f23938a;
                        Integer valueOf4 = Integer.valueOf(i12);
                        c2899c46.getClass();
                        Intrinsics.checkNotNullParameter(funnelState6, "funnelState");
                        J6.a(funnelState6, r67, valueOf4, (Function2) c2899c46.f24545i);
                        break;
                }
                o62.f23940c.add(Integer.valueOf(i10));
            } catch (Exception e10) {
                e10.toString();
            }
        }
    }
}
