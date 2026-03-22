package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class CollapsibleWebView extends CommonWebView {

    /* renamed from: v  reason: collision with root package name */
    private CopyOnWriteArrayList<CommonWebView.h> f28141v;

    /* renamed from: w  reason: collision with root package name */
    private CopyOnWriteArrayList<CommonWebView.h> f28142w;

    /* renamed from: x  reason: collision with root package name */
    private CopyOnWriteArrayList<e> f28143x;

    /* renamed from: y  reason: collision with root package name */
    private String f28144y;

    /* renamed from: z  reason: collision with root package name */
    private String f28145z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doCollapse");
            CollapsibleWebView.this.showToolBarButton("doSpand");
            CollapsibleWebView.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doSpand");
            CollapsibleWebView.this.showToolBarButton("doCollapse");
            CollapsibleWebView.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements CommonWebView.i {
        c() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.i
        public void a(String str) {
            CollapsibleWebView collapsibleWebView = CollapsibleWebView.this;
            collapsibleWebView.b(collapsibleWebView.f28161j, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        Boolean f28149a = Boolean.FALSE;

        /* renamed from: b  reason: collision with root package name */
        String f28150b = "";

        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (!this.f28149a.booleanValue()) {
                CollapsibleWebView.this.a((View) webView, str);
                this.f28149a = Boolean.FALSE;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (!TextUtils.isEmpty(str)) {
                this.f28150b = str;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", "error");
            hashMap.put("url", str2);
            hashMap.put(InMobiNetworkValues.DESCRIPTION, str);
            if (!this.f28149a.booleanValue() && this.f28150b.equals(str2)) {
                this.f28149a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, hashMap);
            }
            CollapsibleWebView.this.a(webView, hashMap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", ProxyConfig.MATCH_HTTP);
            String str = webResourceRequest.getUrl() + "";
            hashMap.put("url", str);
            hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, webResourceResponse.getStatusCode() + "");
            hashMap.put(InMobiNetworkValues.DESCRIPTION, "http error");
            if (!this.f28149a.booleanValue() && (this.f28150b.equals(str) || TextUtils.isEmpty(this.f28150b))) {
                this.f28149a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, hashMap);
            }
            CollapsibleWebView.this.a(webView, hashMap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", TTVideoEngineInterface.PLAY_API_KEY_SSL);
            hashMap.put("url", sslError.getUrl());
            hashMap.put(InMobiNetworkValues.DESCRIPTION, "ssl error");
            if (!this.f28149a.booleanValue()) {
                String str = this.f28150b;
                if (str.equals(sslError.getUrl() + "")) {
                    this.f28149a = Boolean.TRUE;
                    CollapsibleWebView.this.b(webView, hashMap);
                }
            }
            CollapsibleWebView.this.a(webView, hashMap);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            p0.b("CollapsibleWebView", "WebView called onRenderProcessGone");
            return true;
        }
    }

    /* loaded from: classes4.dex */
    public interface e {
        void a(View view, String str);

        void a(View view, Map<String, String> map);

        void b(View view, String str);

        void b(View view, Map<String, String> map);
    }

    public CollapsibleWebView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Iterator<CommonWebView.h> it = this.f28141v.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Iterator<CommonWebView.h> it = this.f28142w.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    private ToolBar.b getCollapseButton() {
        return new ToolBar.b("doCollapse").a(false).a("mbridge_arrow_down_white_blackbg").a(new a());
    }

    private ToolBar.b getExpandButton() {
        return new ToolBar.b("doSpand").a("mbridge_arrow_up_black").a(new b());
    }

    public String getCollapseIconName() {
        return this.f28144y;
    }

    public String getExpandIconName() {
        return this.f28145z;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView
    public void init() {
        super.init();
        this.f28141v = new CopyOnWriteArrayList<>();
        this.f28142w = new CopyOnWriteArrayList<>();
        this.f28143x = new CopyOnWriteArrayList<>();
        this.f28144y = "mbridge_arrow_down_white_blackbg";
        this.f28145z = "mbridge_arrow_up_white";
        useDeeplink();
        initWebViewListener();
        useProgressBar();
        ArrayList<ToolBar.b> arrayList = new ArrayList<>();
        arrayList.add(getCollapseButton());
        arrayList.add(getExpandButton());
        useDefaultToolBar();
        useCustomizedToolBar(arrayList, true);
    }

    public void initWebViewListener() {
        setPageLoadTimtoutListener(new c());
        setPageLoadTimtout(CommonWebView.DEFAULT_JUMP_TIMEOUT);
        addWebViewClient(new d());
    }

    public void setCollapseIconName(String str) {
        this.f28144y = str;
    }

    public void setCollapseListener(CommonWebView.h hVar) {
        this.f28141v.add(hVar);
    }

    public void setCustomizedToolBarMarginWidthPixel(int i10, int i11, int i12, int i13) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f28154c.getLayoutParams();
        layoutParams.setMargins(i10, i11, i12, i13);
        this.f28154c.setLayoutParams(layoutParams);
    }

    public void setExpandIconName(String str) {
        this.f28145z = str;
    }

    public void setExpandListener(CommonWebView.h hVar) {
        this.f28142w.add(hVar);
    }

    public void setPageLoadListener(e eVar) {
        this.f28143x.add(eVar);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, String str) {
        Iterator<e> it = this.f28143x.iterator();
        while (it.hasNext()) {
            it.next().a(view, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, Map<String, String> map) {
        Iterator<e> it = this.f28143x.iterator();
        while (it.hasNext()) {
            it.next().b(view, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Map<String, String> map) {
        Iterator<e> it = this.f28143x.iterator();
        while (it.hasNext()) {
            it.next().a(view, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, String str) {
        Iterator<e> it = this.f28143x.iterator();
        while (it.hasNext()) {
            it.next().b(view, str);
        }
    }
}
