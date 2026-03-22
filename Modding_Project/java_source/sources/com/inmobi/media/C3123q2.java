package com.inmobi.media;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3123q2;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.q2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3123q2 extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f25171a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public boolean f25172b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C3043l2 f25173c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Handler f25174d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C3138r2 f25175e;

    public C3123q2(C3043l2 c3043l2, C3138r2 c3138r2, Handler handler) {
        this.f25173c = c3043l2;
        this.f25174d = handler;
        this.f25175e = c3138r2;
    }

    public static final void a(C3123q2 this$0, C3043l2 click, Handler handler, C3138r2 this$1, final WebView webView) {
        AdConfig.ImaiConfig imaiConfig;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        try {
            imaiConfig = C3234x2.f25418g;
            Thread.sleep((imaiConfig != null ? imaiConfig.getPingInterval() : 0) * 1000);
        } catch (InterruptedException unused) {
        }
        if (this$0.f25171a.get()) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
        String str = click.f24944b;
        click.f24951i.set(true);
        handler.post(new Runnable() { // from class: ub.z5
            @Override // java.lang.Runnable
            public final void run() {
                C3123q2.a(webView);
            }
        });
        this$1.f25222a.a(click, EnumC3093o4.f25091e);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f25171a.set(true);
        if (!this.f25172b && !this.f25173c.f24951i.get()) {
            this.f25175e.f25222a.a(this.f25173c);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(final WebView webView, String str, Bitmap bitmap) {
        this.f25172b = false;
        final C3043l2 c3043l2 = this.f25173c;
        final Handler handler = this.f25174d;
        final C3138r2 c3138r2 = this.f25175e;
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(new Runnable() { // from class: ub.a6
            @Override // java.lang.Runnable
            public final void run() {
                C3123q2.a(C3123q2.this, c3043l2, handler, c3138r2, webView);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i10, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        this.f25172b = true;
        this.f25175e.f25222a.a(this.f25173c, EnumC3093o4.f25091e);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.f25172b = true;
        this.f25175e.f25222a.a(this.f25173c, EnumC3093o4.f25091e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        return xf.a(view, detail, "click_mgr");
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        return (this.f25173c.f24946d || Intrinsics.areEqual(request.getUrl().toString(), this.f25173c.f24944b)) ? false : true;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        this.f25172b = true;
        this.f25175e.f25222a.a(this.f25173c, EnumC3093o4.f25091e);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        C3043l2 c3043l2 = this.f25173c;
        return (c3043l2.f24946d || Intrinsics.areEqual(url, c3043l2.f24944b)) ? false : true;
    }

    public static final void a(WebView webView) {
        try {
            uf ufVar = webView instanceof uf ? (uf) webView : null;
            if (ufVar == null || ufVar.f25348a) {
                return;
            }
            ((uf) webView).stopLoading();
        } catch (Throwable th2) {
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(th2);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }
}
