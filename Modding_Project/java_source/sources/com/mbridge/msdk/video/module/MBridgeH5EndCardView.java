package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.ads.AdError;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeH5EndCardView extends MBridgeH5EndCardViewDiff {
    private int A;
    private long B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private String K;
    Handler L;
    private boolean M;
    private boolean N;
    boolean O;

    /* renamed from: m  reason: collision with root package name */
    protected View f30973m;

    /* renamed from: n  reason: collision with root package name */
    protected RelativeLayout f30974n;

    /* renamed from: o  reason: collision with root package name */
    protected ImageView f30975o;

    /* renamed from: p  reason: collision with root package name */
    protected WindVaneWebView f30976p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f30977q;

    /* renamed from: r  reason: collision with root package name */
    protected Handler f30978r;

    /* renamed from: s  reason: collision with root package name */
    protected String f30979s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f30980t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f30981u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f30982v;

    /* renamed from: w  reason: collision with root package name */
    private int f30983w;

    /* renamed from: x  reason: collision with root package name */
    private int f30984x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f30985y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f30986z;

    /* loaded from: classes6.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 100) {
                if (MBridgeH5EndCardView.this.C) {
                    MBridgeH5EndCardView.this.notifyListener.a(122, "");
                }
                MBridgeH5EndCardView.this.notifyListener.a(103, "");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeH5EndCardView.this.onCloseViewClick();
        }
    }

    /* loaded from: classes6.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p0.a(MBridgeBaseView.TAG, "webviewshow");
                int[] iArr = new int[2];
                MBridgeH5EndCardView.this.f30976p.getLocationOnScreen(iArr);
                p0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                if (d10 != null) {
                    jSONObject.put("startX", u0.b(d10, iArr[0]));
                    jSONObject.put("startY", u0.b(d10, iArr[1]));
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(d10));
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f30976p, "webviewshow", Base64.encodeToString(jSONObject.toString().toString().getBytes(), 2));
                MBridgeH5EndCardView.this.notifyListener.a(109, "");
                MBridgeH5EndCardView.this.i();
                MBridgeH5EndCardView.this.startCounterEndCardShowTimer();
                com.mbridge.msdk.mbsignalcommon.windvane.f a10 = com.mbridge.msdk.mbsignalcommon.windvane.f.a();
                MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
                a10.a((WebView) mBridgeH5EndCardView.f30976p, "oncutoutfetched", Base64.encodeToString(mBridgeH5EndCardView.K.getBytes(), 0));
                MBridgeH5EndCardView.this.e();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f30993a;

        public f(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f30993a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e10) {
                p0.b("CloseRunnable", e10.getMessage());
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30993a;
            if (mBridgeH5EndCardView != null && (handler = mBridgeH5EndCardView.L) != null) {
                handler.sendEmptyMessage(100);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f30995a;

        public g(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f30995a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30995a;
            if (mBridgeH5EndCardView != null && !mBridgeH5EndCardView.f30986z) {
                this.f30995a.f30986z = true;
                this.f30995a.f30980t = false;
                MBridgeH5EndCardView.this.reportRenderResult("timeout", 5);
                this.f30995a.notifyListener.a(127, "");
                p0.a(MBridgeBaseView.TAG, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f30997a;

        /* renamed from: b  reason: collision with root package name */
        private int f30998b;

        public h(MBridgeH5EndCardView mBridgeH5EndCardView, int i10) {
            this.f30997a = mBridgeH5EndCardView;
            this.f30998b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30997a;
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.f30926b != null) {
                try {
                    if (!mBridgeH5EndCardView.f30985y) {
                        this.f30997a.f30985y = true;
                        if (z0.b(this.f30997a.f30926b.getendcard_url()) && this.f30997a.f30926b.getendcard_url().contains(".zip")) {
                            str = "1";
                        } else {
                            str = "2";
                        }
                        n nVar = new n("m_download_end", 12, (this.f30998b * 1000) + "", this.f30997a.f30926b.getendcard_url(), this.f30997a.f30926b.getId(), this.f30997a.unitId, "ready timeout", str);
                        try {
                            if (this.f30997a.f30926b.getAdType() == 287) {
                                nVar.a("3");
                            } else if (this.f30997a.f30926b.getAdType() == 94) {
                                nVar.a("1");
                            } else if (this.f30997a.f30926b.getAdType() == 42) {
                                nVar.a("2");
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        nVar.n(this.f30997a.f30926b.getRequestId());
                        nVar.k(this.f30997a.f30926b.getCurrentLocalRid());
                        nVar.o(this.f30997a.f30926b.getRequestIdNotice());
                        nVar.a(this.f30997a.f30926b.getAdSpaceT());
                        this.f30997a.isLoadSuccess();
                        return;
                    }
                    p0.c(MBridgeBaseView.TAG, "insertEndCardReadyState hasInsertLoadEndCardReport true return");
                } catch (Throwable th2) {
                    p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f30999a;

        public i(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f30999a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30999a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.G = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f31001a;

        public j(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f31001a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f31001a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.H = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeH5EndCardView f31003a;

        public k(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f31003a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f31003a;
            if (mBridgeH5EndCardView != null) {
                if (!mBridgeH5EndCardView.I) {
                    MBridgeH5EndCardView.this.setCloseVisible(0);
                }
                this.f31003a.D = true;
            }
        }
    }

    public MBridgeH5EndCardView(Context context) {
        super(context);
        this.f30977q = false;
        this.f30978r = new Handler();
        this.f30980t = false;
        this.f30981u = false;
        this.f30982v = false;
        this.f30983w = 1;
        this.f30984x = 1;
        this.f30985y = false;
        this.f30986z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isMraid()) {
            int i10 = getResources().getConfiguration().orientation;
            String str = AdError.UNDEFINED_DOMAIN;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        str = "landscape";
                    }
                } else {
                    str = "portrait";
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
                jSONObject.put("locked", "true");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "Interstitial");
            hashMap.put("state", DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            if (getContext() instanceof Activity) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f30976p, l0.n(getContext()), l0.m(getContext()));
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f30976p, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            com.mbridge.msdk.mbsignalcommon.mraid.a a10 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f30976p;
            a10.b(windVaneWebView, windVaneWebView.getLeft(), this.f30976p.getTop(), this.f30976p.getWidth(), this.f30976p.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a a11 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f30976p;
            a11.a(windVaneWebView2, windVaneWebView2.getLeft(), this.f30976p.getTop(), this.f30976p.getWidth(), this.f30976p.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f30976p, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f30976p, com.mbridge.msdk.mbsignalcommon.mraid.d.f28206f);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f30976p);
        }
    }

    public boolean canBackPress() {
        ImageView imageView = this.f30975o;
        if (imageView != null && imageView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    public void excuteEndCardShowTask(int i10) {
        this.f30978r.postDelayed(new h(this, i10), i10 * 1000);
    }

    public void excuteTask() {
        if (!this.f30982v && this.f30983w > -1) {
            this.f30978r.postDelayed(new k(this), this.f30983w * 1000);
        }
    }

    public void executeEndCardShow(int i10) {
        this.f30978r.postDelayed(new g(this), i10 * 1000);
    }

    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f30926b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getURL() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            this.C = true;
            if (campaignEx.isMraid()) {
                this.f30982v = false;
                String mraid = this.f30926b.getMraid();
                if (!TextUtils.isEmpty(mraid)) {
                    File file = new File(mraid);
                    try {
                        if (file.exists() && file.isFile() && file.canRead()) {
                            mraid = "file:////" + mraid;
                        } else {
                            mraid = this.f30926b.getEndScreenUrl();
                        }
                        return mraid;
                    } catch (Throwable th2) {
                        if (MBridgeConstans.DEBUG) {
                            th2.printStackTrace();
                            return mraid;
                        }
                        return mraid;
                    }
                }
                return this.f30926b.getEndScreenUrl();
            }
            String str = this.f30926b.getendcard_url();
            if (!z0.a(str)) {
                this.f30982v = true;
                String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
                if (TextUtils.isEmpty(h5ResAddress)) {
                    try {
                        String path = Uri.parse(str).getPath();
                        if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(".zip")) {
                            String endScreenUrl = this.f30926b.getEndScreenUrl();
                            if (TextUtils.isEmpty(endScreenUrl)) {
                                return null;
                            }
                            this.f30982v = false;
                            excuteTask();
                            return endScreenUrl;
                        }
                    } catch (Throwable th3) {
                        p0.b(MBridgeBaseView.TAG, th3.getMessage());
                    }
                    return str + "&native_adtype=" + this.f30926b.getAdType();
                }
                return h5ResAddress + "&native_adtype=" + this.f30926b.getAdType();
            }
            this.f30982v = false;
            return this.f30926b.getEndScreenUrl();
        }
        this.C = false;
        return null;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void handlerPlayableException(String str) {
        if (!this.f30981u) {
            this.f30981u = true;
            this.f30980t = false;
            if (this.f30926b != null) {
                n nVar = new n();
                nVar.n(this.f30926b.getRequestId());
                nVar.o(this.f30926b.getRequestIdNotice());
                nVar.b(this.f30926b.getId());
                nVar.m(str);
                com.mbridge.msdk.foundation.same.report.g.a(nVar, this.f30925a.getApplicationContext(), this.unitId);
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_endcard_h5");
        if (h0.a(findLayout)) {
            View inflate = this.f30927c.inflate(findLayout, (ViewGroup) null);
            this.f30973m = inflate;
            try {
                this.f30929e = a(inflate);
            } catch (Exception unused) {
                this.f30929e = false;
            }
            addView(this.f30973m, getContentLayoutParams());
            d();
            j();
        }
    }

    public boolean isLoadSuccess() {
        return this.f30980t;
    }

    public boolean isPlayable() {
        return this.f30982v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        if (this.f30929e) {
            setMatchParent();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                this.F = true;
                return;
            }
            return;
        }
        this.E = true;
    }

    public void onBackPress() {
        boolean z10;
        if (this.D || (((z10 = this.E) && this.F) || ((!z10 && this.G && !this.O) || (!z10 && this.H && this.O)))) {
            onCloseViewClick();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.mbridge.msdk.foundation.same.report.metrics.d] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.mbridge.msdk.foundation.entity.CampaignEx] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0033 -> B:18:0x005b). Please submit an issue!!! */
    public void onCloseViewClick() {
        Object obj = "";
        int i10 = 119;
        int i11 = 103;
        try {
            if (this.f30976p != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30976p, "onSystemDestory", "");
                new Thread(new f(this)).start();
            } else {
                this.notifyListener.a(103, "");
                this.notifyListener.a(119, "webview is null when closing webview");
            }
        } catch (Exception e10) {
            this.notifyListener.a(i11, obj);
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            aVar.a(i10, "close webview exception" + e10.getMessage());
            p0.a(MBridgeBaseView.TAG, e10.getMessage());
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            obj = com.mbridge.msdk.foundation.same.report.metrics.d.b();
            i10 = "2000134";
            i11 = this.f30926b;
            obj.a("2000134", i11);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        t0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        t0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        t0.b(campaign, this);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0 && !this.J) {
            this.J = true;
            setFocusableInTouchMode(true);
            requestFocus();
            requestFocusFromTouch();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isMraid()) {
            if (z10) {
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f30976p, "true");
            } else {
                com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f30976p, "false");
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        super.open(str);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "landscape");
            } else {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30976p, AdUnitActivity.EXTRA_ORIENTATION, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        boolean z10;
        String url = getURL();
        if (this.f30929e && this.f30926b != null && !TextUtils.isEmpty(url) && this.f30976p != null) {
            this.B = System.currentTimeMillis();
            try {
                reportRenderResult("start", 0);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f30926b);
            aVar.a(this.f30926b.getAppName());
            this.f30976p.setDownloadListener(aVar);
            this.f30976p.setCampaignId(this.f30926b.getId());
            this.f30976p.setTempTypeForMetrics(3);
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                this.f30976p.setCampaignEx(campaignEx);
            }
            setCloseVisible(8);
            this.f30976p.setApiManagerJSFactory(bVar);
            if (this.f30926b.isMraid()) {
                this.f30976p.setMraidObject(this);
            }
            if (!url.contains("wfr=1") && !url.contains("wfl=1")) {
                z10 = false;
            } else {
                z10 = true;
            }
            a1.a(this.f30976p, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            this.f30976p.setWebViewListener(new c(z10));
            if (TextUtils.isEmpty(this.f30926b.getMraid())) {
                h();
            }
            setHtmlSource(HTMLResourceManager.getInstance().getHtmlContentFromUrl(url));
            if (TextUtils.isEmpty(this.f30979s)) {
                this.f30976p.loadUrl(url);
            } else {
                this.f30976p.loadDataWithBaseURL(url, this.f30979s, "text/html", "UTF-8", null);
            }
        } else {
            reportRenderResult("PL URL IS NULL", 3);
            this.notifyListener.a(127, "");
            this.notifyListener.a(129, "");
        }
        this.O = false;
    }

    public void release() {
        Handler handler = this.f30978r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f30978r = null;
        }
        Handler handler2 = this.L;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.L = null;
        }
        this.f30974n.removeAllViews();
        this.f30976p.release();
        this.f30976p = null;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.f30926b.isBidCampaign());
        }
    }

    public void reportRenderResult(String str, int i10) {
        if (this.f30926b != null && !this.f30981u) {
            n nVar = new n();
            nVar.n(this.f30926b.getRequestId());
            nVar.o(this.f30926b.getRequestIdNotice());
            nVar.b(this.f30926b.getId());
            nVar.d(i10);
            nVar.e(String.valueOf(System.currentTimeMillis() - this.B));
            nVar.m(str);
            String str2 = "2";
            if (this.f30926b.getAdType() == 287) {
                nVar.a("3");
            } else if (this.f30926b.getAdType() == 94) {
                nVar.a("1");
            } else if (this.f30926b.getAdType() == 42) {
                nVar.a("2");
            }
            if (this.f30926b.isMraid()) {
                nVar.b(n.N);
            } else {
                nVar.g(this.f30926b.getendcard_url());
                if (z0.b(this.f30926b.getendcard_url()) && this.f30926b.getendcard_url().contains(".zip")) {
                    str2 = "1";
                }
                nVar.f(str2);
                nVar.b(n.O);
            }
            com.mbridge.msdk.foundation.same.report.g.b(nVar, this.unitId, this.f30926b);
        }
    }

    public void setCloseDelayShowTime(int i10) {
        this.f30983w = i10;
    }

    public void setCloseVisible(int i10) {
        if (this.f30929e) {
            this.f30975o.setVisibility(i10);
        }
    }

    public void setCloseVisibleForMraid(int i10) {
        if (this.f30929e) {
            this.I = true;
            if (i10 == 4) {
                this.f30975o.setImageDrawable(new ColorDrawable(16711680));
            } else {
                this.f30975o.setImageResource(findDrawable("mbridge_reward_close"));
            }
            this.f30975o.setVisibility(0);
        }
    }

    public void setError(boolean z10) {
        this.f30981u = z10;
    }

    public void setHtmlSource(String str) {
        this.f30979s = str;
    }

    public void setLoadPlayable(boolean z10) {
        this.O = z10;
    }

    public void setNotchValue(String str, int i10, int i11, int i12, int i13) {
        if (!TextUtils.isEmpty(str)) {
            this.K = str;
        }
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.getAdSpaceT() != 2) {
            p0.b(MBridgeBaseView.TAG, "NOTCH H5ENDCARD " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f30975o.getLayoutParams();
            int a10 = u0.a(getContext(), 20.0f);
            layoutParams.setMargins(i10 + a10, i12 + a10, i11 + a10, i13 + a10);
            this.f30975o.setLayoutParams(layoutParams);
        }
    }

    public void setPlayCloseBtnTm(int i10) {
        this.f30984x = i10;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String str = this.f30926b.getendcard_url();
            if (z0.b(str) && str.contains("wfl=1")) {
                String[] split = str.split(ContainerUtils.FIELD_DELIMITER);
                int i10 = 15;
                if (split != null && split.length > 0) {
                    for (String str2 : split) {
                        if (z0.b(str2) && str2.contains("timeout") && str2.split(ContainerUtils.KEY_VALUE_DELIMITER) != null && str2.split(ContainerUtils.KEY_VALUE_DELIMITER).length > 0) {
                            i10 = u0.a((Object) str2.split(ContainerUtils.KEY_VALUE_DELIMITER)[1]);
                        }
                    }
                }
                executeEndCardShow(i10);
            }
        } catch (Throwable th2) {
            p0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i10) {
        int visibility = this.f30975o.getVisibility();
        if (i10 != 1) {
            if (i10 == 2) {
                this.D = false;
                if (this.O) {
                    g();
                } else {
                    f();
                }
                visibility = 8;
            }
        } else {
            this.D = true;
            visibility = 0;
        }
        setCloseVisible(visibility);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        int i10;
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        try {
            setCloseVisibleForMraid(i10);
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void volumeChange(double d10) {
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f30976p, d10);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.f30976p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new d());
        }
    }

    private void f() {
        if (this.M || this.E) {
            return;
        }
        this.M = true;
        int i10 = this.f30983w;
        if (i10 == 0) {
            this.G = true;
            return;
        }
        this.G = false;
        if (i10 > -1) {
            this.f30978r.postDelayed(new i(this), this.f30983w * 1000);
        }
    }

    private void g() {
        if (this.N || this.E) {
            return;
        }
        this.N = true;
        int i10 = this.f30984x;
        if (i10 == 0) {
            this.H = true;
            return;
        }
        this.H = false;
        if (i10 > -1) {
            this.f30978r.postDelayed(new j(this), this.f30984x * 1000);
        }
    }

    private void h() {
        int v10;
        try {
            this.B = System.currentTimeMillis();
            String str = this.f30926b.getendcard_url();
            com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.unitId);
            if (this.f30982v && z0.b(str)) {
                if (!str.contains("wfr=1") && (c10 == null || c10.v() <= 0)) {
                    return;
                }
                if (str.contains("wfr=1")) {
                    String[] split = str.split(ContainerUtils.FIELD_DELIMITER);
                    if (split != null && split.length > 0) {
                        for (String str2 : split) {
                            if (z0.b(str2) && str2.contains(TypedValues.TransitionType.S_TO) && str2.split(ContainerUtils.KEY_VALUE_DELIMITER) != null && str2.split(ContainerUtils.KEY_VALUE_DELIMITER).length > 0) {
                                v10 = u0.a((Object) str2.split(ContainerUtils.KEY_VALUE_DELIMITER)[1]);
                                break;
                            }
                        }
                    }
                    v10 = 20;
                } else {
                    if (c10 != null && c10.v() > 0) {
                        v10 = c10.v();
                    }
                    v10 = 20;
                }
                if (v10 >= 0) {
                    excuteEndCardShowTask(v10);
                } else {
                    excuteEndCardShowTask(20);
                }
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                campaignEx.setCampaignUnitId(this.unitId);
                com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
                b10.d(this.unitId + "_1");
                com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
                b11.a(this.unitId + "_2", this.f30926b);
            }
            CampaignEx campaignEx2 = this.f30926b;
            if (campaignEx2 == null || !campaignEx2.isMraid()) {
                return;
            }
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            imageView.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_notice", "drawable"));
            ImageView imageView2 = this.f30975o;
            RelativeLayout.LayoutParams layoutParams = imageView2 != null ? (RelativeLayout.LayoutParams) imageView2.getLayoutParams() : null;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.addRule(9);
            layoutParams2.addRule(10);
            if (layoutParams != null) {
                layoutParams2.leftMargin = layoutParams.rightMargin;
                layoutParams2.topMargin = layoutParams.topMargin;
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams2.leftMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
                layoutParams2.topMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
            }
            addView(imageView, layoutParams2);
            u0.a(4, imageView, this.f30926b, com.mbridge.msdk.foundation.controller.c.m().d(), false, new e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        if (this.f30929e) {
            this.f30975o.setOnClickListener(new b());
        }
    }

    private boolean a(View view) {
        this.f30975o = (ImageView) view.findViewById(findID("mbridge_windwv_close"));
        this.f30974n = (RelativeLayout) view.findViewById(findID("mbridge_windwv_content_rl"));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext());
        this.f30976p = windVaneWebView;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
        }
        this.f30976p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f30974n.addView(this.f30976p);
        return isNotNULL(this.f30975o, this.f30976p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements com.mbridge.msdk.foundation.feedback.a {
        e() {
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
                p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f30976p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
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
                p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f30976p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f30976p, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(13:7|8|(1:50)(1:12)|13|(1:15)(2:46|(1:48)(8:49|17|18|19|(1:21)(2:37|(1:39)(2:40|(1:42)))|22|23|(1:34)(4:27|(1:29)(1:33)|30|32)))|16|17|18|19|(0)(0)|22|23|(2:25|34)(1:35)) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r18, boolean r20) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeH5EndCardView.a(long, boolean):void");
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void install(CampaignEx campaignEx) {
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void readyStatus(int i10) {
    }

    public MBridgeH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30977q = false;
        this.f30978r = new Handler();
        this.f30980t = false;
        this.f30981u = false;
        this.f30982v = false;
        this.f30983w = 1;
        this.f30984x = 1;
        this.f30985y = false;
        this.f30986z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    /* loaded from: classes6.dex */
    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f30989a;

        c(boolean z10) {
            this.f30989a = z10;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f30981u) {
                return;
            }
            mBridgeH5EndCardView.f30980t = true;
            mBridgeH5EndCardView.notifyListener.a(100, "");
            if (MBridgeH5EndCardView.this.f30926b != null) {
                n nVar = new n();
                nVar.n(MBridgeH5EndCardView.this.f30926b.getRequestId());
                nVar.o(MBridgeH5EndCardView.this.f30926b.getRequestIdNotice());
                nVar.b(MBridgeH5EndCardView.this.f30926b.getId());
                nVar.d(1);
                nVar.e(String.valueOf(System.currentTimeMillis() - MBridgeH5EndCardView.this.B));
                nVar.m("onPageFinished");
                String str2 = "2";
                if (MBridgeH5EndCardView.this.f30926b.getAdType() == 287) {
                    nVar.a("3");
                } else if (MBridgeH5EndCardView.this.f30926b.getAdType() == 94) {
                    nVar.a("1");
                } else if (MBridgeH5EndCardView.this.f30926b.getAdType() == 42) {
                    nVar.a("2");
                }
                if (MBridgeH5EndCardView.this.f30926b.isMraid()) {
                    nVar.b(n.N);
                } else {
                    nVar.g(MBridgeH5EndCardView.this.f30926b.getendcard_url());
                    if (z0.b(MBridgeH5EndCardView.this.f30926b.getendcard_url()) && MBridgeH5EndCardView.this.f30926b.getendcard_url().contains(".zip")) {
                        str2 = "1";
                    }
                    nVar.f(str2);
                    nVar.b(n.O);
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = MBridgeH5EndCardView.this;
                com.mbridge.msdk.foundation.same.report.g.b(nVar, mBridgeH5EndCardView2.unitId, mBridgeH5EndCardView2.f30926b);
            }
            MBridgeH5EndCardView.this.notifyListener.a(120, "");
            if (this.f30989a) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 3);
                eVar.a("result", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f30926b, eVar);
            } catch (Throwable th2) {
                p0.b("WindVaneWebView", th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i10) {
            super.b(webView, i10);
            MBridgeH5EndCardView.this.A = i10;
            if (!MBridgeH5EndCardView.this.f30986z) {
                MBridgeH5EndCardView.this.f30986z = true;
                if (i10 == 1) {
                    MBridgeH5EndCardView.this.reportRenderResult("success", 4);
                    return;
                }
                MBridgeH5EndCardView.this.notifyListener.a(127, "");
                MBridgeH5EndCardView.this.reportRenderResult("failed", 6);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f30981u) {
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar = mBridgeH5EndCardView.notifyListener;
            aVar.a(118, "onReceivedError " + i10 + str);
            MBridgeH5EndCardView.this.reportRenderResult(str, 3);
            MBridgeH5EndCardView.this.notifyListener.a(127, "");
            MBridgeH5EndCardView.this.notifyListener.a(129, "");
            MBridgeH5EndCardView.this.f30981u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            p0.c("WindVaneWebView", "h5EncardView readyStatus:" + i10 + "- isError" + MBridgeH5EndCardView.this.f30981u);
            MBridgeH5EndCardView.this.A = i10;
            if (!MBridgeH5EndCardView.this.f30981u) {
                MBridgeH5EndCardView.this.a(System.currentTimeMillis() - MBridgeH5EndCardView.this.B, false);
            }
            if (this.f30989a) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("type", 3);
                    eVar.a("result", Integer.valueOf(i10));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f30926b, eVar);
                } catch (Throwable th2) {
                    p0.b("WindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            super.a(webView);
            MBridgeH5EndCardView.this.setCloseVisible(0);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }

    private static void a(n nVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (c10 != null) {
                nVar.s(c10.x());
            }
            com.mbridge.msdk.videocommon.setting.a c11 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c11 != null) {
                nVar.r(c11.f());
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }
}
