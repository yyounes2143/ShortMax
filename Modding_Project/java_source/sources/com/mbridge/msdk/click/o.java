package com.mbridge.msdk.click;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
/* compiled from: WebViewSpider.java */
/* loaded from: classes4.dex */
public class o {

    /* renamed from: r  reason: collision with root package name */
    private static final String f26047r = "o";

    /* renamed from: a  reason: collision with root package name */
    private int f26048a;

    /* renamed from: b  reason: collision with root package name */
    private int f26049b;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f26051d;

    /* renamed from: e  reason: collision with root package name */
    private f f26052e;

    /* renamed from: f  reason: collision with root package name */
    private String f26053f;

    /* renamed from: g  reason: collision with root package name */
    private String f26054g;

    /* renamed from: h  reason: collision with root package name */
    private WebView f26055h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26056i;

    /* renamed from: j  reason: collision with root package name */
    private String f26057j;

    /* renamed from: k  reason: collision with root package name */
    private int f26058k;

    /* renamed from: m  reason: collision with root package name */
    private boolean f26060m;

    /* renamed from: n  reason: collision with root package name */
    boolean f26061n;

    /* renamed from: o  reason: collision with root package name */
    boolean f26062o;

    /* renamed from: l  reason: collision with root package name */
    private boolean f26059l = false;

    /* renamed from: p  reason: collision with root package name */
    private final Runnable f26063p = new d();

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f26064q = new e();

    /* renamed from: c  reason: collision with root package name */
    private Handler f26050c = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f26065a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f26066b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f26067c;

        a(String str, String str2, Context context) {
            this.f26065a = str;
            this.f26066b = str2;
            this.f26067c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            oVar.a(this.f26065a, this.f26066b, this.f26067c, oVar.f26053f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    public class b extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f26069a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f26070b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f26071c;

        b(String str, String str2, Context context) {
            this.f26069a = str;
            this.f26070b = str2;
            this.f26071c = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
                if (o.this.f26060m) {
                    o.this.f26058k = 0;
                    o.this.f();
                    return;
                }
                o.this.f26062o = false;
                if (webView.getTag() == null) {
                    webView.setTag("has_first_started");
                } else {
                    o.this.f26061n = true;
                }
                synchronized (o.f26047r) {
                    o.this.f26053f = str;
                    if (o.this.f26052e == null || !o.this.f26052e.a(str)) {
                        o.this.h();
                    } else {
                        o.this.f26060m = true;
                        o.this.f();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            synchronized (o.f26047r) {
                o.this.f26060m = true;
                o.this.b();
                o.this.f();
            }
            if (o.this.f26052e != null) {
                o.this.f26052e.a(i10, webView.getUrl(), str, o.this.f26057j);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            try {
                if (MBridgeConstans.IS_SP_CBT_CF && sslErrorHandler != null) {
                    sslErrorHandler.cancel();
                }
                if (!TextUtils.isEmpty(this.f26069a) && !TextUtils.isEmpty(this.f26070b)) {
                    new com.mbridge.msdk.foundation.same.report.h(this.f26071c).a(this.f26070b, this.f26069a, webView.getUrl());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                synchronized (o.f26047r) {
                    o.this.f26060m = true;
                    o.this.b();
                    o.this.f();
                }
                if (o.this.f26052e != null) {
                    o.this.f26052e.a(-1, webView.getUrl(), "WebView render process crash.", o.this.f26057j);
                }
                if (webView != null) {
                    webView.destroy();
                }
                return true;
            } catch (Throwable th2) {
                p0.b(o.f26047r, th2.getMessage());
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            synchronized (o.f26047r) {
                try {
                    o oVar = o.this;
                    oVar.f26062o = true;
                    oVar.c();
                    if (o.this.f26060m) {
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    o.this.f26053f = str;
                    if (o.this.f26052e != null && o.this.f26052e.c(str)) {
                        o.this.f26060m = true;
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    if (o.this.f26056i) {
                        HashMap hashMap = new HashMap();
                        if (o.this.f26055h.getUrl() != null) {
                            hashMap.put("Referer", o.this.f26055h.getUrl());
                        }
                        o.this.f26055h.loadUrl(str, hashMap);
                    } else {
                        o.this.f26055h.loadUrl(str);
                    }
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    public class c extends WebChromeClient {
        c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 == 100) {
                try {
                    webView.loadUrl("javascript:window.navigator.vibrate([]);");
                    if (!o.this.f26060m) {
                        o oVar = o.this;
                        if (!oVar.f26062o) {
                            oVar.g();
                        }
                    }
                    if (o.this.f26052e != null) {
                        o.this.f26052e.b(webView.getUrl());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f26059l = true;
            o.this.f26058k = 1;
            o.this.e();
        }
    }

    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f26059l = true;
            o.this.f26058k = 2;
            o.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewSpider.java */
    /* loaded from: classes4.dex */
    public interface f {
        void a(int i10, String str, String str2, String str3);

        void a(String str, boolean z10, String str2);

        boolean a(String str);

        boolean b(String str);

        boolean c(String str);
    }

    public o() {
        this.f26048a = 15000;
        this.f26049b = 3000;
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f26051d = d10;
        if (d10 == null) {
            this.f26051d = com.mbridge.msdk.setting.h.b().a();
        }
        this.f26056i = this.f26051d.I0();
        this.f26048a = (int) this.f26051d.o0();
        this.f26049b = (int) this.f26051d.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f26050c.removeCallbacks(this.f26063p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f26050c.removeCallbacks(this.f26064q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (f26047r) {
            try {
                try {
                    b();
                    this.f26055h.destroy();
                    f fVar = this.f26052e;
                    if (fVar != null) {
                        fVar.a(this.f26053f, this.f26059l, this.f26057j);
                    }
                } catch (Exception e10) {
                    p0.b(f26047r, e10.getMessage());
                } catch (Throwable th2) {
                    p0.b(f26047r, th2.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        synchronized (f26047r) {
            try {
                try {
                    b();
                    f fVar = this.f26052e;
                    if (fVar != null) {
                        fVar.a(this.f26053f, this.f26059l, this.f26057j);
                    }
                } catch (Exception e10) {
                    p0.b(f26047r, e10.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        c();
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        d();
        j();
    }

    private void i() {
        this.f26050c.postDelayed(this.f26063p, this.f26049b);
    }

    private void j() {
        this.f26050c.postDelayed(this.f26064q, this.f26048a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        c();
        d();
    }

    public void a(String str, String str2, Context context, String str3, String str4, f fVar) {
        if (fVar != null) {
            this.f26054g = str4;
            this.f26053f = str3;
            this.f26052e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    public void a(String str, String str2, Context context, String str3, f fVar) {
        if (fVar != null) {
            this.f26053f = str3;
            this.f26052e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    private void a(String str, String str2, Context context) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(str, str2, context, this.f26053f);
        } else {
            this.f26050c.post(new a(str, str2, context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, Context context, String str3) {
        try {
            a(context, str, str2);
            if (!TextUtils.isEmpty(this.f26054g)) {
                this.f26055h.getSettings().setDefaultTextEncodingName("utf-8");
                this.f26049b = 2000;
                this.f26048a = 2000;
                p0.c(f26047r, this.f26054g);
                this.f26055h.loadDataWithBaseURL(str3, this.f26054g, "*/*", "utf-8", str3);
            } else if (this.f26056i) {
                HashMap hashMap = new HashMap();
                if (this.f26055h.getUrl() != null) {
                    hashMap.put("Referer", this.f26055h.getUrl());
                }
                this.f26055h.loadUrl(str3, hashMap);
            } else {
                this.f26055h.loadUrl(str3);
            }
        } catch (Throwable th2) {
            try {
                f fVar = this.f26052e;
                if (fVar != null) {
                    fVar.a(0, this.f26053f, th2.getMessage(), this.f26057j);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(Context context, String str, String str2) {
        WebView webView = new WebView(context);
        this.f26055h = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f26055h.getSettings().setCacheMode(2);
        this.f26055h.getSettings().setLoadsImagesAutomatically(false);
        this.f26055h.setWebViewClient(new b(str2, str, context));
        this.f26055h.setWebChromeClient(new c());
    }
}
