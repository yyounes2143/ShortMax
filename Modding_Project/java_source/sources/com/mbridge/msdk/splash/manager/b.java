package com.mbridge.msdk.splash.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import com.mbridge.msdk.widget.FeedBackButton;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BaseSplashShowManager.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f29113b;

    /* renamed from: c  reason: collision with root package name */
    protected MBSplashView f29114c;

    /* renamed from: d  reason: collision with root package name */
    protected com.mbridge.msdk.splash.middle.d f29115d;

    /* renamed from: e  reason: collision with root package name */
    protected com.mbridge.msdk.click.a f29116e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f29117f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f29118g;

    /* renamed from: h  reason: collision with root package name */
    private View f29119h;

    /* renamed from: i  reason: collision with root package name */
    protected String f29120i;

    /* renamed from: j  reason: collision with root package name */
    private String f29121j;

    /* renamed from: k  reason: collision with root package name */
    protected MBridgeIds f29122k;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f29128q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f29129r;

    /* renamed from: s  reason: collision with root package name */
    protected Context f29130s;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f29132u;

    /* renamed from: v  reason: collision with root package name */
    private i f29133v;

    /* renamed from: w  reason: collision with root package name */
    private AdSession f29134w;

    /* renamed from: a  reason: collision with root package name */
    protected final String f29112a = "SplashShowManager";

    /* renamed from: l  reason: collision with root package name */
    protected int f29123l = 5;

    /* renamed from: m  reason: collision with root package name */
    protected String f29124m = "点击跳过|";

    /* renamed from: n  reason: collision with root package name */
    protected String f29125n = "点击跳过|";

    /* renamed from: o  reason: collision with root package name */
    protected String f29126o = "秒";

    /* renamed from: p  reason: collision with root package name */
    protected String f29127p = "秒后自动关闭";

    /* renamed from: t  reason: collision with root package name */
    protected boolean f29131t = true;

    /* renamed from: x  reason: collision with root package name */
    private View.OnClickListener f29135x = new a();

    /* renamed from: y  reason: collision with root package name */
    public Handler f29136y = new HandlerC0424b(Looper.getMainLooper());

    /* renamed from: z  reason: collision with root package name */
    private boolean f29137z = true;
    protected j A = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f29117f) {
                b.this.b(1);
                b.this.d(-1);
            }
        }
    }

    /* compiled from: BaseSplashShowManager.java */
    /* renamed from: com.mbridge.msdk.splash.manager.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class HandlerC0424b extends Handler {
        HandlerC0424b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            MBSplashView mBSplashView;
            MBSplashWebview splashWebview;
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 == 2 && b.this.f29113b != null && b.this.f29113b.isActiveOm() && (mBSplashView = b.this.f29114c) != null && (splashWebview = mBSplashView.getSplashWebview()) != null) {
                    try {
                        b.this.f29134w = splashWebview.getAdSession();
                        if (b.this.f29134w != null) {
                            AdEvents createAdEvents = AdEvents.createAdEvents(b.this.f29134w);
                            createAdEvents.loaded();
                            createAdEvents.impressionOccurred();
                        }
                        p0.a("OMSDK", "adSession.impressionOccurred()");
                        return;
                    } catch (Throwable th2) {
                        p0.a("OMSDK", th2.getMessage());
                        if (b.this.f29113b != null) {
                            String requestId = b.this.f29113b.getRequestId();
                            String requestIdNotice = b.this.f29113b.getRequestIdNotice();
                            String id2 = b.this.f29113b.getId();
                            com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext());
                            String str = b.this.f29120i;
                            hVar.a(requestId, requestIdNotice, id2, str, "fetch OM failed, exception" + th2.getMessage());
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (!b.this.f29129r) {
                b.this.i();
            }
            b bVar = b.this;
            if (bVar.f29123l > 0) {
                if (!com.mbridge.msdk.foundation.feedback.b.f26979f) {
                    b bVar2 = b.this;
                    if (!bVar2.f29128q) {
                        int i11 = bVar2.f29123l - 1;
                        bVar2.f29123l = i11;
                        bVar2.d(i11);
                        b bVar3 = b.this;
                        if (!bVar3.f29131t) {
                            bVar3.g();
                        }
                        b.this.f29136y.removeMessages(1);
                        sendEmptyMessageDelayed(1, 1000L);
                        return;
                    }
                }
                b.this.f();
                b.this.f29136y.removeMessages(1);
                sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            bVar.b(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.k();
        }
    }

    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    class e implements j {
        e() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, b.this.f29114c);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, b.this.f29114c);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            t0.b(campaign, b.this.f29114c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29143a;

        f(int i10) {
            this.f29143a = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f29143a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29145a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29146b;

        g(Context context, CampaignEx campaignEx) {
            this.f29145a = context;
            this.f29146b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f29145a)).b(this.f29146b.getId());
            } catch (Exception unused) {
                p0.b("SplashShowManager", "campain can't insert db");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class h implements com.mbridge.msdk.foundation.feedback.a {
        h() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            b.this.f();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            b.this.g();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            b.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class i implements com.mbridge.msdk.splash.middle.a {
        private i() {
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(CampaignEx campaignEx) {
            b.this.b(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void close() {
            b.this.b(1);
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void toggleCloseBtn(int i10) {
            MBSplashView mBSplashView = b.this.f29114c;
            if (mBSplashView != null) {
                mBSplashView.changeCloseBtnState(i10);
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void triggerCloseBtn(Object obj, String str) {
            b.this.b(1);
        }

        /* synthetic */ i(b bVar, a aVar) {
            this();
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(int i10) {
            p0.b("SplashShowManager", "resetCountdown" + i10);
            b bVar = b.this;
            bVar.f29123l = i10;
            bVar.f29136y.removeMessages(1);
            b.this.f29136y.sendEmptyMessageDelayed(1, 1000L);
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(boolean z10) {
            if (z10) {
                b.this.f29136y.removeMessages(1);
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(boolean z10, String str) {
            try {
                if (b.this.f29115d != null) {
                    if (TextUtils.isEmpty(str)) {
                        b bVar = b.this;
                        bVar.f29115d.a(bVar.f29122k);
                    } else {
                        CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(b.this.f29113b));
                        parseCampaignWithBackData.setClickTempSource(2);
                        parseCampaignWithBackData.setClickType(2);
                        parseCampaignWithBackData.setTriggerClickSource(2);
                        parseCampaignWithBackData.setClickURL(str);
                        b.this.b(parseCampaignWithBackData, true, str);
                    }
                }
            } catch (Exception e10) {
                p0.b("SplashShowManager", e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.splash.middle.a
        public void a(int i10, int i11) {
            if (i10 == 1) {
                b.this.f29136y.removeMessages(1);
            }
            if (i10 == 2) {
                b bVar = b.this;
                bVar.f29123l = i11;
                bVar.f29136y.removeMessages(1);
                b.this.f29136y.sendEmptyMessageDelayed(1, 1000L);
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f29120i = str2;
        this.f29121j = str;
        this.f29122k = new MBridgeIds(str, str2);
        this.f29130s = context;
        if (this.f29118g == null) {
            TextView textView = new TextView(context);
            this.f29118g = textView;
            textView.setGravity(1);
            this.f29118g.setTextIsSelectable(false);
            this.f29118g.setPadding(u0.a(context, 5.0f), u0.a(context, 5.0f), u0.a(context, 5.0f), u0.a(context, 5.0f));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f29118g.getLayoutParams();
            this.f29118g.setLayoutParams(layoutParams == null ? new RelativeLayout.LayoutParams(u0.a(context, 100.0f), u0.a(context, 50.0f)) : layoutParams);
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        MBSplashView mBSplashView;
        try {
            if (this.f29113b == null) {
                return;
            }
            this.f29129r = true;
            if (this.f29115d != null && (mBSplashView = this.f29114c) != null) {
                if (mBSplashView.getContext() != null && (this.f29114c.getContext() instanceof Activity) && ((Activity) this.f29114c.getContext()).isFinishing()) {
                    p0.a("SplashShowManager", "Activity is finishing");
                }
                if (this.f29114c.isShown()) {
                    this.f29115d.b(this.f29122k);
                } else {
                    this.f29115d.a(this.f29122k, "SplashView or container is not visibility");
                }
            }
            if (!this.f29113b.isReport()) {
                MBSplashView mBSplashView2 = this.f29114c;
                if (mBSplashView2 != null && !mBSplashView2.isDynamicView()) {
                    b(this.f29113b);
                } else {
                    a(this.f29113b);
                }
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29113b, this.f29120i);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void j() {
        String str;
        if (this.f29117f) {
            str = this.f29125n + this.f29123l + this.f29126o;
        } else {
            str = this.f29123l + this.f29127p;
        }
        this.f29118g.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        MBSplashView mBSplashView;
        MBSplashWebview splashWebview;
        View splashWebview2 = this.f29114c.getSplashWebview();
        if (splashWebview2 == null) {
            splashWebview2 = this.f29114c.getSplashNativeView();
        }
        l a10 = com.mbridge.msdk.foundation.tools.g.a(splashWebview2, this.f29113b.getImpReportType());
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f29113b);
        if (!a10.a()) {
            if (this.f29137z) {
                this.f29137z = false;
                this.f29114c.postDelayed(new c(), 200L);
                return;
            }
            com.mbridge.msdk.foundation.tools.g.a(arrayList, a10);
            if (this.f29113b.getLocalCheckShow() == 1) {
                a("ad env is not available");
                return;
            }
        } else {
            com.mbridge.msdk.foundation.tools.g.a(arrayList, a10);
        }
        CampaignEx campaignEx = this.f29113b;
        if (campaignEx != null && campaignEx.isActiveOm() && (mBSplashView = this.f29114c) != null && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            try {
                AdSession a11 = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), splashWebview, splashWebview.getUrl(), this.f29113b);
                this.f29134w = a11;
                if (a11 != null) {
                    splashWebview.setAdSession(a11);
                    this.f29134w.registerAdView(splashWebview);
                    this.f29134w.start();
                }
                p0.a("OMSDK", "adSession.start()");
            } catch (Throwable th2) {
                p0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx2 = this.f29113b;
                if (campaignEx2 != null) {
                    String requestId = campaignEx2.getRequestId();
                    String requestIdNotice = this.f29113b.getRequestIdNotice();
                    String id2 = this.f29113b.getId();
                    com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext());
                    String str = this.f29120i;
                    hVar.a(requestId, requestIdNotice, id2, str, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        com.mbridge.msdk.splash.manager.d.b(this.f29120i);
        this.f29136y.removeMessages(1);
        this.f29136y.sendEmptyMessageDelayed(1, 1000L);
        this.f29136y.sendEmptyMessageDelayed(2, 1000L);
        b();
        if (!this.f29113b.isMraid()) {
            a();
        }
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29113b.getMaitve(), this.f29113b.getMaitve_src());
        try {
            BitmapDrawable a12 = com.mbridge.msdk.foundation.controller.c.m().a(this.f29120i, this.f29113b.getAdType());
            if (a12 != null) {
                if (this.f29132u == null) {
                    this.f29132u = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                if (this.f29132u.getVisibility() != 0) {
                    this.f29132u.setVisibility(0);
                }
                u0.a(this.f29132u, a12, this.f29114c.getResources().getDisplayMetrics());
                if (this.f29132u.getParent() == null) {
                    this.f29114c.addView(this.f29132u, new ViewGroup.LayoutParams(-1, -1));
                }
                AdSession adSession = this.f29134w;
                if (adSession != null) {
                    adSession.addFriendlyObstruction(this.f29132u, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public void g() {
        MBSplashView mBSplashView;
        Handler handler;
        boolean z10;
        this.f29131t = true;
        if (this.f29114c != null && this.f29123l > 0 && (handler = this.f29136y) != null) {
            handler.removeMessages(1);
            View splashWebview = this.f29114c.getSplashWebview();
            if (splashWebview == null) {
                splashWebview = this.f29114c.getSplashNativeView();
            }
            CampaignEx campaignEx = this.f29113b;
            if (campaignEx != null) {
                z10 = com.mbridge.msdk.foundation.tools.g.b(campaignEx, null, splashWebview, campaignEx.getImpReportType());
            } else {
                z10 = true;
            }
            if (z10) {
                this.f29136y.sendEmptyMessageDelayed(1, 1000L);
            }
        }
        if (!com.mbridge.msdk.foundation.feedback.b.f26979f && (mBSplashView = this.f29114c) != null) {
            mBSplashView.onResume();
            MBSplashWebview splashWebview2 = this.f29114c.getSplashWebview();
            if (splashWebview2 != null && !splashWebview2.isDestoryed()) {
                com.mbridge.msdk.splash.signal.c.a(splashWebview2, "onSystemPause", "");
            }
        }
    }

    public void h() {
        if (this.f29115d != null) {
            this.f29115d = null;
        }
        if (this.f29133v != null) {
            this.f29133v = null;
        }
        if (this.f29135x != null) {
            this.f29135x = null;
        }
        MBSplashView mBSplashView = this.f29114c;
        if (mBSplashView != null) {
            mBSplashView.destroy();
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f29120i);
    }

    private void e() {
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d10 != null) {
            String h10 = com.mbridge.msdk.foundation.controller.c.m().h();
            int identifier = d10.getResources().getIdentifier("mbridge_splash_count_time_can_skip", TypedValues.Custom.S_STRING, h10);
            int identifier2 = d10.getResources().getIdentifier("mbridge_splash_count_time_can_skip_not", TypedValues.Custom.S_STRING, h10);
            int identifier3 = d10.getResources().getIdentifier("mbridge_splash_count_time_can_skip_s", TypedValues.Custom.S_STRING, h10);
            this.f29125n = d10.getResources().getString(identifier);
            String string = d10.getResources().getString(identifier2);
            this.f29127p = string;
            this.f29124m = string;
            this.f29126o = d10.getResources().getString(identifier3);
            this.f29118g.setBackgroundResource(d10.getResources().getIdentifier("mbridge_splash_close_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f29118g.setTextColor(d10.getResources().getColor(d10.getResources().getIdentifier("mbridge_splash_count_time_skip_text_color", "color", h10)));
        }
    }

    public void c(int i10) {
        this.f29123l = i10;
    }

    public String d() {
        CampaignEx campaignEx = this.f29113b;
        if (campaignEx != null && campaignEx.getRequestId() != null) {
            return this.f29113b.getRequestId();
        }
        return "";
    }

    public void f() {
        Handler handler;
        this.f29131t = false;
        if (this.f29114c != null && this.f29123l > 0 && (handler = this.f29136y) != null) {
            handler.removeMessages(1);
        }
        MBSplashView mBSplashView = this.f29114c;
        if (mBSplashView != null) {
            mBSplashView.onPause();
            MBSplashWebview splashWebview = this.f29114c.getSplashWebview();
            if (splashWebview == null || splashWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.splash.signal.c.a(splashWebview, "onSystemPause", "");
        }
    }

    public String c() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f29113b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f29120i, campaignEx, AdmobPreloadConfig.APP_OPEN);
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
    }

    public void a(com.mbridge.msdk.splash.middle.d dVar) {
        this.f29115d = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i10) {
        MBSplashView mBSplashView = this.f29114c;
        if (mBSplashView != null) {
            mBSplashView.updateCountdown(i10);
            if (this.f29114c.getSplashSignalCommunicationImpl() != null) {
                this.f29114c.getSplashSignalCommunicationImpl().c(i10);
            }
        }
        if (i10 < 0) {
            this.f29123l = i10;
            return;
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f29115d;
        if (dVar != null) {
            dVar.a(this.f29122k, i10 * 1000);
        }
        if (this.f29119h == null) {
            j();
        }
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this.f29135x);
        }
        this.f29119h = viewGroup;
    }

    private void c(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                for (String str2 : pv_urls) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, true);
                }
            } catch (Throwable th2) {
                p0.b("SplashShowManager", th2.getMessage());
            }
        }
    }

    public void a(CampaignEx campaignEx, MBSplashView mBSplashView) {
        a(this.f29117f);
        this.f29113b = campaignEx;
        this.f29114c = mBSplashView;
        com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl();
        if (splashSignalCommunicationImpl == null) {
            splashSignalCommunicationImpl = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), this.f29121j, this.f29120i);
            ArrayList arrayList = new ArrayList();
            arrayList.add(campaignEx);
            splashSignalCommunicationImpl.a(arrayList);
        }
        splashSignalCommunicationImpl.b(this.f29123l);
        splashSignalCommunicationImpl.a(this.f29117f ? 1 : 0);
        if (this.f29133v == null) {
            this.f29133v = new i(this, null);
        }
        splashSignalCommunicationImpl.a(this.f29133v);
        mBSplashView.setSplashSignalCommunicationImpl(splashSignalCommunicationImpl);
        boolean isHasMBTplMark = campaignEx.isHasMBTplMark();
        View view = this.f29119h;
        if (view == null) {
            if (isHasMBTplMark) {
                this.f29118g.setVisibility(8);
            }
            j();
            a(this.f29118g);
            mBSplashView.setCloseView(this.f29118g);
        } else {
            if (isHasMBTplMark) {
                view.setVisibility(8);
            }
            a(this.f29119h);
            mBSplashView.setCloseView(this.f29119h);
        }
        a1.a(mBSplashView.getSplashWebview() != null ? mBSplashView.getSplashWebview() : mBSplashView.getSplashNativeView(), this.f29113b.getLocalRequestId(), this.f29113b.getLocalAllowTrackClick(), mBSplashView.getAllowClickSplashTouchListener());
        mBSplashView.show(campaignEx);
        this.f29137z = true;
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSplashShowManager.java */
    /* loaded from: classes6.dex */
    public class d implements com.mbridge.msdk.foundation.feedback.a {
        d() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            b.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("SplashShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f29114c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("SplashShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f29114c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("SplashShowManager", th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f29114c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    protected void b(int i10) {
        CampaignEx campaignEx;
        MBSplashWebview splashWebview;
        MBSplashView mBSplashView = this.f29114c;
        if (mBSplashView != null && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            splashWebview.finishAdSession();
        }
        if (this.f29136y != null && (campaignEx = this.f29113b) != null && campaignEx.isActiveOm()) {
            this.f29136y.postDelayed(new f(i10), 1500L);
        } else {
            a(i10);
        }
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26107n);
            } catch (Throwable th2) {
                p0.b("SplashShowManager", th2.getMessage());
            }
        }
    }

    public void b() {
        MBSplashView mBSplashView;
        Context context;
        CampaignEx campaignEx = this.f29113b;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() != 1 || (mBSplashView = this.f29114c) == null || mBSplashView.getSplashWebview() == null || this.f29114c.isDynamicView() || !this.f29113b.isMraid() || (context = this.f29114c.getContext()) == null) {
            return;
        }
        try {
            int a10 = h0.a(context, "mbridge_splash_notice", "drawable");
            int a11 = u0.a(context, 35.0f);
            int a12 = u0.a(context, 9.0f);
            ImageView imageView = new ImageView(context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a11, a11);
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            layoutParams.setMargins(a12, a12, a12, a12);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setBackgroundResource(a10);
            u0.a(3, imageView, this.f29113b, context, true, new h());
            this.f29114c.addView(imageView);
        } catch (Throwable th2) {
            p0.b("SplashShowManager", th2.getMessage());
        }
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams;
        CampaignEx campaignEx = this.f29113b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f29120i);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f29120i, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f29120i, this.f29113b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            MBSplashView mBSplashView = this.f29114c;
            if (mBSplashView == null || !mBSplashView.isDynamicView()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f29120i, new d());
                FeedBackButton a10 = com.mbridge.msdk.foundation.feedback.b.b().a(this.f29120i);
                if (a10 != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) a10.getLayoutParams();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        layoutParams = null;
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f26978e, com.mbridge.msdk.foundation.feedback.b.f26977d);
                    }
                    layoutParams.topMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    layoutParams.leftMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    ViewGroup viewGroup = (ViewGroup) a10.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(a10);
                    }
                    MBSplashView mBSplashView2 = this.f29114c;
                    if (mBSplashView2 != null) {
                        mBSplashView2.addView(a10, layoutParams);
                    }
                }
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f29120i, campaignEx, AdmobPreloadConfig.APP_OPEN);
    }

    private void a(String str) {
        com.mbridge.msdk.splash.middle.d dVar = this.f29115d;
        if (dVar != null) {
            MBridgeIds mBridgeIds = this.f29122k;
            dVar.a(mBridgeIds, "web show failed:" + str);
        }
        MBSplashView mBSplashView = this.f29114c;
        if (mBSplashView == null || mBSplashView.getParent() == null || !(this.f29114c.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) this.f29114c.getParent()).removeView(this.f29114c);
    }

    public void a(boolean z10) {
        this.f29117f = z10;
        if (z10) {
            this.f29124m = this.f29125n;
        } else {
            this.f29124m = this.f29127p;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f29116e == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29120i);
            this.f29116e = aVar;
            aVar.a(this.A);
        }
        campaignEx.setCampaignUnitId(this.f29120i);
        this.f29116e.a(campaignEx);
        if (!this.f29113b.isReportClick()) {
            this.f29113b.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f29115d;
        if (dVar != null) {
            dVar.a(this.f29122k);
            b(3);
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return;
        }
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f29120i, str);
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f29135x);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        MBSplashView mBSplashView;
        try {
            com.mbridge.msdk.splash.middle.d dVar = this.f29115d;
            if (dVar != null) {
                dVar.a(this.f29122k, i10);
                this.f29115d = null;
                com.mbridge.msdk.splash.report.a.a(this.f29120i, this.f29113b);
            }
            ImageView imageView = this.f29132u;
            if (imageView != null && imageView.getParent() != null && (mBSplashView = this.f29114c) != null) {
                mBSplashView.removeView(this.f29132u);
                this.f29132u.setVisibility(8);
            }
            this.f29129r = false;
            com.mbridge.msdk.splash.report.a.a(this.f29120i, i10, this.f29113b);
            Handler handler = this.f29136y;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e10) {
            p0.b("SplashShowManager", e10.getMessage());
        }
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        com.mbridge.msdk.foundation.controller.c.m().a(context);
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new g(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26106m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }
}
