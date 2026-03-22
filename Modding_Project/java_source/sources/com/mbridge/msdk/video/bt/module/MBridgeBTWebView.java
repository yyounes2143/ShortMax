package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.video.signal.impl.k;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeBTWebView extends MBridgeBTWebViewDiff {

    /* renamed from: p  reason: collision with root package name */
    private String f30633p;

    /* renamed from: q  reason: collision with root package name */
    private String f30634q;

    /* renamed from: r  reason: collision with root package name */
    private String f30635r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f30636s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f30637t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f30638u;

    /* renamed from: v  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f30639v;

    /* renamed from: w  reason: collision with root package name */
    private List<CampaignEx> f30640w;

    /* renamed from: x  reason: collision with root package name */
    private WebView f30641x;

    /* loaded from: classes6.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTWebView.this.f30641x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    jSONObject.put("id", MBridgeBTWebView.this.f30514d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(TextureRenderKeys.KEY_IS_X, String.valueOf(view.getX()));
                    jSONObject2.put(TextureRenderKeys.KEY_IS_Y, String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f30641x, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f30641x, "onClicked", MBridgeBTWebView.this.f30514d);
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeBTWebView.this.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WindVaneWebView windVaneWebView = MBridgeBTWebView.this.webView;
                if (windVaneWebView != null) {
                    windVaneWebView.clearWebView();
                    MBridgeBTWebView.this.webView.release();
                }
                MBridgeBTWebView.this.f30633p = null;
                MBridgeBTWebView.this.f30634q = null;
                MBridgeBTWebView.this.f30635r = null;
                if (MBridgeBTWebView.this.f30641x != null) {
                    MBridgeBTWebView.this.f30641x = null;
                }
            } catch (Throwable th2) {
                p0.a(BTBaseView.TAG, th2.getMessage());
            }
        }
    }

    public MBridgeBTWebView(Context context) {
        super(context);
        this.f30636s = false;
        this.f30638u = false;
    }

    private void setIntentFilter(com.mbridge.msdk.mbsignalcommon.base.c cVar) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setFilter(cVar);
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                jSONObject2.put("id", this.f30514d);
                jSONObject2.put(CallAppDataKey.KEY_TRACKING_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a((WebView) this.webView, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "broadcast", this.f30514d);
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        WebView webView = this.f30641x;
        if (webView != null) {
            BTBaseView.a(webView, "onPlayerCloseBtnClicked", this.f30514d);
        }
    }

    public List<CampaignEx> getCampaigns() {
        return this.f30640w;
    }

    public String getFilePath() {
        return this.f30634q;
    }

    public String getFileURL() {
        return this.f30633p;
    }

    public String getHtml() {
        return this.f30635r;
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f30512b;
    }

    public com.mbridge.msdk.videocommon.setting.c getRewardUnitSetting() {
        return this.f30639v;
    }

    public WindVaneWebView getWebView() {
        return this.webView;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int i10;
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        this.webView = windVaneWebView;
        windVaneWebView.setBackgroundColor(0);
        this.webView.setVisibility(0);
        k kVar = new k(null, this.f30512b, this.f30640w);
        this.jsCommon = kVar;
        kVar.setUnitId(this.f30513c);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        this.webView.setObject(this.jsCommon);
        this.webView.setMraidObject(this);
        this.webView.setWebViewListener(new a());
        addView(this.webView, new FrameLayout.LayoutParams(-1, -1));
        setOnClickListener(new b());
        try {
            ImageView imageView = new ImageView(getContext());
            this.f30637t = imageView;
            imageView.setImageResource(findDrawable("mbridge_reward_close"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.gravity = 8388661;
            layoutParams.setMargins(30, 30, 30, 30);
            this.f30637t.setLayoutParams(layoutParams);
            ImageView imageView2 = this.f30637t;
            if (this.f30636s) {
                i10 = 4;
            } else {
                i10 = 8;
            }
            imageView2.setVisibility(i10);
            CampaignEx campaignEx = this.f30512b;
            if (campaignEx != null && campaignEx.isMraid()) {
                this.f30637t.setVisibility(4);
            }
            this.f30637t.setOnClickListener(new c());
            addView(this.f30637t);
        } catch (Throwable th2) {
            p0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPressed() {
        if (this.webView != null) {
            com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemBackPressed", this.f30514d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (configuration.orientation == 2) {
                    jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "landscape");
                } else {
                    jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "portrait");
                }
                jSONObject.put("instanceId", this.f30514d);
                f.a().a((WebView) this.webView, AdUnitActivity.EXTRA_ORIENTATION, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        if (this.f30638u) {
            return;
        }
        this.f30638u = true;
        try {
            if (this.webView != null) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemDestory", this.f30514d);
            }
            new Handler(Looper.getMainLooper()).postDelayed(new d(), 500L);
            setOnClickListener(null);
            removeAllViews();
        } catch (Throwable th2) {
            p0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        t0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        t0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        t0.b(campaign, this);
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        try {
            String clickURL = this.f30512b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.f30512b.setClickURL(str);
                reportOpen(str);
            }
            this.f30512b.setClickTempSource(2);
            this.f30512b.setClickType(2);
            this.f30512b.setTriggerClickSource(2);
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), this.f30513c);
            aVar.a(this);
            aVar.a(this.f30512b);
            this.f30512b.setClickURL(clickURL);
        } catch (Throwable th2) {
            p0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void preload() {
        if (!TextUtils.isEmpty(this.f30633p)) {
            this.webView.loadUrl(this.f30633p);
        } else if (!TextUtils.isEmpty(this.f30634q)) {
            this.webView.loadUrl(this.f30634q);
        } else if (!TextUtils.isEmpty(this.f30635r)) {
            this.webView.loadDataWithBaseURL("", this.f30635r, "text/html", "UTF-8", null);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff
    public void reportOpen(String str) {
        try {
            CampaignEx mraidCampaign = getMraidCampaign();
            if (mraidCampaign != null) {
                new h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.f30513c, str, this.f30512b.isBidCampaign());
            }
        } catch (Throwable th2) {
            p0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void setCampaigns(List<CampaignEx> list) {
        this.f30640w = list;
    }

    public void setCreateWebView(WebView webView) {
        this.f30641x = webView;
    }

    public void setFilePath(String str) {
        this.f30634q = str;
    }

    public void setFileURL(String str) {
        this.f30633p = str;
        if (!TextUtils.isEmpty(str)) {
            boolean contains = str.contains("play.google.com");
            setWebviewClickable(!contains);
            if (contains) {
                setIntentFilter(new com.mbridge.msdk.mbsignalcommon.base.c());
            }
        }
    }

    public void setHtml(String str) {
        this.f30635r = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        this.f30639v = cVar;
    }

    public void setTempTypeForMetrics(int i10) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setTempTypeForMetrics(i10);
        }
    }

    public void setWebViewLocalRequestId(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setLocalRequestId(str);
        }
    }

    public void setWebViewRid(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setRid(str);
        }
    }

    public void setWebviewClickable(boolean z10) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setClickable(z10);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        int i10;
        try {
            ImageView imageView = this.f30637t;
            if (z10) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            imageView.setVisibility(i10);
        } catch (Throwable th2) {
            p0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public boolean webviewGoBack() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null && windVaneWebView.canGoBack()) {
            this.webView.goBack();
            return true;
        }
        return false;
    }

    public boolean webviewGoForward() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null && windVaneWebView.canGoForward()) {
            this.webView.goForward();
            return true;
        }
        return false;
    }

    public void webviewLoad(int i10) {
        if (this.jsCommon == null) {
            this.jsCommon = new k(null, this.f30512b, this.f30640w);
        }
        CampaignEx campaignEx = this.f30512b;
        if (campaignEx != null) {
            this.jsCommon.c(campaignEx);
        } else {
            List<CampaignEx> list = this.f30640w;
            if (list != null && list.size() > 0) {
                this.jsCommon.a(this.f30640w);
                if (this.f30640w.size() == 1) {
                    this.jsCommon.c(this.f30640w.get(0));
                }
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f30639v;
        if (cVar != null) {
            this.jsCommon.setRewardUnitSetting(cVar);
        }
        this.jsCommon.setUnitId(this.f30513c);
        this.jsCommon.c(this.f30514d);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        if (i10 == 1) {
            this.jsCommon.r();
        }
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setObject(this.jsCommon);
        }
        CampaignEx campaignEx2 = this.f30512b;
        if (campaignEx2 != null && campaignEx2.isMraid()) {
            this.f30637t.setVisibility(4);
        }
        preload();
    }

    public boolean webviewReload() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.reload();
            return true;
        }
        return false;
    }

    public MBridgeBTWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30636s = false;
        this.f30638u = false;
    }

    /* loaded from: classes6.dex */
    class a extends com.mbridge.msdk.mbsignalcommon.listener.a {
        a() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(Object obj) {
            super.a(obj);
            try {
                k kVar = MBridgeBTWebView.this.jsCommon;
                String str = "";
                String c10 = kVar != null ? kVar.c() : "";
                if (TextUtils.isEmpty(c10)) {
                    p0.a("RVWindVaneWebView", "getEndScreenInfo failed");
                } else {
                    str = Base64.encodeToString(c10.getBytes(), 2);
                    p0.a("RVWindVaneWebView", "getEndScreenInfo success");
                }
                f.a().b(obj, str);
            } catch (Throwable th2) {
                p0.a("RVWindVaneWebView", th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (MBridgeBTWebView.this.f30641x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject2.put("result", 1);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f30641x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f30641x, e10.getMessage());
                    p0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
            f.a().a(MBridgeBTWebView.this.webView);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            if (MBridgeBTWebView.this.f30641x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f30641x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f30641x, e10.getMessage());
                    p0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            if (MBridgeBTWebView.this.f30641x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f30514d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", sslError.toString());
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f30641x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f30641x, e10.getMessage());
                    p0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }
}
