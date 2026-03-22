package com.inmobi.media;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.browser.trusted.sharing.ShareTarget;
import com.inmobi.media.Y1;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public abstract class Y1 extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3269z5 f24383a;

    /* renamed from: c  reason: collision with root package name */
    public boolean f24385c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f24386d;

    /* renamed from: b  reason: collision with root package name */
    public int f24384b = -1;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f24387e = new AtomicBoolean(false);

    public Y1(InterfaceC3269z5 interfaceC3269z5) {
        this.f24383a = interfaceC3269z5;
    }

    public final void a(WebView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f24387e.set(true);
        view.postDelayed(new Runnable() { // from class: ub.g3
            @Override // java.lang.Runnable
            public final void run() {
                Y1.a(Y1.this);
            }
        }, 1000L);
    }

    public final void b(WebView webView) {
        short s10;
        String str;
        Z z10;
        String b10;
        String str2;
        String str3;
        Z z11;
        String m10;
        T0 t02;
        int i10 = this.f24384b;
        if (-1 != i10) {
            if (i10 > 0) {
                this.f24384b = i10 - 1;
            } else if (!this.f24385c) {
                new Handler(Looper.getMainLooper()).post(new G9(webView));
                this.f24385c = true;
                if (webView instanceof GestureDetector$OnGestureListenerC2941ec) {
                    GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webView;
                    InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                    if (interfaceC3269z5 != null) {
                        String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        ((A5) interfaceC3269z5).a(str4, Ob.a(gestureDetector$OnGestureListenerC2941ec, str4, "TAG", "sendTelemetryEventForNetworkLoad "));
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    String creativeId = gestureDetector$OnGestureListenerC2941ec.getCreativeId();
                    if (creativeId != null) {
                        linkedHashMap.put("creativeId", creativeId);
                    }
                    String impressionId = gestureDetector$OnGestureListenerC2941ec.getImpressionId();
                    if (impressionId != null) {
                        linkedHashMap.put("impressionId", impressionId);
                    }
                    if (gestureDetector$OnGestureListenerC2941ec.f24711x0) {
                        s10 = 2212;
                    } else {
                        s10 = 2211;
                    }
                    linkedHashMap.put("errorCode", Short.valueOf(s10));
                    C2989hc c2989hc = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc != null && (t02 = c2989hc.f24824i) != null) {
                        linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - t02.f24166a.f24230c));
                    }
                    C2989hc c2989hc2 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc2 != null && (z11 = c2989hc2.f24816a) != null && (m10 = z11.m()) != null) {
                        linkedHashMap.put("plType", m10);
                    }
                    C2989hc c2989hc3 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc3 != null && (str3 = c2989hc3.f24820e) != null) {
                        linkedHashMap.put("creativeType", str3);
                    }
                    C2989hc c2989hc4 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc4 != null && (str2 = c2989hc4.f24817b) != null) {
                        linkedHashMap.put("markupType", str2);
                    }
                    C2989hc c2989hc5 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc5 != null && (z10 = c2989hc5.f24816a) != null && (b10 = z10.b()) != null) {
                        linkedHashMap.put("adType", b10);
                    }
                    C2989hc c2989hc6 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc6 != null && (str = c2989hc6.f24818c) != null) {
                        linkedHashMap.put("metadataBlob", str);
                    }
                    C2989hc c2989hc7 = gestureDetector$OnGestureListenerC2941ec.f24678h;
                    if (c2989hc7 != null) {
                        linkedHashMap.put("isRewarded", Boolean.valueOf(c2989hc7.f24822g));
                    }
                    InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                    if (interfaceC3269z52 != null) {
                        String str5 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        ((A5) interfaceC3269z52).a(str5, Ob.a(gestureDetector$OnGestureListenerC2941ec, str5, "TAG", "processTelemetryEvent "));
                    }
                    gestureDetector$OnGestureListenerC2941ec.getListener().a("NetworkLoadLimitExceeded", linkedHashMap);
                }
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (this.f24386d) {
            this.f24386d = false;
            if (webView != null) {
                webView.clearHistory();
            }
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        AbstractC2984h7.a((byte) 1, "BaseWebViewClient", "WebView crash detected, destroying ad");
        view.destroy();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        WebResourceResponse a10 = qf.a(url, this.f24383a);
        return a10 == null ? super.shouldInterceptRequest(view, url) : a10;
    }

    public static final void a(Y1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f24387e.set(false);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        WebResourceResponse a10;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        b(view);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "<this>");
        if (StringsKt.G(ShareTarget.METHOD_GET, request.getMethod(), true)) {
            String uri = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            a10 = qf.a(uri, interfaceC3269z5);
        } else {
            a10 = null;
        }
        return a10 == null ? super.shouldInterceptRequest(view, request) : a10;
    }
}
