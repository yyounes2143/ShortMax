package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import java.lang.reflect.Method;
/* loaded from: classes5.dex */
public class BrowserView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private CampaignEx f27532a;

    /* renamed from: b  reason: collision with root package name */
    private String f27533b;

    /* renamed from: c  reason: collision with root package name */
    private e f27534c;

    /* renamed from: d  reason: collision with root package name */
    private WebView f27535d;

    /* renamed from: e  reason: collision with root package name */
    private ProgressBar f27536e;

    /* renamed from: f  reason: collision with root package name */
    private ToolBar f27537f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z10;
            if (BrowserView.this.f27535d != null) {
                BrowserView.this.f27535d.stopLoading();
            }
            String str = (String) view.getTag();
            boolean z11 = false;
            if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD)) {
                BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(true);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoBack()) {
                    BrowserView.this.f27535d.goBack();
                }
                View item = BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoBack()) {
                    z11 = true;
                }
                item.setEnabled(z11);
            } else if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD)) {
                BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoForward()) {
                    BrowserView.this.f27535d.goForward();
                }
                View item2 = BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoForward()) {
                    z11 = true;
                }
                item2.setEnabled(z11);
            } else if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.REFRESH)) {
                View item3 = BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoBack()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                item3.setEnabled(z10);
                View item4 = BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
                if (BrowserView.this.f27535d != null && BrowserView.this.f27535d.canGoForward()) {
                    z11 = true;
                }
                item4.setEnabled(z11);
                if (BrowserView.this.f27535d != null) {
                    BrowserView.this.f27535d.loadUrl(BrowserView.this.f27533b);
                }
            } else if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.EXITS) && BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            p0.c("BrowserView", "onLoadResource 开始! = " + str);
            if (BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.c(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.a(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            p0.c("BrowserView", "开始! = " + str);
            BrowserView.this.f27533b = str;
            if (BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.a(webView, str, bitmap);
            }
            BrowserView.this.f27536e.setVisible(true);
            BrowserView.this.f27536e.setProgressState(5);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            if (BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.a(webView, i10, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                } catch (Throwable th2) {
                    p0.b("BrowserView", th2.getMessage());
                    return true;
                }
            }
            if (BrowserView.this.f27534c != null) {
                BrowserView.this.f27534c.a();
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            p0.c("BrowserView", "js大跳! = " + str);
            BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
            BrowserView.this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
            if (BrowserView.this.f27534c == null) {
                return false;
            }
            return BrowserView.this.f27534c.b(webView, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends WebChromeClient {

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BrowserView.this.f27536e.setVisible(false);
            }
        }

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
                BrowserView.this.f27536e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d extends WebChromeClient {

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BrowserView.this.f27536e.setVisible(false);
            }
        }

        d() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 == 100) {
                BrowserView.this.f27536e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface e {
        void a();

        void a(WebView webView, int i10, String str, String str2);

        void a(WebView webView, String str);

        void a(WebView webView, String str, Bitmap bitmap);

        boolean b(WebView webView, String str);

        void c(WebView webView, String str);
    }

    public BrowserView(Context context, CampaignEx campaignEx) {
        super(context);
        this.f27532a = campaignEx;
        init();
    }

    private WebView getWebView() {
        WebChromeClient dVar;
        WebView webView = new WebView(getContext());
        try {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            settings.setAllowFileAccess(true);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            if (Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(false);
            }
            settings.setMediaPlaybackRequiresUserGesture(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            try {
                settings.setMixedContentMode(0);
            } catch (Exception e10) {
                p0.b("BrowserView", e10.getMessage());
            }
            settings.setDatabaseEnabled(true);
            String path = getContext().getDir("database", 0).getPath();
            settings.setDatabasePath(path);
            settings.setGeolocationEnabled(true);
            settings.setGeolocationDatabasePath(path);
            try {
                Method declaredMethod = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(settings, Boolean.FALSE);
            } catch (Exception e11) {
                p0.b("BrowserView", e11.getMessage());
            }
        } catch (Throwable th2) {
            p0.b("BrowserView", th2.getMessage());
        }
        webView.setDownloadListener(new com.mbridge.msdk.foundation.same.webview.a(this.f27532a));
        webView.setWebViewClient(new b());
        if (l0.r() <= 10) {
            dVar = new c();
        } else {
            dVar = new d();
        }
        webView.setWebChromeClient(dVar);
        return webView;
    }

    public void destroy() {
        try {
            WebView webView = this.f27535d;
            if (webView != null) {
                webView.setWebViewClient(null);
                this.f27535d.destroy();
                this.f27535d = null;
                removeAllViews();
            }
        } catch (Throwable th2) {
            p0.b("BrowserView", th2.getMessage());
        }
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        a();
        this.f27536e.initResource(true);
        this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(false);
        this.f27537f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
        this.f27537f.setOnItemClickListener(new a());
    }

    public void loadUrl(String str) {
        WebView webView = this.f27535d;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public void setListener(e eVar) {
        this.f27534c = eVar;
    }

    public void setWebView(WebView webView) {
        this.f27535d = webView;
    }

    private void a() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f27536e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.f27535d == null) {
                this.f27535d = getWebView();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.f27535d.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            p0.b("BrowserView", "webview is error", th2);
        }
        this.f27537f = new ToolBar(getContext());
        this.f27537f.setLayoutParams(new LinearLayout.LayoutParams(-1, u0.a(getContext(), 40.0f)));
        this.f27537f.setBackgroundColor(-1);
        addView(this.f27536e);
        WebView webView = this.f27535d;
        if (webView != null) {
            addView(webView);
        }
        addView(this.f27537f);
    }

    public BrowserView(Context context) {
        super(context);
        init();
    }

    public BrowserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
