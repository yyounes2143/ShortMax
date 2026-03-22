package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import java.util.ArrayList;
/* compiled from: WebViewRenderManager.java */
/* loaded from: classes6.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29215a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f29216b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewRenderManager.java */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final g f29223a = new g(null);
    }

    /* compiled from: WebViewRenderManager.java */
    /* loaded from: classes6.dex */
    public interface c {
        void a();

        void a(int i10);

        void onError(String str);
    }

    /* compiled from: WebViewRenderManager.java */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private String f29224a;

        /* renamed from: b  reason: collision with root package name */
        private String f29225b;

        /* renamed from: c  reason: collision with root package name */
        private CampaignEx f29226c;

        /* renamed from: d  reason: collision with root package name */
        private String f29227d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29228e;

        /* renamed from: f  reason: collision with root package name */
        private int f29229f;

        public void a(String str) {
            this.f29227d = str;
        }

        public void b(String str) {
            this.f29224a = str;
        }

        public String c() {
            return this.f29227d;
        }

        public String d() {
            return this.f29224a;
        }

        public String e() {
            return this.f29225b;
        }

        public boolean f() {
            return this.f29228e;
        }

        public CampaignEx a() {
            return this.f29226c;
        }

        public int b() {
            return this.f29229f;
        }

        public void c(String str) {
            this.f29225b = str;
        }

        public void a(CampaignEx campaignEx) {
            this.f29226c = campaignEx;
        }

        public void a(boolean z10) {
            this.f29228e = z10;
        }

        public void a(int i10) {
            this.f29229f = i10;
        }
    }

    /* synthetic */ g(a aVar) {
        this();
    }

    private g() {
        this.f29215a = false;
        this.f29216b = false;
    }

    public static g a() {
        return b.f29223a;
    }

    public void b() {
        this.f29215a = false;
        this.f29216b = false;
    }

    public void a(MBSplashView mBSplashView, d dVar, c cVar) {
        String requestId;
        if (mBSplashView == null || dVar == null) {
            return;
        }
        String e10 = dVar.e();
        String d10 = dVar.d();
        CampaignEx a10 = dVar.a();
        String c10 = dVar.c();
        boolean f10 = dVar.f();
        int b10 = dVar.b();
        MBSplashWebview splashWebview = mBSplashView.getSplashWebview();
        if (splashWebview == null) {
            return;
        }
        com.mbridge.msdk.splash.signal.b bVar = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), d10, e10);
        ArrayList arrayList = new ArrayList();
        arrayList.add(a10);
        bVar.a(arrayList);
        bVar.a(f10 ? 1 : 0);
        bVar.b(b10);
        mBSplashView.setSplashSignalCommunicationImpl(bVar);
        if (TextUtils.isEmpty(a10.getRequestId())) {
            requestId = a10.getRequestIdNotice();
        } else {
            requestId = a10.getRequestId();
        }
        String requestId2 = splashWebview.getRequestId();
        p0.b("WebViewRenderManager", "CampaignEx RequestId = " + requestId + " WebView RequestId = " + requestId2);
        if (!TextUtils.isEmpty(requestId2) && requestId2.equals(requestId) && (this.f29215a || this.f29216b)) {
            mBSplashView.setH5Ready(true);
            if (cVar != null) {
                cVar.a(1);
                return;
            }
            return;
        }
        b();
        splashWebview.setRequestId(requestId);
        com.mbridge.msdk.splash.report.a.b(e10, a10);
        long currentTimeMillis = System.currentTimeMillis();
        splashWebview.setWebViewListener(new a(cVar, mBSplashView, a10, e10, currentTimeMillis));
        if (!splashWebview.isDestoryed()) {
            splashWebview.loadUrl(c10);
            return;
        }
        mBSplashView.setH5Ready(false);
        com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), a10, e10, "webview had destory", currentTimeMillis, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewRenderManager.java */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f29217a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MBSplashView f29218b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29219c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f29220d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f29221e;

        a(c cVar, MBSplashView mBSplashView, CampaignEx campaignEx, String str, long j10) {
            this.f29217a = cVar;
            this.f29218b = mBSplashView;
            this.f29219c = campaignEx;
            this.f29220d = str;
            this.f29221e = j10;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            c cVar = this.f29217a;
            if (cVar != null) {
                cVar.a(i10);
            }
            if (i10 == 1) {
                g.this.f29215a = true;
                this.f29218b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29219c, this.f29220d, "", this.f29221e, 1);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f29220d, this.f29219c);
                return;
            }
            g.this.f29215a = false;
            this.f29218b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "readyState 2", this.f29220d, this.f29219c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29219c, this.f29220d, "readyState 2", this.f29221e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            c cVar = this.f29217a;
            if (cVar != null) {
                cVar.onError(str);
            }
            g.this.b();
            this.f29218b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error code:" + i10 + str, this.f29220d, this.f29219c);
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.f29219c;
            String str3 = this.f29220d;
            com.mbridge.msdk.splash.report.a.a(d10, campaignEx, str3, "error code:" + i10 + str, this.f29221e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            c cVar = this.f29217a;
            if (cVar != null) {
                cVar.onError(sslError.toString());
            }
            g.this.b();
            this.f29218b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error url:" + sslError.getUrl(), this.f29220d, this.f29219c);
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.f29219c;
            String str = this.f29220d;
            com.mbridge.msdk.splash.report.a.a(d10, campaignEx, str, "error url:" + sslError.getUrl(), this.f29221e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            c cVar = this.f29217a;
            if (cVar != null) {
                cVar.a();
            }
            g.this.f29216b = true;
            if (!this.f29219c.isHasMBTplMark()) {
                this.f29218b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f29220d, this.f29219c);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29219c, this.f29220d, "", this.f29221e, 1);
            }
            com.mbridge.msdk.splash.signal.c.a(webView);
        }
    }
}
