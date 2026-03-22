package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.webview.ProgressBar;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class CommonWebView extends LinearLayout {
    public static int DEFAULT_JUMP_TIMEOUT = 10000;

    /* renamed from: a  reason: collision with root package name */
    private int f28152a;

    /* renamed from: b  reason: collision with root package name */
    private int f28153b;

    /* renamed from: c  reason: collision with root package name */
    protected ToolBar f28154c;

    /* renamed from: d  reason: collision with root package name */
    protected ToolBar f28155d;

    /* renamed from: e  reason: collision with root package name */
    protected ProgressBar f28156e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f28157f;

    /* renamed from: g  reason: collision with root package name */
    private View.OnClickListener f28158g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.commonwebview.b f28159h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.commonwebview.a f28160i;

    /* renamed from: j  reason: collision with root package name */
    protected BaseWebView f28161j;

    /* renamed from: k  reason: collision with root package name */
    private View.OnClickListener f28162k;

    /* renamed from: l  reason: collision with root package name */
    private View.OnClickListener f28163l;

    /* renamed from: m  reason: collision with root package name */
    private View.OnClickListener f28164m;

    /* renamed from: n  reason: collision with root package name */
    private View.OnClickListener f28165n;

    /* renamed from: o  reason: collision with root package name */
    private Handler f28166o;

    /* renamed from: p  reason: collision with root package name */
    private int f28167p;

    /* renamed from: q  reason: collision with root package name */
    private WebViewClient f28168q;

    /* renamed from: r  reason: collision with root package name */
    private String f28169r;

    /* renamed from: s  reason: collision with root package name */
    private i f28170s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f28171t;

    /* renamed from: u  reason: collision with root package name */
    private final Runnable f28172u;

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.b("CommonWebView", "webview js!！超时上限：" + CommonWebView.this.f28167p + "ms");
            if (CommonWebView.this.f28170s != null) {
                CommonWebView.this.f28171t = false;
                CommonWebView.this.f28170s.a(CommonWebView.this.f28169r);
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            p0.c("CommonWebView", "newProgress! 开始! = " + str);
            CommonWebView.this.f28156e.setVisible(true);
            CommonWebView.this.f28156e.setProgressState(5);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    p0.b("CommonWebView", th2.getMessage());
                }
            }
            return true;
        }
    }

    /* loaded from: classes4.dex */
    class c extends WebChromeClient {

        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CommonWebView.this.f28156e.setVisible(false);
            }
        }

        c() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            p0.c("CommonWebView", "newProgress! = " + i10);
            if (i10 == 100) {
                CommonWebView.this.f28156e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseWebView baseWebView = CommonWebView.this.f28161j;
            if (baseWebView != null) {
                baseWebView.stopLoading();
                String str = (String) view.getTag();
                if (TextUtils.equals(str, ToolBar.BACKWARD)) {
                    CommonWebView.this.f28155d.getItem(ToolBar.FORWARD).setEnabled(true);
                    if (CommonWebView.this.f28161j.canGoBack()) {
                        CommonWebView.this.f28161j.goBack();
                    }
                    CommonWebView.this.f28155d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f28161j.canGoBack());
                    if (CommonWebView.this.f28162k != null) {
                        CommonWebView.this.f28162k.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.FORWARD)) {
                    CommonWebView.this.f28155d.getItem(ToolBar.BACKWARD).setEnabled(true);
                    if (CommonWebView.this.f28161j.canGoForward()) {
                        CommonWebView.this.f28161j.goForward();
                    }
                    CommonWebView.this.f28155d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f28161j.canGoForward());
                    if (CommonWebView.this.f28163l != null) {
                        CommonWebView.this.f28163l.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.REFRESH)) {
                    CommonWebView.this.f28155d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f28161j.canGoBack());
                    CommonWebView.this.f28155d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f28161j.canGoForward());
                    CommonWebView.this.f28161j.reload();
                    if (CommonWebView.this.f28164m != null) {
                        CommonWebView.this.f28164m.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.EXITS)) {
                    if (CommonWebView.this.f28158g != null) {
                        CommonWebView.this.f28158g.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.OPEN_BY_BROWSER)) {
                    if (CommonWebView.this.f28165n != null) {
                        CommonWebView.this.f28165n.onClick(view);
                    }
                    com.mbridge.msdk.click.c.c(CommonWebView.this.getContext(), CommonWebView.this.f28161j.getUrl());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends WebViewClient {
        e() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f28155d.getItem(ToolBar.BACKWARD).setEnabled(true);
            CommonWebView.this.f28155d.getItem(ToolBar.FORWARD).setEnabled(false);
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class f extends WebViewClient {
        f() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (t0.a.b(str)) {
                t0.a.a(CommonWebView.this.getContext(), str, null);
            }
            return CommonWebView.this.a(webView, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g extends WebViewClient {
        g() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            CommonWebView.this.f28171t = false;
            CommonWebView.this.a();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            CommonWebView.this.f28169r = str;
            if (!CommonWebView.this.f28171t) {
                CommonWebView.this.f28171t = true;
                CommonWebView.this.c();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            CommonWebView.this.f28171t = false;
            CommonWebView.this.a();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f28169r = str;
            if (CommonWebView.this.f28171t) {
                CommonWebView.this.a();
            }
            CommonWebView.this.f28171t = true;
            CommonWebView.this.c();
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public interface h {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface i {
        void a(String str);
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28172u = new a();
        init();
    }

    public void addWebChromeClient(WebChromeClient webChromeClient) {
        this.f28160i.a(webChromeClient);
    }

    public void addWebViewClient(WebViewClient webViewClient) {
        this.f28159h.a(webViewClient);
    }

    public View findToolBarButton(String str) {
        View view;
        ToolBar toolBar;
        ToolBar toolBar2 = this.f28154c;
        if (toolBar2 != null) {
            view = toolBar2.getItem(str);
        } else {
            view = null;
        }
        if (view == null && (toolBar = this.f28155d) != null) {
            return toolBar.getItem(str);
        }
        return view;
    }

    public String getUrl() {
        BaseWebView baseWebView = this.f28161j;
        if (baseWebView == null) {
            return "";
        }
        return baseWebView.getUrl();
    }

    public WebView getWebView() {
        return this.f28161j;
    }

    public void hideCustomizedToolBar() {
        ToolBar toolBar = this.f28154c;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideDefaultToolBar() {
        ToolBar toolBar = this.f28155d;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideToolBarButton(String str) {
        View findToolBarButton = findToolBarButton(str);
        if (findToolBarButton != null) {
            findToolBarButton.setVisibility(8);
        }
    }

    public void hideToolBarTitle() {
        this.f28154c.hideTitle();
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        this.f28157f = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        addView(this.f28157f, layoutParams);
        this.f28152a = u0.a(getContext(), 40.0f);
        this.f28153b = u0.a(getContext(), 40.0f);
        this.f28159h = new com.mbridge.msdk.mbsignalcommon.commonwebview.b();
        this.f28160i = new com.mbridge.msdk.mbsignalcommon.commonwebview.a();
        initWebview();
    }

    public void initWebview() {
        try {
            if (this.f28161j == null) {
                this.f28161j = new BaseWebView(getContext());
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(10);
            this.f28161j.setLayoutParams(layoutParams);
            BaseWebView baseWebView = this.f28161j;
            com.mbridge.msdk.mbsignalcommon.base.b bVar = baseWebView.mWebViewClient;
            baseWebView.setWebViewClient(this.f28159h);
            this.f28161j.setWebChromeClient(this.f28160i);
            addWebViewClient(bVar);
        } catch (Throwable th2) {
            p0.b("CommonWebView", "webview is error", th2);
        }
        this.f28157f.addView(this.f28161j);
    }

    public void loadUrl(String str) {
        this.f28161j.loadUrl(str);
        if (this.f28168q != null) {
            c();
        }
    }

    public void onBackwardClicked(View.OnClickListener onClickListener) {
        this.f28162k = onClickListener;
    }

    public void onForwardClicked(View.OnClickListener onClickListener) {
        this.f28163l = onClickListener;
    }

    public void onOpenByBrowserClicked(View.OnClickListener onClickListener) {
        this.f28165n = onClickListener;
    }

    public void onRefreshClicked(View.OnClickListener onClickListener) {
        this.f28164m = onClickListener;
    }

    public void removeWebChromeClient(WebChromeClient webChromeClient) {
        this.f28160i.b(webChromeClient);
    }

    public void removeWebViewClient(WebViewClient webViewClient) {
        this.f28159h.b(webViewClient);
    }

    public void setCustomizedToolBarFloating() {
        ((ViewGroup) this.f28154c.getParent()).removeView(this.f28154c);
        this.f28157f.addView(this.f28154c);
    }

    public void setCustomizedToolBarUnfloating() {
        ((ViewGroup) this.f28154c.getParent()).removeView(this.f28154c);
        addView(this.f28154c, 0);
    }

    public void setExitsClickListener(View.OnClickListener onClickListener) {
        this.f28158g = onClickListener;
    }

    public void setPageLoadTimtout(int i10) {
        this.f28167p = i10;
        if (this.f28166o == null) {
            this.f28166o = new Handler(Looper.getMainLooper());
        }
        if (this.f28168q == null) {
            g gVar = new g();
            this.f28168q = gVar;
            addWebViewClient(gVar);
        }
    }

    public void setPageLoadTimtoutListener(i iVar) {
        this.f28170s = iVar;
    }

    public void setToolBarTitle(String str, int i10) {
        this.f28154c.setTitle(str, i10);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        addWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        addWebViewClient(webViewClient);
    }

    public void showCustomizedToolBar() {
        ToolBar toolBar = this.f28154c;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showDefaultToolBar() {
        ToolBar toolBar = this.f28155d;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showToolBarButton(String str) {
        View findToolBarButton = findToolBarButton(str);
        if (findToolBarButton != null) {
            findToolBarButton.setVisibility(0);
        }
    }

    public void showToolBarTitle() {
        this.f28154c.showTitle();
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList, boolean z10) {
        a(arrayList, z10);
    }

    public void useDeeplink() {
        addWebViewClient(new f());
    }

    public void useDefaultToolBar() {
        b();
    }

    public void useProgressBar() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f28156e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        addWebViewClient(new b());
        addWebChromeClient(new c());
        addView(this.f28156e);
        this.f28156e.initResource(true);
    }

    private void b() {
        if (this.f28155d != null) {
            return;
        }
        this.f28155d = new ToolBar(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.f28153b);
        layoutParams.bottomMargin = 0;
        this.f28155d.setLayoutParams(layoutParams);
        this.f28155d.setBackgroundColor(-1);
        this.f28155d.setOnItemClickListener(new d());
        addWebViewClient(new e());
        addView(this.f28155d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f28166o.postDelayed(this.f28172u, this.f28167p);
    }

    public void setToolBarTitle(String str) {
        this.f28154c.setTitle(str);
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList) {
        a(arrayList, false);
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28172u = new a();
        init();
    }

    private void a(ArrayList<ToolBar.b> arrayList, boolean z10) {
        if (this.f28154c != null) {
            return;
        }
        ToolBar.a aVar = new ToolBar.a();
        aVar.a(40);
        aVar.b(80);
        ToolBar toolBar = new ToolBar(getContext(), aVar, arrayList);
        this.f28154c = toolBar;
        toolBar.setBackgroundColor(Color.argb(153, 255, 255, 255));
        if (z10) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f28152a);
            layoutParams.addRule(10);
            this.f28154c.setLayoutParams(layoutParams);
            this.f28157f.addView(this.f28154c);
            return;
        }
        this.f28154c.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f28152a));
        addView(this.f28154c, 0);
    }

    public CommonWebView(Context context) {
        super(context);
        this.f28172u = new a();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(WebView webView, String str) {
        boolean z10 = false;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri parse = Uri.parse(str);
            if (!parse.getScheme().equals(ProxyConfig.MATCH_HTTP) && !parse.getScheme().equals("https")) {
                if (parse.getScheme().equals(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK)) {
                    Intent parseUri = Intent.parseUri(str, 1);
                    String str2 = parseUri.getPackage();
                    if (!TextUtils.isEmpty(str2) && getContext().getPackageManager().getLaunchIntentForPackage(str2) != null) {
                        parseUri.setComponent(null);
                        parseUri.setSelector(null);
                        parseUri.setFlags(268435456);
                        getContext().startActivity(parseUri);
                        return true;
                    }
                    String stringExtra = parseUri.getStringExtra("browser_fallback_url");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        Uri parse2 = Uri.parse(str);
                        if (!parse2.getScheme().equals(ProxyConfig.MATCH_HTTP) && !parse2.getScheme().equals("https")) {
                            str = stringExtra;
                        }
                        webView.loadUrl(stringExtra);
                        return false;
                    }
                }
                if (com.mbridge.msdk.click.c.d(getContext(), str)) {
                    p0.b("CommonWebView", "openDeepLink");
                    return true;
                } else if (!TextUtils.isEmpty(str)) {
                    if (str.startsWith(ProxyConfig.MATCH_HTTP) || str.startsWith("https")) {
                        z10 = true;
                    }
                    return !z10;
                }
            }
            return false;
        } catch (Throwable th2) {
            p0.b("CommonWebView", th2.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f28166o.removeCallbacks(this.f28172u);
    }
}
