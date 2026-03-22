package com.mbridge.msdk.interstitial.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.interstitial.controller.a;
import com.mbridge.msdk.mbsignalcommon.mraid.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vungle.ads.internal.Constants;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class MBInterstitialActivity extends MBBaseActivity implements com.mbridge.msdk.mbsignalcommon.mraid.b {
    public static final String INTENT_CAMAPIGN = "campaign";
    public static final String INTENT_UNIT_ID = "unitId";
    public static final long WATI_JS_INVOKE = 2000;
    public static final long WEB_LOAD_TIME = 15000;

    /* renamed from: h  reason: collision with root package name */
    private CampaignEx f27651h;

    /* renamed from: i  reason: collision with root package name */
    private WindVaneWebView f27652i;

    /* renamed from: j  reason: collision with root package name */
    private ImageView f27653j;

    /* renamed from: k  reason: collision with root package name */
    private a.d f27654k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27655l;

    /* renamed from: m  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.d f27656m;
    public ProgressBar mProgressBar;
    public String mUnitid;

    /* renamed from: n  reason: collision with root package name */
    private long f27657n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f27658o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f27659p;

    /* renamed from: t  reason: collision with root package name */
    private com.mbridge.msdk.click.a f27663t;

    /* renamed from: f  reason: collision with root package name */
    private boolean f27649f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27650g = false;
    public boolean mIsMBPage = false;

    /* renamed from: q  reason: collision with root package name */
    private Handler f27660q = new f();

    /* renamed from: r  reason: collision with root package name */
    Runnable f27661r = new j();

    /* renamed from: s  reason: collision with root package name */
    Runnable f27662s = new k();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(MBInterstitialActivity.this.f27652i, MBInterstitialActivity.this.f27652i.getLeft(), MBInterstitialActivity.this.f27652i.getTop(), MBInterstitialActivity.this.f27652i.getWidth(), MBInterstitialActivity.this.f27652i.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f27652i, MBInterstitialActivity.this.f27652i.getLeft(), MBInterstitialActivity.this.f27652i.getTop(), MBInterstitialActivity.this.f27652i.getWidth(), MBInterstitialActivity.this.f27652i.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(MBInterstitialActivity.this)).b(MBInterstitialActivity.this.f27651h.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBInterstitialActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class i extends com.mbridge.msdk.mbsignalcommon.listener.b {
        i() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i10) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public boolean b(WebView webView, String str) {
            return true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            MBInterstitialActivity.this.f27655l = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            try {
                MBInterstitialActivity.this.f27655l = true;
                if (MBInterstitialActivity.this.f27654k != null) {
                    MBInterstitialActivity.this.f27654k.a(str);
                }
                MBInterstitialActivity.this.a(3, str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            try {
                if (MBInterstitialActivity.this.f27655l) {
                    return;
                }
                MBInterstitialActivity.this.a(1, "");
                MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
                if (mBInterstitialActivity.f27661r != null && mBInterstitialActivity.f27660q != null) {
                    MBInterstitialActivity.this.f27660q.removeCallbacks(MBInterstitialActivity.this.f27661r);
                }
                if (MBInterstitialActivity.this.f27654k != null) {
                    MBInterstitialActivity.this.f27654k.c();
                }
                MBInterstitialActivity mBInterstitialActivity2 = MBInterstitialActivity.this;
                if (!mBInterstitialActivity2.mIsMBPage) {
                    mBInterstitialActivity2.f27660q.postDelayed(MBInterstitialActivity.this.f27662s, 2000L);
                }
                MBInterstitialActivity.this.i();
            } catch (Exception e10) {
                e10.printStackTrace();
                if (MBInterstitialActivity.this.f27654k != null) {
                    MBInterstitialActivity.this.f27654k.a("load page failed");
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void c(WebView webView, int i10) {
        }
    }

    /* loaded from: classes5.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MBInterstitialActivity.this.f27650g) {
                MBInterstitialActivity.this.f27649f = true;
                if (MBInterstitialActivity.this.f27654k != null) {
                    MBInterstitialActivity.this.f27654k.a("load page timeout");
                    if (MBInterstitialActivity.this.f27652i != null) {
                        MBInterstitialActivity.this.f27652i.setVisibility(8);
                        MBInterstitialActivity.this.f27652i.setWebViewListener(null);
                        MBInterstitialActivity.this.f27652i.release();
                    }
                    MBInterstitialActivity.this.hideLoading();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
            if (mBInterstitialActivity.mIsMBPage) {
                return;
            }
            if (mBInterstitialActivity.f27651h != null && MBInterstitialActivity.this.f27651h.isMraid()) {
                MBInterstitialActivity.this.m();
            }
            com.mbridge.msdk.interstitial.cache.a.a().a(MBInterstitialActivity.this.f27651h, MBInterstitialActivity.this.mUnitid);
            if (!MBInterstitialActivity.this.f27649f) {
                MBInterstitialActivity.this.f27650g = true;
                MBInterstitialActivity.this.hideLoading();
                MBInterstitialActivity.this.showWebView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class l implements d.b {
        l() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.d.b
        public void a(double d10) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f27652i, d10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MBInterstitialActivity.this.f27652i == null || MBInterstitialActivity.this.f27651h == null) {
                    return;
                }
                MBInterstitialActivity.this.f27652i.setVisibility(0);
                if (MBInterstitialActivity.this.f27651h.isMraid()) {
                    MBInterstitialActivity.this.k();
                }
                MBInterstitialActivity.this.j();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBInterstitialActivity.this.f27652i != null) {
                MBInterstitialActivity.this.f27652i.setVisibility(8);
            }
        }
    }

    private void l() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getApplicationContext());
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.f27651h.getRequestIdNotice(), this.f27651h.getId(), this.mUnitid, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.f27651h.getId()), this.f27651h.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f27651h.getId());
            this.f27658o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        List<String> pv_urls;
        try {
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            if (!TextUtils.isEmpty(this.f27651h.getImpressionURL())) {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx = this.f27651h;
                com.mbridge.msdk.click.a.a(d10, campaignEx, this.mUnitid, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26106m);
            }
            if (!TextUtils.isEmpty(this.f27651h.getOnlyImpressionURL())) {
                Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx2 = this.f27651h;
                com.mbridge.msdk.click.a.a(d11, campaignEx2, this.mUnitid, campaignEx2.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26107n);
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.mUnitid, this.f27651h, Constants.PLACEMENT_TYPE_INTERSTITIAL);
            e eVar = new e();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(eVar);
            } else {
                eVar.run();
            }
            CampaignEx campaignEx3 = this.f27651h;
            if (campaignEx3 != null && (pv_urls = campaignEx3.getPv_urls()) != null && pv_urls.size() > 0) {
                for (String str : pv_urls) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f27651h, this.mUnitid, str, false, true);
                }
            }
        } catch (Throwable th2) {
            p0.a("MBInterstitialActivity", th2.getMessage());
        }
    }

    private void n() {
        CampaignEx campaignEx;
        this.f27653j.setOnClickListener(new h());
        if (this.f27652i != null && (campaignEx = this.f27651h) != null) {
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(campaignEx);
            aVar.a(this.f27651h.getAppName());
            this.f27652i.setCampaignId(this.f27651h.getId());
            this.f27652i.setDownloadListener(aVar);
        }
    }

    public void clickTracking() {
        try {
            if (this.f27651h != null && !z0.a(this.mUnitid)) {
                onIntersClick();
                com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getApplicationContext(), this.mUnitid);
                this.f27663t = aVar;
                aVar.a(new c());
                this.f27663t.a(this.f27651h);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (!this.f27658o) {
            l();
        }
        if (!this.f27659p) {
            reportPlayableClosed();
        }
    }

    public com.mbridge.msdk.setting.l getIntersUnitSetting() {
        try {
            if (TextUtils.isEmpty(this.mUnitid)) {
                return null;
            }
            com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.mUnitid);
            if (e10 == null) {
                return com.mbridge.msdk.setting.l.h(this.mUnitid);
            }
            return e10;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f27651h;
    }

    public void goneWebView() {
        try {
            runOnUiThread(new n());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void hideLoading() {
        try {
            runOnUiThread(new b());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void initView() {
        this.f27652i = (WindVaneWebView) findViewById(h0.a(getApplicationContext(), "mbridge_interstitial_wv", "id"));
        this.mProgressBar = (ProgressBar) findViewById(h0.a(getApplicationContext(), "mbridge_interstitial_pb", "id"));
        this.f27653j = (ImageView) findViewById(h0.a(getApplicationContext(), "mbridge_interstitial_iv_close", "id"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            int a10 = h0.a(getApplicationContext(), "mbridge_interstitial_activity", TtmlNode.TAG_LAYOUT);
            if (h0.a(a10)) {
                setContentView(a10);
                initView();
                e();
                com.mbridge.msdk.foundation.controller.c.m().a(this);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this, (ViewGroup) null, (ViewGroup.LayoutParams) null, new g());
                this.f27651h.setCampaignUnitId(this.mUnitid);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this.f27651h);
                return;
            }
            g();
            f();
            a.d dVar = this.f27654k;
            if (dVar != null) {
                dVar.a("not found resource");
            }
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            a.d dVar = this.f27654k;
            if (dVar != null) {
                dVar.b();
            }
            com.mbridge.msdk.click.a aVar = this.f27663t;
            if (aVar != null) {
                aVar.a(false);
                this.f27663t.a((NativeListener.NativeTrackingListener) null);
                this.f27663t.c();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar2 = this.f27656m;
            if (dVar2 != null) {
                dVar2.d();
            }
            if (!this.f27658o) {
                l();
            }
            if (com.mbridge.msdk.interstitial.controller.a.f27618r != null && !TextUtils.isEmpty(this.mUnitid)) {
                com.mbridge.msdk.interstitial.controller.a.f27618r.remove(this.mUnitid);
            }
            this.f27654k = null;
            com.mbridge.msdk.foundation.feedback.b.b().d(this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onIntersClick() {
        try {
            a.d dVar = this.f27654k;
            if (dVar != null) {
                dVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f27652i, "false");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f27652i, "true");
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f27651h.setClickURL(str);
            a(str);
        }
        this.f27651h.setClickTempSource(2);
        this.f27651h.setClickType(2);
        this.f27651h.setTriggerClickSource(2);
        clickTracking();
    }

    public void reportPlayableClosed() {
        int i10;
        if (this.f27651h != null) {
            com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000061", this.f27651h.getId(), this.f27651h.getRequestId(), this.f27651h.getRequestIdNotice(), this.mUnitid, l0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (this.f27651h.isMraid()) {
                i10 = com.mbridge.msdk.foundation.entity.n.N;
            } else {
                i10 = com.mbridge.msdk.foundation.entity.n.O;
            }
            nVar.b(i10);
            com.mbridge.msdk.foundation.same.report.g.b(nVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.mUnitid);
            this.f27659p = true;
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i10, int i11, int i12, int i13, int i14) {
        int a10 = u0.a(this, 10.0f);
        if (i11 <= 0) {
            i11 = a10;
        }
        if (i12 <= 0) {
            i12 = a10;
        }
        if (i13 <= 0) {
            i13 = a10;
        }
        if (i14 <= 0) {
            i14 = a10;
        }
        if (this.f27653j != null) {
            int a11 = u0.a(this, 25.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a11, a11);
            layoutParams.addRule(11);
            layoutParams.setMargins(i11, i13, i12, i14);
            this.f27653j.setLayoutParams(layoutParams);
        }
    }

    public void showLoading() {
        try {
            runOnUiThread(new a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showWebView() {
        runOnUiThread(new m());
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        if (z10) {
            this.f27653j.setImageDrawable(new ColorDrawable(0));
        } else {
            this.f27653j.setImageResource(h0.a(getApplicationContext(), "mbridge_interstitial_close", "drawable"));
        }
    }

    private void e() {
        g();
        n();
        f();
        h();
    }

    private void f() {
        try {
            if (com.mbridge.msdk.interstitial.controller.a.f27618r == null || TextUtils.isEmpty(this.mUnitid) || !com.mbridge.msdk.interstitial.controller.a.f27618r.containsKey(this.mUnitid)) {
                return;
            }
            this.f27654k = com.mbridge.msdk.interstitial.controller.a.f27618r.get(this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        Intent intent = getIntent();
        if (intent != null) {
            this.mUnitid = intent.getStringExtra("unitId");
            this.f27651h = (CampaignEx) intent.getSerializableExtra(INTENT_CAMAPIGN);
        }
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(this);
            this.f27656m = dVar;
            dVar.c();
            this.f27656m.a(new l());
        }
        CampaignEx campaignEx2 = this.f27651h;
        if (campaignEx2 != null) {
            com.mbridge.msdk.click.c.a(this, campaignEx2.getMaitve(), this.f27651h.getMaitve_src());
        }
    }

    @SuppressLint({"NewApi"})
    private void h() {
        try {
            CampaignEx campaignEx = this.f27651h;
            if (campaignEx == null || (TextUtils.isEmpty(campaignEx.getHtmlUrl()) && !this.f27651h.isMraid())) {
                a.d dVar = this.f27654k;
                if (dVar != null) {
                    dVar.a("htmlurl is null");
                    return;
                }
                return;
            }
            p0.c("MBInterstitialActivity", "url:" + this.f27651h.getHtmlUrl());
            goneWebView();
            this.f27652i.setWebViewListener(new i());
            String htmlUrl = this.f27651h.getHtmlUrl();
            if (this.f27651h.isMraid()) {
                File file = new File(this.f27651h.getMraid());
                if (file.exists() && file.isFile() && file.canRead()) {
                    htmlUrl = "file:////" + this.f27651h.getMraid();
                }
            }
            this.f27657n = System.currentTimeMillis();
            this.f27652i.loadUrl(htmlUrl);
            this.f27660q.postDelayed(this.f27661r, 15000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String str;
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i10 = getResources().getConfiguration().orientation;
        if (i10 == 0) {
            str = AdError.UNDEFINED_DOMAIN;
        } else if (i10 == 1) {
            str = "portrait";
        } else if (i10 != 2) {
            str = "UNDEFINED";
        } else {
            str = "landscape";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
            jSONObject.put("locked", "true");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        HashMap hashMap = new HashMap();
        hashMap.put("placementType", "Interstitial");
        hashMap.put("state", DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        hashMap.put("viewable", "true");
        hashMap.put("currentAppOrientation", jSONObject);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f27652i, l0.n(this), l0.m(this));
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27652i, displayMetrics.widthPixels, displayMetrics.heightPixels);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27652i, hashMap);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27652i, this.f27656m.a());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f27652i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        this.f27652i.post(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
            nVar.n(this.f27651h.getRequestId());
            nVar.o(this.f27651h.getRequestIdNotice());
            nVar.b(this.f27651h.getId());
            nVar.b(this.f27651h.isMraid() ? com.mbridge.msdk.foundation.entity.n.N : com.mbridge.msdk.foundation.entity.n.O);
            com.mbridge.msdk.foundation.same.report.g.d(nVar, getApplicationContext(), this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str) {
        CampaignEx campaignEx = this.f27651h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
        nVar.n(this.f27651h.getRequestId());
        nVar.o(this.f27651h.getRequestIdNotice());
        nVar.b(this.f27651h.getId());
        nVar.d(i10);
        nVar.e(String.valueOf(System.currentTimeMillis() - this.f27657n));
        nVar.g("");
        nVar.m(str);
        nVar.a("5");
        nVar.b(this.f27651h.isMraid() ? com.mbridge.msdk.foundation.entity.n.N : com.mbridge.msdk.foundation.entity.n.O);
        com.mbridge.msdk.foundation.same.report.g.b(nVar, this.mUnitid, this.f27651h);
    }

    /* loaded from: classes5.dex */
    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            MBInterstitialActivity.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("MBInterstitialActivity", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f27652i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("MBInterstitialActivity", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f27652i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("MBInterstitialActivity", th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f27652i, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    private void a(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getApplicationContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.mUnitid, str, mraidCampaign.isBidCampaign());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements NativeListener.NativeTrackingListener {
        c() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.hideLoading();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            MBInterstitialActivity.this.hideLoading();
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.showLoading();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i10) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
        }
    }

    /* loaded from: classes5.dex */
    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }
}
