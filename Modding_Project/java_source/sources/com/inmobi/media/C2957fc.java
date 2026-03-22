package com.inmobi.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.fc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2957fc extends Y1 {

    /* renamed from: f  reason: collision with root package name */
    public final C3085nc f24745f;

    /* renamed from: g  reason: collision with root package name */
    public final Nb f24746g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f24747h;

    /* renamed from: i  reason: collision with root package name */
    public final String f24748i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2957fc(C3085nc c3085nc, InterfaceC3269z5 interfaceC3269z5, Nb onRenderViewProcessGone) {
        super(interfaceC3269z5);
        Intrinsics.checkNotNullParameter(onRenderViewProcessGone, "onRenderViewProcessGone");
        this.f24745f = c3085nc;
        this.f24746g = onRenderViewProcessGone;
        this.f24748i = "redirect";
    }

    public final boolean a(WebView webView, String str) {
        boolean z10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", AbstractC2977h0.a("onShouldOverrideUrlLoading  - url - ", str));
        }
        if (webView instanceof GestureDetector$OnGestureListenerC2941ec) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webView;
            z10 = true;
            if (gestureDetector$OnGestureListenerC2941ec.f24712y) {
                webView.loadUrl(str);
                return true;
            } else if (!gestureDetector$OnGestureListenerC2941ec.a()) {
                gestureDetector$OnGestureListenerC2941ec.a(this.f24748i);
                return true;
            } else {
                InterfaceC3269z5 interfaceC3269z52 = this.f24383a;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("RenderViewClient", "Placement type:  " + ((int) gestureDetector$OnGestureListenerC2941ec.getPlacementType()) + "  url:" + str);
                }
                InterfaceC3269z5 interfaceC3269z53 = this.f24383a;
                if (interfaceC3269z53 != null) {
                    ((A5) interfaceC3269z53).a("RenderViewClient", AbstractC2977h0.a("Override URL loading :", str));
                }
                gestureDetector$OnGestureListenerC2941ec.l();
                K6 a10 = M6.a(gestureDetector$OnGestureListenerC2941ec.getLandingPageHandler(), this.f24748i, null, str, null, false, 24);
                InterfaceC3269z5 interfaceC3269z54 = this.f24383a;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).a("RenderViewClient", "Current Index :" + gestureDetector$OnGestureListenerC2941ec.copyBackForwardList().getCurrentIndex() + " Original Url :" + gestureDetector$OnGestureListenerC2941ec.getOriginalUrl() + " URL: " + str);
                }
                InterfaceC3269z5 interfaceC3269z55 = this.f24383a;
                if (interfaceC3269z55 != null) {
                    ((A5) interfaceC3269z55).c("RenderViewClient", "landingPage process result - " + a10.f23777a);
                }
            }
        } else {
            z10 = false;
        }
        InterfaceC3269z5 interfaceC3269z56 = this.f24383a;
        if (interfaceC3269z56 != null) {
            ((A5) interfaceC3269z56).a("RenderViewClient", "Override URL loading :" + str + " returned " + z10);
        }
        return z10;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", AbstractC2977h0.a("Resource loading:", str));
        }
        if (webView instanceof GestureDetector$OnGestureListenerC2941ec) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webView;
            String url = gestureDetector$OnGestureListenerC2941ec.getUrl();
            if (str != null && url != null && !StringsKt.V(url, "file:", false, 2, null)) {
                a(gestureDetector$OnGestureListenerC2941ec);
            }
        }
    }

    @Override // com.inmobi.media.Y1, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        C3085nc c3085nc = this.f24745f;
        if (c3085nc != null) {
            Map a10 = c3085nc.a();
            long j10 = c3085nc.f25064c;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            a10.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
            String a11 = c3085nc.a("WebViewLoadFinished");
            Pd pd2 = Pd.f23988a;
            Pd.b(a11, a10, Td.f24224a);
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", AbstractC2977h0.a("Page load finished:", str));
        }
        if (webView instanceof GestureDetector$OnGestureListenerC2941ec) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webView;
            a(gestureDetector$OnGestureListenerC2941ec);
            if (Intrinsics.areEqual("Loading", gestureDetector$OnGestureListenerC2941ec.f24704u)) {
                gestureDetector$OnGestureListenerC2941ec.c("window.imaiview.broadcastEvent('ready');");
                gestureDetector$OnGestureListenerC2941ec.c("window.mraidview.broadcastEvent('ready');");
                gestureDetector$OnGestureListenerC2941ec.B();
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24383a;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE FINISHED ====");
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24383a;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        C3085nc c3085nc = this.f24745f;
        if (c3085nc != null) {
            Map a10 = c3085nc.a();
            long j10 = c3085nc.f25064c;
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            a10.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
            String a11 = c3085nc.a("PageStarted");
            Pd pd2 = Pd.f23988a;
            Pd.b(a11, a10, Td.f24224a);
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", AbstractC2977h0.a("Page load started:", str));
        }
        if (webView instanceof GestureDetector$OnGestureListenerC2941ec) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24383a;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("RenderViewClient", "Page load started renderview: " + ((GestureDetector$OnGestureListenerC2941ec) webView).getMarkupType());
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webView;
            a(gestureDetector$OnGestureListenerC2941ec);
            gestureDetector$OnGestureListenerC2941ec.setAndUpdateViewState("Loading");
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24383a;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).a("RenderViewClient", "==== CHECKPOINT REACHED - PAGE STARTED ====");
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24383a;
        if (interfaceC3269z54 != null) {
            ((A5) interfaceC3269z54).b();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i10, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("RenderViewClient", "OnReceivedError - errorCode - " + i10 + ", description - " + description + ", url - " + failingUrl);
        }
        super.onReceivedError(view, i10, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        String str;
        Integer num;
        Uri uri;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            StringBuilder sb2 = new StringBuilder("ReceivedHttpError - error - ");
            Boolean bool = null;
            if (webResourceResponse != null) {
                str = webResourceResponse.getReasonPhrase();
            } else {
                str = null;
            }
            sb2.append(str);
            sb2.append(", statusCode - ");
            if (webResourceResponse != null) {
                num = Integer.valueOf(webResourceResponse.getStatusCode());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(" url - ");
            if (webResourceRequest != null) {
                uri = webResourceRequest.getUrl();
            } else {
                uri = null;
            }
            sb2.append(uri);
            sb2.append(" isMainFrame - ");
            if (webResourceRequest != null) {
                bool = Boolean.valueOf(webResourceRequest.isForMainFrame());
            }
            sb2.append(bool);
            ((A5) interfaceC3269z5).b("RenderViewClient", sb2.toString());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        Integer num;
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            StringBuilder sb2 = new StringBuilder("onReceivedSSLError - error - ");
            String str = null;
            if (sslError != null) {
                num = Integer.valueOf(sslError.getPrimaryError());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(" - url - ");
            if (sslError != null) {
                str = sslError.getUrl();
            }
            sb2.append(str);
            ((A5) interfaceC3269z5).b("RenderViewClient", sb2.toString());
        }
    }

    @Override // com.inmobi.media.Y1, android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        boolean didCrash;
        boolean didCrash2;
        int rendererPriorityAtExit;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Build.VERSION.SDK_INT >= 26) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
            if (interfaceC3269z5 != null) {
                StringBuilder sb2 = new StringBuilder("onRenderProcessGone detail did crash- ");
                didCrash2 = detail.didCrash();
                sb2.append(didCrash2);
                sb2.append(" priority - ");
                rendererPriorityAtExit = detail.rendererPriorityAtExit();
                sb2.append(rendererPriorityAtExit);
                ((A5) interfaceC3269z5).c("RenderViewClient", sb2.toString());
            }
            Nb nb2 = this.f24746g;
            didCrash = detail.didCrash();
            nb2.invoke(Boolean.valueOf(didCrash));
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f24383a;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("RenderViewClient", "onRenderProcessGone");
            }
        }
        return super.onRenderProcessGone(view, detail);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", "shouldOverrideUrlLoading Called");
        }
        if (L3.G()) {
            String uri = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            return a(view, uri);
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        super.onReceivedError(view, request, error);
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("RenderViewClient", "OnReceivedError - errorCode - " + error.getErrorCode() + ", description - " + ((Object) error.getDescription()) + ", url - " + request.getUrl() + ", method - " + request.getMethod() + ", isMainFrame - " + request.isForMainFrame());
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", AbstractC2977h0.a("shouldOverrideUrlLoading Called ", url));
        }
        return a(view, url);
    }

    public final void a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        if (this.f24747h || gestureDetector$OnGestureListenerC2941ec.f24672e) {
            return;
        }
        this.f24747h = true;
        InterfaceC3269z5 interfaceC3269z5 = this.f24383a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("RenderViewClient", "Injecting MRAID javascript for two piece creatives.");
        }
        gestureDetector$OnGestureListenerC2941ec.c(gestureDetector$OnGestureListenerC2941ec.getMraidJsString());
    }
}
