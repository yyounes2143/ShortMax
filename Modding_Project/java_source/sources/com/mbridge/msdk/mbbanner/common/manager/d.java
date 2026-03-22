package com.mbridge.msdk.mbbanner.common.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.d1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbanner.view.MBBannerWebView;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.MBAdChoice;
import com.ss.ttm.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BaseBannerShowManager.java */
/* loaded from: classes5.dex */
public class d {
    private com.mbridge.msdk.mbbanner.common.communication.b A;
    private AdSession B;
    private AdEvents C;
    private float F;
    private float G;

    /* renamed from: a  reason: collision with root package name */
    protected com.mbridge.msdk.mbbanner.common.listener.c f27797a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27798b;

    /* renamed from: c  reason: collision with root package name */
    protected CampaignEx f27799c;

    /* renamed from: d  reason: collision with root package name */
    protected final MBBannerView f27800d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f27801e;

    /* renamed from: f  reason: collision with root package name */
    private MBBannerWebView f27802f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f27803g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f27804h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f27805i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27806j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27807k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27808l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f27809m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f27810n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f27811o;

    /* renamed from: p  reason: collision with root package name */
    protected final String f27812p;

    /* renamed from: q  reason: collision with root package name */
    private final String f27813q;

    /* renamed from: r  reason: collision with root package name */
    private String f27814r;

    /* renamed from: t  reason: collision with root package name */
    com.mbridge.msdk.click.a f27816t;

    /* renamed from: u  reason: collision with root package name */
    private List<CampaignEx> f27817u;

    /* renamed from: w  reason: collision with root package name */
    private View.OnTouchListener f27819w;

    /* renamed from: y  reason: collision with root package name */
    private int f27821y;

    /* renamed from: s  reason: collision with root package name */
    private int f27815s = -1;

    /* renamed from: v  reason: collision with root package name */
    private int f27818v = 1;

    /* renamed from: x  reason: collision with root package name */
    private int f27820x = 1;

    /* renamed from: z  reason: collision with root package name */
    private final long f27822z = 15000;
    private final Handler D = new e(Looper.getMainLooper());
    private final com.mbridge.msdk.foundation.same.task.a E = new f();
    private final View.OnClickListener H = new g();
    private com.mbridge.msdk.mbbanner.common.listener.a I = new h();
    private com.mbridge.msdk.mbsignalcommon.listener.b J = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27824a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27825b;

        b(Context context, CampaignEx campaignEx) {
            this.f27824a = context;
            this.f27825b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f27824a)).b(this.f27825b.getId());
            } catch (Exception e10) {
                p0.b("BannerShowManager", e10.getMessage());
            }
        }
    }

    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                try {
                    if (d.this.B != null) {
                        d dVar = d.this;
                        dVar.C = AdEvents.createAdEvents(dVar.B);
                        if (d.this.C != null) {
                            d.this.C.loaded();
                            d.this.C.impressionOccurred();
                        }
                    }
                } catch (Throwable th2) {
                    p0.a("BannerShowManager", th2.getMessage());
                }
            }
        }
    }

    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = d.this;
            if (dVar.f27811o) {
                dVar.f27815s = 1;
                d.this.b();
            }
        }
    }

    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    class h implements com.mbridge.msdk.mbbanner.common.listener.a {
        h() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(CampaignEx campaignEx) {
            d.this.a(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void close() {
            d.this.f27815s = 2;
            d.this.b();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void readyStatus(int i10) {
            if (i10 == 1) {
                d.this.p();
                d.this.a("", 1);
                return;
            }
            d.this.g();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void toggleCloseBtn(int i10) {
            if (i10 == 2) {
                d.this.e();
            } else {
                d.this.n();
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void triggerCloseBtn(String str) {
            d.this.f27815s = 2;
            d.this.b();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(boolean z10) {
            d dVar = d.this;
            if (dVar.f27797a != null) {
                dVar.f27810n = z10;
                if (z10) {
                    d.this.f27797a.a();
                } else {
                    d.this.f27797a.d();
                }
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.a
        public void a(boolean z10, String str) {
            try {
                if (d.this.f27797a != null) {
                    if (TextUtils.isEmpty(str)) {
                        d.this.f27797a.c();
                        d.this.f27797a.onLeaveApp();
                    } else {
                        CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(d.this.f27799c));
                        parseCampaignWithBackData.setClickTempSource(2);
                        parseCampaignWithBackData.setClickType(2);
                        parseCampaignWithBackData.setTriggerClickSource(2);
                        parseCampaignWithBackData.setClickURL(str);
                        d.this.a(parseCampaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e10) {
                p0.b("BannerShowManager", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            try {
                if (d.this.f27802f != null) {
                    if (d.this.f27818v == 2) {
                        str = "false";
                    } else {
                        str = "true";
                    }
                    MBBannerWebView mBBannerWebView = d.this.f27802f;
                    mBBannerWebView.evaluateJavascript("(function() {\n    var videos = document.getElementsByTagName('video');\n    for (var i = 0; i < videos.length; i++) {\n    videos[i].muted = " + str + ";\n    }\n    var audios = document.getElementsByTagName('audio');\n    for (var i = 0; i < audios.length; i++) {\n    audios[i].muted = " + str + ";\n    }\n    })()", null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class j implements View.OnTouchListener {
        j() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            d.this.F = motionEvent.getRawX();
            d.this.G = motionEvent.getRawY();
            p0.b("BannerShowManager", d.this.F + "  " + d.this.G);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.a(BannerUtils.managerCampaignEX(com.mbridge.msdk.mbsignalcommon.communication.d.a(d.this.F, d.this.G), d.this.f27799c), false, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class l implements com.mbridge.msdk.foundation.same.image.c {
        l() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880039);
            bVar.b(d.this.f27814r);
            d.this.a(bVar);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (d.this.f27801e != null) {
                d.this.f27801e.setImageBitmap(bitmap);
            }
            d.this.f27807k = true;
            d.this.o();
            d.this.n();
            d.this.m();
            d dVar = d.this;
            if (!dVar.f27811o) {
                dVar.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.p();
        }
    }

    public d(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.listener.c cVar, String str, String str2, boolean z10, com.mbridge.msdk.setting.l lVar) {
        this.f27798b = z10;
        this.f27800d = mBBannerView;
        this.f27812p = str2;
        this.f27813q = str;
        this.f27797a = new com.mbridge.msdk.mbbanner.common.listener.e(cVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        MBBannerView mBBannerView;
        if (this.f27807k && !this.f27808l && this.f27797a != null) {
            this.f27808l = true;
            this.D.removeCallbacks(this.E);
            CampaignEx campaignEx = this.f27799c;
            if (campaignEx != null && !campaignEx.isCallbacked()) {
                this.f27799c.setCallbacked(true);
                this.f27797a.a(this.f27817u);
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f27799c.getMaitve(), this.f27799c.getMaitve_src());
            }
        }
        if (this.f27807k && this.f27805i && this.f27806j && this.f27808l && this.f27799c != null && !d()) {
            boolean a10 = a();
            if (!a10 && (mBBannerView = this.f27800d) != null) {
                mBBannerView.postDelayed(new m(), 1000L);
            }
            if (this.f27809m && a10) {
                p0.b("BannerShowManager", "onBannerWebViewShow && transInfoToMraid");
                int[] iArr = new int[2];
                this.f27800d.getLocationInWindow(iArr);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f27802f, iArr[0], iArr[1]);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f27802f, iArr[0], iArr[1], this.f27800d.getWidth(), this.f27800d.getHeight());
                this.f27809m = false;
                this.f27820x = 1;
                if (!TextUtils.isEmpty(this.f27799c.getImageUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f27799c.getImageUrl());
                }
                l();
            }
            p0.b("BannerShowManager", "showSuccessed:" + this.f27799c.getId());
            CampaignEx campaignEx2 = this.f27799c;
            if (a10) {
                ImageView imageView = this.f27801e;
                if (imageView != null && imageView.getVisibility() == 0) {
                    CampaignEx campaignEx3 = this.f27799c;
                    if (campaignEx3 != null) {
                        b(campaignEx3);
                        this.f27799c.setReport(true);
                        this.f27820x = 2;
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f27812p, this.f27799c, "banner");
                    }
                } else {
                    List<CampaignEx> list = this.f27817u;
                    if (list != null && list.size() > 0) {
                        campaignEx2 = this.f27817u.get(0);
                        boolean z10 = false;
                        int i10 = 0;
                        for (int i11 = 0; i11 < this.f27817u.size(); i11++) {
                            if (!this.f27817u.get(i11).isHasMBTplMark() && (i11 == 0 || !this.f27817u.get(i11).isReport())) {
                                a(this.f27817u.get(i11), com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
                                this.f27817u.get(i11).setReport(true);
                                com.mbridge.msdk.foundation.same.buffer.b.a(this.f27812p, this.f27817u.get(i11), "banner");
                                i10 = i11;
                                z10 = true;
                            }
                        }
                        if (z10) {
                            b(this.f27817u.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
                            c(this.f27817u.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
                        }
                    }
                }
                this.f27811o = true;
                if (campaignEx2 != null && this.f27797a != null && !d1.a(this.f27800d, campaignEx2.getImpReportType())) {
                    this.f27797a.a(this.f27799c);
                    try {
                        CampaignEx campaignEx4 = this.f27799c;
                        if (campaignEx4 != null && campaignEx4.isActiveOm()) {
                            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                            MBBannerWebView mBBannerWebView = this.f27802f;
                            AdSession a11 = com.mbridge.msdk.omsdk.b.a(d10, mBBannerWebView, mBBannerWebView.getUrl(), this.f27799c);
                            this.B = a11;
                            if (a11 != null) {
                                try {
                                    a11.registerAdView(this.f27802f);
                                    ImageView imageView2 = this.f27803g;
                                    if (imageView2 != null) {
                                        this.B.addFriendlyObstruction(imageView2, FriendlyObstructionPurpose.CLOSE_AD, null);
                                    }
                                    ImageView imageView3 = this.f27801e;
                                    if (imageView3 != null) {
                                        this.B.addFriendlyObstruction(imageView3, FriendlyObstructionPurpose.OTHER, null);
                                    }
                                    this.B.start();
                                } catch (Exception e10) {
                                    p0.a("OMSDK", e10.getMessage());
                                }
                            } else {
                                CampaignEx campaignEx5 = this.f27799c;
                                if (campaignEx5 != null) {
                                    new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx5.getRequestId(), this.f27799c.getRequestIdNotice(), this.f27799c.getId(), this.f27812p, "fetch OM failed, context null");
                                }
                            }
                        }
                    } catch (Exception unused) {
                        CampaignEx campaignEx6 = this.f27799c;
                        if (campaignEx6 != null) {
                            new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx6.getRequestId(), this.f27799c.getRequestIdNotice(), this.f27799c.getId(), this.f27812p, "fetch OM failed, context null");
                        }
                    }
                    this.D.sendEmptyMessageDelayed(1, 1000L);
                    BitmapDrawable a12 = com.mbridge.msdk.foundation.controller.c.m().a(this.f27812p, this.f27799c.getAdType());
                    if (a12 != null) {
                        if (this.f27804h == null) {
                            this.f27804h = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                        }
                        if (this.f27804h.getVisibility() != 0) {
                            this.f27804h.setVisibility(0);
                        }
                        u0.a(this.f27804h, a12, this.f27800d.getResources().getDisplayMetrics());
                        if (this.f27804h.getParent() == null) {
                            this.f27800d.addView(this.f27804h, new ViewGroup.LayoutParams(-1, -1));
                        }
                        AdSession adSession = this.B;
                        if (adSession != null) {
                            adSession.addFriendlyObstruction(this.f27804h, FriendlyObstructionPurpose.OTHER, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            campaignEx2.setReport(false);
        }
    }

    private boolean q() {
        String a10 = a(this.f27799c);
        if (TextUtils.isEmpty(a10)) {
            return false;
        }
        if (this.f27800d != null) {
            if (this.f27802f == null) {
                try {
                    MBBannerWebView mBBannerWebView = new MBBannerWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                    this.f27802f = mBBannerWebView;
                    mBBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f27802f.setWebViewClient(new com.mbridge.msdk.mbbanner.view.a(this.f27812p, this.f27817u, this.I));
                } catch (Throwable unused) {
                    a(com.mbridge.msdk.foundation.error.a.a(880029), 1);
                    return false;
                }
            }
            ImageView imageView = this.f27801e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (this.f27802f.getVisibility() != 0) {
                this.f27802f.setVisibility(0);
            }
            if (this.f27802f.getParent() == null) {
                this.f27800d.addView(this.f27802f);
                a(this.f27799c.isMraid());
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL));
            if (!TextUtils.isEmpty(this.f27799c.getBidToken())) {
                eVar.a(CampaignEx.JSON_KEY_HB, 1);
            } else {
                eVar.a(CampaignEx.JSON_KEY_HB, 0);
            }
            com.mbridge.msdk.foundation.same.report.metrics.c a11 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, this.f27799c.getLocalRequestId());
            a11.a(CampaignEx.KEY_LOCAL_CHECK_STATE, eVar);
            a1.a(this.f27802f, a11.o(), this.f27799c.getLocalAllowTrackClick());
            if (this.f27799c.isMraid()) {
                m();
            }
            n();
            com.mbridge.msdk.mbbanner.common.communication.b bVar = new com.mbridge.msdk.mbbanner.common.communication.b(this.f27800d.getContext(), this.f27813q, this.f27812p);
            this.A = bVar;
            bVar.a(this.f27817u);
            this.A.a(this.I);
            this.A.a(this.f27821y);
            this.f27802f.setWebViewListener(this.J);
            this.f27802f.setObject(this.A);
            this.f27802f.loadUrl(a10);
            MBBannerWebView mBBannerWebView2 = this.f27802f;
            if (mBBannerWebView2 != null) {
                mBBannerWebView2.postDelayed(new i(), 1000L);
            }
        } else {
            a(com.mbridge.msdk.foundation.error.a.a(880046), 2);
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880046);
            bVar2.b(this.f27814r);
            a(bVar2);
        }
        return true;
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    private synchronized boolean d() {
        boolean isReport;
        isReport = this.f27799c.isReport();
        if (!isReport) {
            this.f27799c.setReport(true);
        }
        return isReport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ImageView imageView;
        if (this.f27798b && (imageView = this.f27803g) != null && imageView.getVisibility() == 0) {
            this.f27803g.setVisibility(8);
            this.f27803g.setOnClickListener(null);
            if (this.f27800d == null || this.f27803g.getParent() == null) {
                return;
            }
            this.f27800d.removeView(this.f27803g);
        }
    }

    private void f() {
        if (this.f27798b && this.f27803g == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f27803g = imageView;
            imageView.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_banner_close", "drawable"));
            this.f27803g.setVisibility(8);
            this.f27803g.setContentDescription("closeButton");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void g() {
        if (this.f27800d != null) {
            MBBannerWebView mBBannerWebView = this.f27802f;
            if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
                this.f27800d.removeView(this.f27802f);
            }
            if (this.f27801e == null) {
                this.f27801e = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                this.f27819w = new j();
                this.f27801e.setOnClickListener(new k());
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL));
            if (!TextUtils.isEmpty(this.f27799c.getBidToken())) {
                eVar.a(CampaignEx.JSON_KEY_HB, 1);
            } else {
                eVar.a(CampaignEx.JSON_KEY_HB, 0);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, this.f27799c.getLocalRequestId()).a(CampaignEx.KEY_LOCAL_CHECK_STATE, eVar);
            a1.a(this.f27801e, this.f27799c.getLocalRequestId(), this.f27799c.getLocalAllowTrackClick(), this.f27819w);
            String imageUrl = this.f27799c.getImageUrl();
            if (!TextUtils.isEmpty(imageUrl)) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(imageUrl, new l());
                return;
            }
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880047);
            bVar.b(this.f27814r);
            a(bVar);
            return;
        }
        com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880046);
        bVar2.b(this.f27814r);
        a(bVar2);
    }

    private void i() {
        AdSession adSession = this.B;
        if (adSession != null) {
            adSession.finish();
            this.B = null;
            p0.a("omsdk", " adSession.finish() ");
        }
    }

    private void j() {
        try {
            CampaignEx campaignEx = this.f27799c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, campaignEx.getLocalRequestId());
                a10.g(this.f27820x);
                a10.b(true);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000152", a10, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            p0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void k() {
        try {
            CampaignEx campaignEx = this.f27799c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, campaignEx.getLocalRequestId());
                a10.g(this.f27820x);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("close_click_type", Integer.valueOf(this.f27815s));
                eVar.a(CampaignEx.JSON_KEY_CREATIVE_ID, Long.valueOf(this.f27799c.getCreativeId()));
                com.mbridge.msdk.mbbanner.common.report.a.a("2000069", a10, eVar);
            }
        } catch (Throwable th2) {
            p0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void l() {
        try {
            CampaignEx campaignEx = this.f27799c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, campaignEx.getLocalRequestId());
                a10.g(this.f27820x);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000133", a10, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            p0.b("BannerShowManager", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.f27800d == null) {
            return;
        }
        CampaignEx campaignEx = this.f27799c;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() == 1) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(this.f27799c);
            mBAdChoice.setFeedbackDialogEventListener(new a());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f), u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            this.f27800d.addView(mBAdChoice, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        ImageView imageView;
        if (!this.f27798b || (imageView = this.f27803g) == null) {
            return;
        }
        if (imageView.getVisibility() != 0) {
            this.f27803g.setVisibility(0);
            this.f27803g.setOnClickListener(this.H);
        }
        if (this.f27803g.getParent() != null || this.f27800d == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        this.f27800d.addView(this.f27803g, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f27801e != null) {
            MBBannerWebView mBBannerWebView = this.f27802f;
            if (mBBannerWebView != null) {
                mBBannerWebView.setVisibility(8);
            }
            if (this.f27801e.getVisibility() != 0) {
                this.f27801e.setVisibility(0);
            }
            this.f27820x = 2;
            if (this.f27800d != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                this.f27801e.setScaleType(ImageView.ScaleType.FIT_XY);
                if (this.f27801e.getParent() == null) {
                    this.f27800d.addView(this.f27801e, layoutParams);
                }
                a(true);
            }
        }
    }

    public void h() {
        i();
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f27799c, this.f27812p);
        if (this.f27797a != null) {
            this.f27797a = null;
        }
        MBBannerWebView mBBannerWebView = this.f27802f;
        if (mBBannerWebView != null) {
            mBBannerWebView.setWebViewListener(null);
        }
        if (this.J != null) {
            this.J = null;
        }
        ImageView imageView = this.f27803g;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.f27801e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        MBBannerView mBBannerView = this.f27800d;
        if (mBBannerView != null) {
            mBBannerView.removeAllViews();
        }
        MBBannerWebView mBBannerWebView2 = this.f27802f;
        if (mBBannerWebView2 != null) {
            mBBannerWebView2.release();
        }
        com.mbridge.msdk.mbbanner.common.communication.b bVar = this.A;
        if (bVar != null) {
            bVar.a();
        }
        if (this.I != null) {
            this.I = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f27812p);
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p);
    }

    public void c(boolean z10) {
        this.f27798b = z10;
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
                p0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    public void b(CampaignUnit campaignUnit) {
        CampaignEx a10 = a(campaignUnit);
        this.f27799c = a10;
        if (a10 == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880043);
            bVar.b(this.f27814r);
            a(bVar);
        } else if (!com.mbridge.msdk.foundation.tools.g.a(a10, (Context) null, this.f27800d, a10.getImpReportType())) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880044);
            bVar2.b(this.f27814r);
            a(bVar2);
        } else {
            this.D.removeCallbacks(this.E);
            f();
            this.f27807k = false;
            this.f27808l = false;
            this.f27811o = false;
            if (!TextUtils.isEmpty(this.f27799c.getBannerHtml()) || !TextUtils.isEmpty(this.f27799c.getBannerUrl())) {
                com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, this.f27799c);
            }
            this.D.postDelayed(this.E, 15000L);
            if (q()) {
                return;
            }
            if (!TextUtils.isEmpty(this.f27799c.getBannerHtml()) || !TextUtils.isEmpty(this.f27799c.getBannerUrl())) {
                a(com.mbridge.msdk.foundation.error.a.a(880048), 2);
            }
            g();
        }
    }

    public void d(boolean z10) {
        this.f27806j = z10;
        p();
    }

    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {
        c() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            d.this.f27807k = true;
            com.mbridge.msdk.mbbanner.common.communication.a.a(webView);
            d.this.f27809m = true;
            CampaignEx campaignEx = d.this.f27799c;
            if (campaignEx == null || campaignEx.isHasMBTplMark()) {
                return;
            }
            d.this.p();
            d.this.a("", 1);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
            bVar.c(i10 + " WebView receive error: " + i10 + "  message : " + str);
            bVar.b(d.this.f27814r);
            d.this.a(bVar);
            d.this.a(str, 2);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            d.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBannerShowManager.java */
    /* renamed from: com.mbridge.msdk.mbbanner.common.manager.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0384d implements com.mbridge.msdk.foundation.feedback.a {
        C0384d() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            d.this.f27800d.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            d.this.f27800d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            d.this.f27800d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b("BannerShowManager", th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f27802f, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    public void a(boolean z10, int i10) {
        this.f27821y = i10;
        if (i10 != 0) {
            this.f27798b = z10;
            return;
        }
        com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f27812p);
        if (e10 != null) {
            this.f27798b = e10.g() == 1;
        }
    }

    public int c() {
        return this.f27820x;
    }

    private CampaignEx a(CampaignUnit campaignUnit) {
        if (campaignUnit != null) {
            ArrayList<CampaignEx> ads = campaignUnit.getAds();
            this.f27817u = ads;
            if (ads != null && ads.size() > 0) {
                return this.f27817u.get(0);
            }
        }
        return null;
    }

    /* compiled from: BaseBannerShowManager.java */
    /* loaded from: classes5.dex */
    class f extends com.mbridge.msdk.foundation.same.task.a {
        f() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880045);
            bVar.b(d.this.f27799c.getLocalRequestId());
            d.this.a(bVar);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }
    }

    private String a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            String bannerUrl = campaignEx.getBannerUrl();
            if (TextUtils.isEmpty(bannerUrl)) {
                String bannerHtml = campaignEx.getBannerHtml();
                File file = new File(bannerHtml);
                if (file.exists() && file.isFile() && file.canRead()) {
                    return "file:////" + bannerHtml;
                }
                return bannerHtml;
            }
            return bannerUrl;
        } catch (Throwable th2) {
            p0.b("BannerShowManager", th2.getMessage());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        k();
        MBBannerWebView mBBannerWebView = this.f27802f;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f27800d.removeView(this.f27802f);
        }
        ImageView imageView = this.f27801e;
        if (imageView != null && imageView.getParent() != null) {
            this.f27801e.setVisibility(8);
            this.f27800d.removeView(this.f27801e);
        }
        ImageView imageView2 = this.f27803g;
        if (imageView2 != null && imageView2.getParent() != null) {
            this.f27800d.removeView(this.f27803g);
            this.f27803g.setVisibility(8);
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f27812p);
        ImageView imageView3 = this.f27804h;
        if (imageView3 != null && imageView3.getParent() != null) {
            this.f27800d.removeView(this.f27804h);
            this.f27804h.setVisibility(8);
        }
        BannerUtils.inserCloseId(this.f27812p, this.f27817u);
        j();
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f27797a;
        if (cVar != null) {
            cVar.b();
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        if (this.f27799c == null || d()) {
            return;
        }
        this.D.removeCallbacks(this.E);
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f27797a;
        if (cVar != null) {
            cVar.a(bVar);
        }
    }

    private boolean a() {
        if (this.f27800d == null) {
            return false;
        }
        CampaignEx campaignEx = this.f27799c;
        return (d1.a(this.f27800d, campaignEx != null ? campaignEx.getImpReportType() : 0) || this.f27810n) ? false : true;
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new b(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26106m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }

    public void a(int i10, int i11, int i12, int i13) {
        if (i10 == i12 && i11 == i13) {
            return;
        }
        com.mbridge.msdk.mbbanner.common.communication.a.a((WebView) this.f27802f, i10, i11);
    }

    private void a(boolean z10) {
        if (this.f27800d != null) {
            FeedBackButton a10 = com.mbridge.msdk.foundation.feedback.b.b().a(this.f27812p);
            if (com.mbridge.msdk.foundation.feedback.b.b().a() && z10 && a10 != null) {
                ViewGroup viewGroup = (ViewGroup) a10.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(a10);
                }
                a10.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) a10.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f26978e, com.mbridge.msdk.foundation.feedback.b.f26977d);
                }
                layoutParams.addRule(12);
                a10.setLayoutParams(layoutParams);
                this.f27800d.addView(a10);
            }
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f27812p, new C0384d());
            this.f27799c.setCampaignUnitId(this.f27812p);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f27812p, this.f27799c);
        }
    }

    public void b(boolean z10) {
        this.f27805i = z10;
        p();
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
            b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
            c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
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
                p0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    public void a(String str) {
        this.f27814r = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i10) {
        try {
            CampaignEx campaignEx = this.f27799c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27812p, campaignEx.getLocalRequestId());
                a10.g(this.f27820x);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", Integer.valueOf(i10));
                if (TextUtils.isEmpty(str)) {
                    str = "";
                }
                eVar.a("reason", str);
                a10.d(TextUtils.isEmpty(this.f27799c.getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000068", a10, eVar);
            }
        } catch (Throwable th2) {
            p0.b("BannerShowManager", th2.getMessage());
        }
    }
}
