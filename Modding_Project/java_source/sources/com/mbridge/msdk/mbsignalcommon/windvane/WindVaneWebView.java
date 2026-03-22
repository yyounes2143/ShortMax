package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
/* loaded from: classes4.dex */
public class WindVaneWebView extends BaseWebView {

    /* renamed from: d  reason: collision with root package name */
    protected j f28223d;

    /* renamed from: e  reason: collision with root package name */
    protected b f28224e;

    /* renamed from: f  reason: collision with root package name */
    protected e f28225f;

    /* renamed from: g  reason: collision with root package name */
    private Object f28226g;

    /* renamed from: h  reason: collision with root package name */
    private Object f28227h;

    /* renamed from: i  reason: collision with root package name */
    private String f28228i;

    /* renamed from: j  reason: collision with root package name */
    private c f28229j;

    /* renamed from: k  reason: collision with root package name */
    private String f28230k;

    /* renamed from: l  reason: collision with root package name */
    private String f28231l;

    /* renamed from: m  reason: collision with root package name */
    private CampaignEx f28232m;

    /* renamed from: n  reason: collision with root package name */
    private int f28233n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f28234o;

    /* renamed from: p  reason: collision with root package name */
    private float f28235p;

    /* renamed from: q  reason: collision with root package name */
    private float f28236q;

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WindVaneWebView.this.f28234o = true;
            WindVaneWebView.this.destroy();
        }
    }

    public WindVaneWebView(Context context) {
        super(context);
        this.f28234o = false;
        this.f28235p = 0.0f;
        this.f28236q = 0.0f;
    }

    public void clearWebView() {
        if (!this.f28234o) {
            loadUrl("about:blank");
        }
    }

    public CampaignEx getCampaignEx() {
        return this.f28232m;
    }

    public String getCampaignId() {
        return this.f28228i;
    }

    public Object getJsObject(String str) {
        e eVar = this.f28225f;
        if (eVar == null) {
            return null;
        }
        return eVar.a(str);
    }

    public String getLocalRequestId() {
        return this.f28231l;
    }

    public Object getMraidObject() {
        return this.f28227h;
    }

    public Object getObject() {
        return this.f28226g;
    }

    public String getRid() {
        return this.f28230k;
    }

    public b getSignalCommunication() {
        return this.f28224e;
    }

    public c getWebViewListener() {
        return this.f28229j;
    }

    public boolean isDestoryed() {
        return this.f28234o;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null && (bVar.a() instanceof IntentFilter)) {
            String url = getUrl();
            if (!TextUtils.isEmpty(url) && url.contains("https://play.google.com")) {
                if (motionEvent.getAction() == 0) {
                    this.f28235p = motionEvent.getRawX();
                    this.f28236q = motionEvent.getRawY();
                } else {
                    float rawX = motionEvent.getRawX() - this.f28235p;
                    float y10 = motionEvent.getY() - this.f28236q;
                    if ((rawX >= 0.0f || rawX * (-1.0f) <= 48) && ((rawX <= 0.0f || rawX <= 48) && ((y10 >= 0.0f || (-1.0f) * y10 <= 48) && (y10 <= 0.0f || y10 <= 48)))) {
                        setClickable(false);
                        return true;
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void registerWindVanePlugin(Class cls) {
        e eVar = this.f28225f;
        if (eVar == null) {
            return;
        }
        eVar.a(cls.getSimpleName(), cls);
    }

    public void release() {
        try {
            if (!this.f28234o) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", Integer.valueOf(this.f28233n));
                if (this.f28232m != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000135", this.f28232m, eVar);
                }
            }
        } catch (Exception unused) {
        }
        try {
            setVisibility(8);
            removeAllViews();
            setDownloadListener(null);
            this.f28226g = null;
            int b10 = u0.b(getContext());
            if (b10 == 0) {
                this.f28234o = true;
                destroy();
            } else {
                new Handler().postDelayed(new a(), b10 * 1000);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void setApiManagerContext(Context context) {
        e eVar = this.f28225f;
        if (eVar != null) {
            eVar.a(context);
        }
    }

    public void setApiManagerJSFactory(Object obj) {
        e eVar = this.f28225f;
        if (eVar != null) {
            eVar.a(obj);
        }
    }

    public void setCampaignEx(CampaignEx campaignEx) {
        this.f28232m = campaignEx;
    }

    public void setCampaignId(String str) {
        this.f28228i = str;
    }

    public void setLocalRequestId(String str) {
        this.f28231l = str;
    }

    public void setMraidObject(Object obj) {
        this.f28227h = obj;
    }

    public void setObject(Object obj) {
        this.f28226g = obj;
    }

    public void setRid(String str) {
        this.f28230k = str;
    }

    public void setSignalCommunication(b bVar) {
        this.f28224e = bVar;
        bVar.a(this);
    }

    public void setTempTypeForMetrics(int i10) {
        this.f28233n = i10;
    }

    public void setWebViewChromeClient(j jVar) {
        this.f28223d = jVar;
        setWebChromeClient(jVar);
    }

    public void setWebViewListener(c cVar) {
        this.f28229j = cVar;
        j jVar = this.f28223d;
        if (jVar != null) {
            jVar.a(cVar);
        }
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null) {
            bVar.a(cVar);
        }
    }

    public void setWebViewTransparent() {
        super.setTransparent();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.BaseWebView
    protected void a() {
        super.a();
        getSettings().setSavePassword(false);
        WebSettings settings = getSettings();
        settings.setUserAgentString(getSettings().getUserAgentString() + " WindVane/3.0.2");
        if (this.f28223d == null) {
            this.f28223d = new j(this);
        }
        setWebViewChromeClient(this.f28223d);
        k kVar = new k();
        this.mWebViewClient = kVar;
        setWebViewClient(kVar);
        if (this.f28224e == null) {
            b hVar = new h(this.f28123a);
            this.f28224e = hVar;
            setSignalCommunication(hVar);
        }
        this.f28225f = new e(this.f28123a, this);
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28234o = false;
        this.f28235p = 0.0f;
        this.f28236q = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28234o = false;
        this.f28235p = 0.0f;
        this.f28236q = 0.0f;
    }
}
