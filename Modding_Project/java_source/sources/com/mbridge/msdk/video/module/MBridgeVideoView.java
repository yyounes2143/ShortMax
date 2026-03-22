package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBAlertDialog;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeVideoView extends MBridgeBaseView implements com.mbridge.msdk.video.signal.j {
    private static int R0 = 0;
    private static int S0 = 0;
    private static int T0 = 0;
    private static int U0 = 0;
    private static int V0 = 0;
    private static boolean W0 = false;
    private static long X0;
    private boolean A;
    private int A0;
    private FrameLayout B;
    private int B0;
    private MBridgeClickCTAView C;
    private int C0;
    private com.mbridge.msdk.video.signal.factory.b D;
    private AcquireRewardPopViewParameters D0;
    private int E;
    private MBAcquireRewardPopView E0;
    private int F;
    private boolean F0;
    private RelativeLayout G;
    private RelativeLayout G0;
    private boolean H;
    private CollapsibleWebView H0;
    private boolean I;
    private RelativeLayout I0;
    private boolean J;
    private boolean J0;
    private String K;
    private int K0;
    private int L;
    private boolean L0;
    private int M;
    private boolean M0;
    private int N;
    private w N0;
    private MBAlertDialog O;
    private boolean O0;
    private com.mbridge.msdk.widget.dialog.b P;
    private Runnable P0;
    private String Q;
    private final Runnable Q0;
    private double R;
    private double S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f31057a0;

    /* renamed from: b0  reason: collision with root package name */
    private boolean f31058b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f31059c0;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f31060d0;

    /* renamed from: e0  reason: collision with root package name */
    private boolean f31061e0;

    /* renamed from: f0  reason: collision with root package name */
    private int f31062f0;

    /* renamed from: g0  reason: collision with root package name */
    private boolean f31063g0;

    /* renamed from: h0  reason: collision with root package name */
    private int f31064h0;

    /* renamed from: i0  reason: collision with root package name */
    private AdSession f31065i0;

    /* renamed from: j0  reason: collision with root package name */
    private MediaEvents f31066j0;

    /* renamed from: k0  reason: collision with root package name */
    private String f31067k0;

    /* renamed from: l0  reason: collision with root package name */
    private int f31068l0;

    /* renamed from: m  reason: collision with root package name */
    private TextView f31069m;

    /* renamed from: m0  reason: collision with root package name */
    private int f31070m0;
    public List<CampaignEx> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    public PlayerView mPlayerView;
    public SoundImageView mSoundImageView;

    /* renamed from: n  reason: collision with root package name */
    private View f31071n;

    /* renamed from: n0  reason: collision with root package name */
    private int f31072n0;

    /* renamed from: o  reason: collision with root package name */
    private RelativeLayout f31073o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f31074o0;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f31075p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f31076p0;

    /* renamed from: q  reason: collision with root package name */
    private ProgressBar f31077q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f31078q0;

    /* renamed from: r  reason: collision with root package name */
    private FeedBackButton f31079r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f31080r0;

    /* renamed from: s  reason: collision with root package name */
    private ImageView f31081s;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f31082s0;

    /* renamed from: t  reason: collision with root package name */
    private MBridgeSegmentsProgressBar f31083t;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f31084t0;
    public TextView tvFlag;

    /* renamed from: u  reason: collision with root package name */
    private com.mbridge.msdk.video.module.listener.a f31085u;

    /* renamed from: u0  reason: collision with root package name */
    private boolean f31086u0;

    /* renamed from: v  reason: collision with root package name */
    private u f31087v;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f31088v0;

    /* renamed from: w  reason: collision with root package name */
    private boolean f31089w;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f31090w0;

    /* renamed from: x  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f31091x;

    /* renamed from: x0  reason: collision with root package name */
    private AlphaAnimation f31092x0;

    /* renamed from: y  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.f f31093y;

    /* renamed from: y0  reason: collision with root package name */
    private MBridgeBaitClickView f31094y0;

    /* renamed from: z  reason: collision with root package name */
    private int f31095z;

    /* renamed from: z0  reason: collision with root package name */
    private int f31096z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeVideoView.this.f31060d0 = true;
        }
    }

    /* loaded from: classes6.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31098a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f31099b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f31100c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f31101d;

        b(int i10, int i11, int i12, int i13) {
            this.f31098a = i10;
            this.f31099b = i11;
            this.f31100c = i12;
            this.f31101d = i13;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.f31073o == null) {
                return;
            }
            MBridgeVideoView.this.f31073o.setVisibility(0);
            CampaignEx campaignEx = MBridgeVideoView.this.f30926b;
            if (campaignEx != null && campaignEx.getAdSpaceT() != 2) {
                MBridgeVideoView.this.f31073o.setPadding(this.f31098a, this.f31099b, this.f31100c, this.f31101d);
                MBridgeVideoView.this.f31073o.startAnimation(MBridgeVideoView.this.f31092x0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.same.image.c {

        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f31104a;

            /* renamed from: com.mbridge.msdk.video.module.MBridgeVideoView$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class RunnableC0451a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Bitmap f31106a;

                RunnableC0451a(Bitmap bitmap) {
                    this.f31106a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MBridgeVideoView.this.f31075p.setVisibility(0);
                    MBridgeVideoView.this.f31075p.setImageBitmap(this.f31106a);
                }
            }

            a(Bitmap bitmap) {
                this.f31104a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    MBridgeVideoView.this.f31075p.post(new RunnableC0451a(z.a(this.f31104a, 10)));
                } catch (Exception e10) {
                    p0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            p0.b(MBridgeBaseView.TAG, str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled() && MBridgeVideoView.this.f31075p != null) {
                        com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new a(bitmap));
                    }
                } catch (Throwable th2) {
                    p0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements CollapsibleWebView.e {
        d() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, Map<String, String> map) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, Map<String, String> map) {
            String str;
            String str2;
            str = "";
            if (map == null) {
                str2 = "";
            } else {
                String str3 = map.get("url");
                str = str3 != null ? str3 : "";
                str2 = map.get(InMobiNetworkValues.DESCRIPTION);
            }
            a(str, str2);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, String str) {
            JSONObject jSONObject;
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() != 0) {
                MBridgeVideoView.this.G0.setVisibility(0);
            }
            Context context = MBridgeVideoView.this.getContext();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.click.a.a(context, mBridgeVideoView.f30926b, mBridgeVideoView.getUnitId(), MBridgeVideoView.this.f30926b.getNoticeUrl(), true, false, com.mbridge.msdk.click.retry.a.f26108o);
            try {
                MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                new com.mbridge.msdk.click.a(mBridgeVideoView2.f30925a, mBridgeVideoView2.Q).c(MBridgeVideoView.this.f30926b);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), MBridgeVideoView.this.f30926b);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 1);
            if (MBridgeVideoView.this.f31085u != null) {
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, MBridgeVideoView.this.a(0));
                    } catch (JSONException e10) {
                        e = e10;
                        e.printStackTrace();
                        MBridgeVideoView.this.f31085u.a(131, jSONObject);
                        MBridgeVideoView.this.f30926b.setClickType(1);
                        MBridgeVideoView.this.f30926b.setClickTempSource(1);
                        MBridgeVideoView.this.f30926b.setTriggerClickSource(2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.f30926b);
                        eVar.a("type", 9);
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("web_view");
                        eVar.a("click_path", arrayList.toString());
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.f30926b, eVar);
                        eVar.a("url", str);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f30926b, eVar);
                    }
                } catch (JSONException e11) {
                    e = e11;
                    jSONObject = null;
                }
                MBridgeVideoView.this.f31085u.a(131, jSONObject);
                MBridgeVideoView.this.f30926b.setClickType(1);
                MBridgeVideoView.this.f30926b.setClickTempSource(1);
                MBridgeVideoView.this.f30926b.setTriggerClickSource(2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.f30926b);
                eVar.a("type", 9);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("web_view");
                eVar.a("click_path", arrayList2.toString());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.f30926b, eVar);
            }
            eVar.a("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f30926b, eVar);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, String str) {
            a(str, "timeout");
        }

        private void a(String str, String str2) {
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (str == null) {
                str = "";
            }
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() == 0) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 2);
            eVar.a("url", str);
            eVar.a("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f30926b, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements CommonWebView.h {
        f() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("status", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f30926b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, 0, 0, 0);
            }
            MBridgeVideoView.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements CommonWebView.h {
        g() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(8);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("status", 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f30926b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, MBridgeVideoView.this.K0, 0, 0);
            }
            MBridgeVideoView.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
            }
            if (MBridgeVideoView.this.G0 != null) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            if (!MBridgeVideoView.this.f31082s0) {
                MBridgeVideoView.this.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener != null) {
                mBridgeVideoView.f30926b.setTriggerClickSource(2);
                MBridgeVideoView.this.b("bait_click_clicked");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class j implements AcquireRewardPopViewBehaviourListener {
        j() {
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onOutOfContentClicked(float f10, float f11) {
            if (MBridgeVideoView.this.f31085u != null) {
                MBridgeVideoView.this.f31085u.a(105, "");
            }
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedFail(String str) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f30926b, mBridgeVideoView.Q, MBridgeVideoView.this.f31096z0, 2, str);
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedSuccess(int i10) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            int videoCompleteTime = MBridgeVideoView.this.getVideoCompleteTime() - i10;
            MBridgeVideoView.this.f30926b.setVideoCompleteTime(videoCompleteTime);
            MBridgeVideoView.this.p();
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(130, Integer.valueOf(videoCompleteTime));
            }
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f30926b, mBridgeVideoView.Q, MBridgeVideoView.this.f31096z0, 1, "");
        }
    }

    /* loaded from: classes6.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.B != null) {
                MBridgeVideoView.this.B.setVisibility(8);
            }
        }
    }

    /* loaded from: classes6.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.A0 <= 0) {
                MBridgeVideoView.this.showRewardPopView();
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                mBridgeVideoView.removeCallbacks(mBridgeVideoView.Q0);
                return;
            }
            MBridgeVideoView.W(MBridgeVideoView.this);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            mBridgeVideoView2.postDelayed(mBridgeVideoView2.Q0, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class n implements PlayerView.OnPlayerViewVisibleListener {
        n() {
        }

        @Override // com.mbridge.msdk.playercommon.PlayerView.OnPlayerViewVisibleListener
        public void playerViewVisibleCallback() {
            if (!MBridgeVideoView.this.f31089w) {
                MBridgeVideoView.this.f31089w = true;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                if (mBridgeVideoView.notifyListener != null && mBridgeVideoView.f31087v != null) {
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.notifyListener.a(20, mBridgeVideoView2.f31087v);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                MBridgeVideoView.this.f30926b.setClickTempSource(1);
                MBridgeVideoView.this.f30926b.setTriggerClickSource(2);
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
            if (MBridgeVideoView.this.f31066j0 != null) {
                try {
                    MBridgeVideoView.this.f31066j0.adUserInteraction(InteractionType.CLICK);
                    p0.a("omsdk", "play video view:  click");
                } catch (Exception e11) {
                    p0.b("omsdk", e11.getMessage());
                }
            }
            MBridgeVideoView.this.setCTALayoutVisibleOrGone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoView.this.f30926b.setClickTempSource(1);
            MBridgeVideoView.this.f30926b.setTriggerClickSource(2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_player_click", MBridgeVideoView.this.f30926b);
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            Integer num = 2;
            PlayerView playerView = MBridgeVideoView.this.mPlayerView;
            if (playerView != null) {
                eVar.a("mute_state", Boolean.valueOf(playerView.isSilent()));
                if (MBridgeVideoView.this.mPlayerView.isSilent()) {
                    num = 1;
                }
            }
            if (num.intValue() == 1) {
                MBridgeVideoView.this.mMuteSwitch = 2;
            } else {
                MBridgeVideoView.this.mMuteSwitch = 1;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(5, num);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_sound_click", MBridgeVideoView.this.f30926b, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", MBridgeVideoView.this.f30926b, eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
            if (MBridgeVideoView.this.f31063g0) {
                MBridgeVideoView.this.f31088v0 = true;
                CampaignEx campaignEx = MBridgeVideoView.this.f30926b;
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && MBridgeVideoView.this.f30926b.getRewardTemplateMode().f() == 5002010 && MBridgeVideoView.this.f31082s0) {
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    if (mBridgeVideoView.notifyListener != null) {
                        mBridgeVideoView.L0 = true;
                        MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                        mBridgeVideoView2.notifyListener.a(2, mBridgeVideoView2.c(mBridgeVideoView2.f31082s0));
                        return;
                    }
                    return;
                } else if (MBridgeVideoView.this.f31080r0) {
                    MBridgeVideoView.this.y();
                    return;
                } else {
                    com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                    if (aVar != null) {
                        aVar.a(123, "");
                        return;
                    }
                    return;
                }
            }
            CampaignEx campaignEx2 = MBridgeVideoView.this.f30926b;
            if (campaignEx2 == null || campaignEx2.getRewardTemplateMode() == null || MBridgeVideoView.this.f30926b.getRewardTemplateMode().f() != 5002010 || !MBridgeVideoView.this.f31082s0) {
                MBridgeVideoView.this.y();
                return;
            }
            MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
            if (mBridgeVideoView3.notifyListener != null) {
                mBridgeVideoView3.L0 = true;
                MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f31082s0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class t implements com.mbridge.msdk.foundation.feedback.a {
        t() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeVideoView.this.o();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeVideoView.this.p();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeVideoView.this.p();
        }
    }

    /* loaded from: classes6.dex */
    public interface u {
        void a();
    }

    /* loaded from: classes6.dex */
    public static class v {

        /* renamed from: a  reason: collision with root package name */
        public int f31129a;

        /* renamed from: b  reason: collision with root package name */
        public int f31130b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f31131c;

        public String toString() {
            return "ProgressData{curPlayPosition=" + this.f31129a + ", allDuration=" + this.f31130b + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class w extends DefaultVideoPlayerStatusListener {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeVideoView f31132a;

        /* renamed from: b  reason: collision with root package name */
        private int f31133b;

        /* renamed from: c  reason: collision with root package name */
        private int f31134c;

        /* renamed from: d  reason: collision with root package name */
        private int f31135d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f31136e;

        /* renamed from: f  reason: collision with root package name */
        private MediaEvents f31137f;

        /* renamed from: k  reason: collision with root package name */
        private boolean f31142k;

        /* renamed from: l  reason: collision with root package name */
        private String f31143l;

        /* renamed from: m  reason: collision with root package name */
        private CampaignEx f31144m;

        /* renamed from: n  reason: collision with root package name */
        private int f31145n;

        /* renamed from: o  reason: collision with root package name */
        private int f31146o;

        /* renamed from: g  reason: collision with root package name */
        private v f31138g = new v();

        /* renamed from: h  reason: collision with root package name */
        private boolean f31139h = false;

        /* renamed from: i  reason: collision with root package name */
        private boolean f31140i = false;

        /* renamed from: j  reason: collision with root package name */
        private boolean f31141j = false;

        /* renamed from: p  reason: collision with root package name */
        private boolean f31147p = false;

        public w(MBridgeVideoView mBridgeVideoView) {
            this.f31132a = mBridgeVideoView;
            if (mBridgeVideoView != null) {
                this.f31143l = mBridgeVideoView.getUnitId();
                this.f31144m = mBridgeVideoView.getCampaign();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0090 A[Catch: Exception -> 0x005e, TryCatch #0 {Exception -> 0x005e, blocks: (B:15:0x0026, B:17:0x002e, B:20:0x0039, B:24:0x0084, B:26:0x0090, B:28:0x009a, B:23:0x0060), top: B:34:0x0026 }] */
        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void c() {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                com.mbridge.msdk.foundation.tools.r0 r1 = com.mbridge.msdk.foundation.tools.r0.a()
                java.lang.String r2 = "h_c_r_w_p_c"
                r3 = 0
                boolean r1 = r1.a(r2, r3)
                if (r1 != 0) goto L10
                return
            L10:
                int r1 = r4.f31145n
                r2 = 100
                if (r1 == r2) goto Lab
                int r2 = r4.f31146o
                if (r2 != 0) goto Lab
                boolean r2 = r4.f31147p
                if (r2 != 0) goto Lab
                if (r1 == 0) goto Lab
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r4.f31144m
                if (r1 != 0) goto L26
                goto Lab
            L26:
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L5e
                r2 = 94
                if (r1 == r2) goto L60
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L5e
                r2 = 287(0x11f, float:4.02E-43)
                if (r1 != r2) goto L39
                goto L60
            L39:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5e
                r1.<init>()     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getBidToken()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L5e
                goto L84
            L5e:
                r1 = move-exception
                goto La0
            L60:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5e
                r1.<init>()     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getRequestId()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.f31144m     // Catch: java.lang.Exception -> L5e
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5e
                r1.append(r2)     // Catch: java.lang.Exception -> L5e
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L5e
            L84:
                com.mbridge.msdk.videocommon.download.b r2 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L5e
                java.lang.String r3 = r4.f31143l     // Catch: java.lang.Exception -> L5e
                com.mbridge.msdk.videocommon.download.a r1 = r2.a(r3, r1)     // Catch: java.lang.Exception -> L5e
                if (r1 == 0) goto Lab
                r1.v()     // Catch: java.lang.Exception -> L5e
                r1 = 1
                r4.f31147p = r1     // Catch: java.lang.Exception -> L5e
                boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L5e
                if (r1 == 0) goto Lab
                java.lang.String r1 = "CDRate is : 0  and start download when player create!"
                com.mbridge.msdk.foundation.tools.p0.b(r0, r1)     // Catch: java.lang.Exception -> L5e
                goto Lab
            La0:
                boolean r2 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r2 == 0) goto Lab
                java.lang.String r1 = r1.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r1)
            Lab:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeVideoView.w.c():void");
        }

        private void e() {
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mBridgeVideoView.f31069m.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 25.0f);
                this.f31132a.f31069m.setLayoutParams(layoutParams);
            }
            int a10 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            this.f31132a.f31069m.setPadding(a10, 0, a10, 0);
        }

        public int b() {
            return this.f31135d;
        }

        public void d() {
            this.f31132a = null;
            boolean unused = MBridgeVideoView.W0 = false;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                MediaEvents mediaEvents = this.f31137f;
                if (mediaEvents != null) {
                    mediaEvents.bufferFinish();
                    p0.a("omsdk", "play:  videoEvents.bufferFinish()");
                }
                this.f31132a.notifyListener.a(14, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                if (this.f31137f != null) {
                    p0.a("omsdk", "play:  videoEvents.bufferStart()");
                    this.f31137f.bufferStart();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                this.f31132a.notifyListener.a(13, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            MBridgeVideoView mBridgeVideoView;
            super.onPlayCompleted();
            this.f31132a.f31082s0 = true;
            CampaignEx campaignEx = this.f31144m;
            if (campaignEx != null) {
                if (this.f31142k && campaignEx.getRewardTemplateMode() != null && this.f31144m.getRewardTemplateMode().f() == 5002010) {
                    this.f31132a.f31069m.setText(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                } else {
                    this.f31132a.f31069m.setText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                }
                this.f31144m.setVideoPlayProgress(100);
                if (this.f31144m.getAdSpaceT() == 2) {
                    this.f31132a.f31071n.setVisibility(4);
                    if (this.f31132a.f31079r != null) {
                        this.f31132a.f31079r.setClickable(false);
                    }
                    SoundImageView soundImageView = this.f31132a.mSoundImageView;
                    if (soundImageView != null) {
                        soundImageView.setClickable(false);
                    }
                }
            } else {
                this.f31132a.f31069m.setText(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            MediaEvents mediaEvents = this.f31137f;
            if (mediaEvents != null) {
                mediaEvents.complete();
                p0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f31132a.mPlayerView.setClickable(false);
            String c10 = this.f31132a.c(true);
            CampaignEx campaignEx2 = this.f31144m;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && this.f31144m.getRewardTemplateMode().f() == 5002010) {
                this.f31132a.x();
            }
            CampaignEx campaignEx3 = this.f31144m;
            if (campaignEx3 != null && campaignEx3.getDynamicTempCode() == 5 && (mBridgeVideoView = this.f31132a) != null && mBridgeVideoView.f31091x != null) {
                MBridgeVideoView mBridgeVideoView2 = this.f31132a;
                if (mBridgeVideoView2.mCampaignSize > mBridgeVideoView2.mCurrPlayNum) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("position", Integer.valueOf(this.f31132a.mCurrPlayNum));
                    int i10 = this.f31132a.mMuteSwitch;
                    if (i10 != 0) {
                        hashMap.put("mute", Integer.valueOf(i10));
                    }
                    this.f31132a.f31091x.a(hashMap);
                    return;
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f31132a;
            if (mBridgeVideoView3 != null) {
                mBridgeVideoView3.notifyListener.a(121, "");
                this.f31132a.notifyListener.a(11, c10);
            }
            int i11 = this.f31134c;
            this.f31133b = i11;
            this.f31132a.mCurrentPlayProgressTime = i11;
            boolean unused = MBridgeVideoView.W0 = true;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            p0.b("DefaultVideoPlayerStatusListener", "errorStr" + str);
            super.onPlayError(str);
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.notifyListener.a(12, str);
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i10, int i11) {
            CampaignEx campaignEx;
            int i12;
            super.onPlayProgress(i10, i11);
            if (MBridgeVideoView.X0 == 0) {
                long unused = MBridgeVideoView.X0 = System.currentTimeMillis();
            }
            if (!this.f31132a.M0 && this.f31132a.f31093y != null) {
                this.f31132a.M0 = true;
                this.f31132a.f31093y.a();
            }
            if (this.f31132a.f30929e) {
                CampaignEx campaignEx2 = this.f31144m;
                if (campaignEx2 != null) {
                    i12 = campaignEx2.getVideoCompleteTime();
                    if (i12 <= 0) {
                        i12 = i11;
                    }
                    com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
                    b10.b(this.f31144m.getCampaignUnitId() + "_1", i10);
                } else {
                    i12 = 0;
                }
                CampaignEx campaignEx3 = this.f31144m;
                if (campaignEx3 != null && campaignEx3.isDynamicView() && this.f31144m.getDynamicTempCode() == 5) {
                    try {
                        b(i12, this.f31132a.f31095z, i10);
                    } catch (Exception e10) {
                        p0.b("DefaultVideoPlayerStatusListener", e10.getMessage());
                    }
                } else {
                    a(i12, i11, i10);
                    this.f31138g.f31129a = i10;
                }
            }
            this.f31134c = i11;
            v vVar = this.f31138g;
            vVar.f31130b = i11;
            vVar.f31131c = this.f31132a.f31086u0;
            this.f31133b = i10;
            if (this.f31132a.f31081s != null) {
                ImageView imageView = this.f31132a.f31081s;
                imageView.setTag("" + this.f31133b);
            }
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            mBridgeVideoView.mCurrentPlayProgressTime = i10;
            mBridgeVideoView.notifyListener.a(15, this.f31138g);
            MediaEvents mediaEvents = this.f31137f;
            if (mediaEvents != null) {
                int i13 = (i10 * 100) / i11;
                int i14 = ((i10 + 1) * 100) / i11;
                if (i13 <= 25 && 25 < i14 && !this.f31139h) {
                    this.f31139h = true;
                    mediaEvents.firstQuartile();
                    p0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i13 <= 50 && 50 < i14 && !this.f31140i) {
                    this.f31140i = true;
                    mediaEvents.midpoint();
                    p0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i13 <= 75 && 75 < i14 && !this.f31141j) {
                    this.f31141j = true;
                    mediaEvents.thirdQuartile();
                    p0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            if (this.f31132a.f31063g0 && !this.f31132a.f31074o0 && this.f31132a.f31068l0 == com.mbridge.msdk.foundation.same.a.I) {
                this.f31132a.y();
            }
            try {
                MBridgeVideoView mBridgeVideoView2 = this.f31132a;
                if (mBridgeVideoView2 != null && mBridgeVideoView2.f31083t != null) {
                    int i15 = (i10 * 100) / i11;
                    this.f31132a.f31083t.setProgress(i15, this.f31132a.mCurrPlayNum - 1);
                    this.f31144m.setVideoPlayProgress(i15);
                }
                MBridgeVideoView mBridgeVideoView3 = this.f31132a;
                if (mBridgeVideoView3 != null) {
                    int i16 = mBridgeVideoView3.F != -5 ? this.f31132a.F : this.f31132a.E;
                    if (i16 != -1 && i10 == i16 && (campaignEx = this.f31132a.f30926b) != null && campaignEx.isDynamicView()) {
                        this.f31132a.setCTALayoutVisibleOrGone();
                    }
                }
            } catch (Throwable th2) {
                p0.b("DefaultVideoPlayerStatusListener", th2.getMessage());
            }
            a(i10, i11);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayStarted(int i10) {
            float f10;
            PlayerView playerView;
            CampaignEx campaignEx;
            super.onPlayStarted(i10);
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.g();
            }
            if (!this.f31136e) {
                MBridgeVideoView mBridgeVideoView2 = this.f31132a;
                if (mBridgeVideoView2 != null) {
                    mBridgeVideoView2.A = true;
                    this.f31132a.notifyListener.a(10, this.f31138g);
                }
                this.f31136e = true;
            }
            this.f31135d = i10;
            CampaignEx campaignEx2 = this.f31144m;
            if (campaignEx2 != null) {
                int videoCompleteTime = campaignEx2.getVideoCompleteTime();
                if (videoCompleteTime <= 0) {
                    videoCompleteTime = i10;
                }
                if (this.f31144m.isDynamicView()) {
                    b(videoCompleteTime);
                } else {
                    a(videoCompleteTime);
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f31132a;
            if (mBridgeVideoView3 != null && mBridgeVideoView3.f31077q != null) {
                this.f31132a.f31077q.setMax(i10);
            }
            MBridgeVideoView mBridgeVideoView4 = this.f31132a;
            if (mBridgeVideoView4 != null && mBridgeVideoView4.f31073o != null && (campaignEx = this.f31144m) != null && campaignEx.getAdSpaceT() == 2) {
                this.f31132a.f31073o.setVisibility(0);
            }
            MBridgeVideoView mBridgeVideoView5 = this.f31132a;
            if (mBridgeVideoView5 != null && mBridgeVideoView5.f31069m != null && this.f31132a.f31069m.getVisibility() == 0) {
                this.f31132a.f();
            }
            boolean unused = MBridgeVideoView.W0 = false;
            if (this.f31132a != null && this.f31144m.isDynamicView()) {
                if (this.f31132a.F != -5) {
                    if (this.f31132a.F == 0) {
                        this.f31132a.setCTALayoutVisibleOrGone();
                    }
                } else if (this.f31132a.E == 0) {
                    this.f31132a.setCTALayoutVisibleOrGone();
                }
            }
            MBridgeVideoView mBridgeVideoView6 = this.f31132a;
            if (mBridgeVideoView6 != null) {
                mBridgeVideoView6.showMoreOfferInPlayTemplate();
                this.f31132a.showBaitClickView();
                this.f31132a.q();
            }
            if (this.f31137f != null) {
                try {
                    MBridgeVideoView mBridgeVideoView7 = this.f31132a;
                    if (mBridgeVideoView7 != null && (playerView = mBridgeVideoView7.mPlayerView) != null) {
                        f10 = playerView.getVolume();
                    } else {
                        f10 = 0.0f;
                    }
                    this.f31137f.start(i10, f10);
                    p0.a("omsdk", "play video view:  videoEvents.start");
                } catch (Exception e10) {
                    p0.b("omsdk", e10.getMessage());
                }
            }
        }

        public void a(CampaignEx campaignEx) {
            this.f31144m = campaignEx;
        }

        public void b(int i10, int i11) {
            this.f31145n = i10;
            this.f31146o = i11;
            c();
        }

        public void a(boolean z10) {
            this.f31142k = z10;
        }

        public void a(String str) {
            this.f31143l = str;
        }

        private void b(int i10) {
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView == null || mBridgeVideoView.f31069m == null) {
                return;
            }
            String str = "mbridge_reward_video_time_count_num_bg";
            if (this.f31144m.getDynamicTempCode() == 5) {
                MBridgeVideoView mBridgeVideoView2 = this.f31132a;
                if (mBridgeVideoView2.mCurrPlayNum > 1 && i10 <= 0) {
                    mBridgeVideoView2.f31069m.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                    e();
                    return;
                }
            }
            if (i10 > 0) {
                if (!this.f31142k || this.f31144m.getDynamicTempCode() == 5) {
                    e();
                }
            } else {
                str = "mbridge_reward_shape_progress";
            }
            CampaignEx campaignEx = this.f31144m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1 && this.f31142k) {
                e();
            }
            this.f31132a.f31069m.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
        }

        public int a() {
            return this.f31133b;
        }

        private void a(int i10) {
            if (i10 > 0) {
                this.f31132a.f31069m.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
                int a10 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
                layoutParams.addRule(1, h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_native_endcard_feed_btn", "id"));
                layoutParams.setMargins(a10, 0, 0, 0);
                this.f31132a.f31069m.setPadding(a10, 0, a10, 0);
                this.f31132a.f31069m.setLayoutParams(layoutParams);
                return;
            }
            this.f31132a.f31069m.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
        }

        private void a(int i10, int i11) {
            int i12;
            String str;
            int i13 = this.f31145n;
            if (i13 == 100 || this.f31147p || i13 == 0) {
                return;
            }
            if (this.f31146o > i13) {
                this.f31146o = i13 / 2;
            }
            int i14 = this.f31146o;
            if (i14 < 0 || i10 < (i12 = (i11 * i14) / 100)) {
                return;
            }
            if (this.f31144m.getAdType() != 94 && this.f31144m.getAdType() != 287) {
                str = this.f31144m.getId() + this.f31144m.getVideoUrlEncode() + this.f31144m.getBidToken();
            } else {
                str = this.f31144m.getRequestId() + this.f31144m.getId() + this.f31144m.getVideoUrlEncode();
            }
            com.mbridge.msdk.videocommon.download.a a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f31143l, str);
            if (a10 != null) {
                a10.v();
                this.f31147p = true;
                p0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i12 + " and start download !");
            }
        }

        private void b(int i10, int i11, int i12) {
            int i13;
            StringBuilder sb2;
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView == null) {
                return;
            }
            String str = (String) mBridgeVideoView.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
            String str2 = (String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
            if (i10 >= 0) {
                if (this.f31144m.getUseSkipTime() == 1) {
                    int min = Math.min(this.f31132a.L, i10);
                    if (min >= i10 || min <= 0) {
                        i13 = i10 - i12;
                        if (this.f31142k) {
                            if (i13 <= 0) {
                                this.f31132a.f31069m.setVisibility(4);
                            } else {
                                str2 = (String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING));
                            }
                        }
                    } else {
                        i13 = min - i12;
                        if (i13 <= 0) {
                            i13 = i10 - i12;
                            if (this.f31142k) {
                                this.f31132a.f31069m.setVisibility(4);
                            }
                        } else {
                            str2 = (String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING));
                        }
                    }
                } else {
                    i13 = i10 - i12;
                }
                if (i13 > 0) {
                    str = i13 + str2;
                }
            } else {
                i13 = i11 - i12;
                if (i13 > 0) {
                    if (i10 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        sb2.append("");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        sb2.append(str2);
                    }
                    str = sb2.toString();
                } else if (i10 <= 0) {
                    str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                }
            }
            this.f31138g.f31129a = i12;
            this.f31132a.f31069m.setText(str);
            if (this.f31132a.f31077q != null && this.f31132a.f31077q.getVisibility() == 0) {
                this.f31132a.f31077q.setProgress(i12);
            }
            if (i13 >= this.f31132a.C0 || this.f31132a.E0 == null || !this.f31132a.J) {
                return;
            }
            this.f31132a.E0.onTimeLessThanReduce(i13);
        }

        private void a(int i10, int i11, int i12) {
            StringBuilder sb2;
            String str;
            String sb3;
            MBridgeVideoView mBridgeVideoView = this.f31132a;
            if (mBridgeVideoView == null) {
                return;
            }
            if (!this.f31142k) {
                if (i10 > i11) {
                    i10 = i11;
                }
                int i13 = i10 <= 0 ? i11 - i12 : i10 - i12;
                if (i13 <= 0) {
                    i13 = 0;
                    sb3 = i10 <= 0 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : (String) mBridgeVideoView.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                } else {
                    if (i10 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = (String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                    }
                    sb2.append(str);
                    sb3 = sb2.toString();
                }
                if (i13 < this.f31132a.C0 && this.f31132a.E0 != null && this.f31132a.J) {
                    this.f31132a.E0.onTimeLessThanReduce(i13);
                }
            } else {
                sb3 = String.format("%s", Integer.valueOf(i11 - i12));
            }
            CampaignEx campaignEx = this.f31144m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1) {
                int min = Math.min(this.f31132a.L, i11);
                if (min >= i10 || min < 0) {
                    int i14 = i10 - i12;
                    if (this.f31142k) {
                        if (i14 > 0) {
                            sb3 = i14 + ((String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                        } else if (i14 == 0) {
                            this.f31132a.f31069m.setVisibility(4);
                        }
                    }
                } else {
                    int i15 = min - i12;
                    if (i15 > 0) {
                        sb3 = i15 + ((String) this.f31132a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                    } else if (this.f31142k && i15 == 0) {
                        this.f31132a.f31069m.setVisibility(4);
                    }
                }
            }
            this.f31132a.f31069m.setText(sb3);
            if (this.f31132a.f31077q == null || this.f31132a.f31077q.getVisibility() != 0) {
                return;
            }
            this.f31132a.f31077q.setProgress(i12);
        }
    }

    public MBridgeVideoView(Context context) {
        super(context);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f31089w = false;
        this.f31095z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f31057a0 = false;
        this.f31058b0 = false;
        this.f31059c0 = false;
        this.f31060d0 = false;
        this.f31061e0 = false;
        this.f31063g0 = false;
        this.f31064h0 = 2;
        this.f31074o0 = false;
        this.f31076p0 = false;
        this.f31078q0 = false;
        this.f31080r0 = true;
        this.f31082s0 = false;
        this.f31084t0 = false;
        this.f31086u0 = false;
        this.f31088v0 = false;
        this.f31090w0 = false;
        this.f31096z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }

    static /* synthetic */ int W(MBridgeVideoView mBridgeVideoView) {
        int i10 = mBridgeVideoView.A0;
        mBridgeVideoView.A0 = i10 - 1;
        return i10;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).g();
    }

    private int getVideoAllDuration() {
        int i10 = 0;
        try {
            w wVar = this.N0;
            if (wVar != null) {
                i10 = wVar.b();
            }
            if (i10 == 0) {
                return this.f30926b.getVideoLength();
            }
            return i10;
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVideoCompleteTime() {
        int videoAllDuration;
        CampaignEx campaignEx;
        int i10 = 0;
        try {
            videoAllDuration = getVideoAllDuration();
            campaignEx = this.f30926b;
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
        if (campaignEx == null) {
            return videoAllDuration;
        }
        i10 = campaignEx.getVideoCompleteTime();
        if (this.f30926b.getDynamicTempCode() != 5 && i10 > videoAllDuration) {
            i10 = videoAllDuration;
        }
        if (i10 <= 0) {
            return videoAllDuration;
        }
        return i10;
    }

    private void setBlurBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setPlayerViewRadius(int i10) {
        if (i10 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(u0.a(getContext(), i10));
            gradientDrawable.setColor(-1);
            gradientDrawable.setStroke(1, 0);
            setBackground(gradientDrawable);
            this.mPlayerView.setBackground(gradientDrawable);
            setClipToOutline(true);
            this.mPlayerView.setClipToOutline(true);
        }
    }

    private void t() {
    }

    public void addCTAView() {
        if (this.B == null) {
            return;
        }
        if (this.C == null) {
            MBridgeClickCTAView mBridgeClickCTAView = new MBridgeClickCTAView(getContext());
            this.C = mBridgeClickCTAView;
            mBridgeClickCTAView.setCampaign(this.f30926b);
            this.C.setUnitId(this.Q);
            com.mbridge.msdk.video.module.listener.a aVar = this.f31085u;
            if (aVar != null) {
                this.C.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.i(aVar));
            }
            this.C.preLoadData(this.D);
        }
        this.B.addView(this.C);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void alertWebViewShowed() {
        this.I = true;
        setShowingAlertViewCover(true);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void closeVideoOperate(int i10, int i11) {
        if (i10 == 1) {
            this.f31088v0 = true;
            if (getVisibility() == 0) {
                y();
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", this.f30926b, eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f30926b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
        if (i11 == 1) {
            gonePlayingCloseView();
        } else if (i11 == 2) {
            if (!this.f31086u0 || getVisibility() != 0) {
                x();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
        this.T = true;
        showVideoLocation(0, 0, u0.g(this.f30925a), u0.f(this.f30925a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.L == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void dismissAllAlert() {
        MBAlertDialog mBAlertDialog = this.O;
        if (mBAlertDialog != null) {
            mBAlertDialog.dismiss();
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(125, "");
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewHeight() {
        return V0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewLeft() {
        return T0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewRadius() {
        return R0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewTop() {
        return S0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewWidth() {
        return U0;
    }

    public int getBufferTimeout() {
        return this.M;
    }

    public int getCloseAlert() {
        return this.N;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public String getCurrentProgress() {
        int i10;
        try {
            int a10 = this.N0.a();
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                i10 = campaignEx.getVideoLength();
            } else {
                i10 = 0;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("progress", a(a10, i10));
            jSONObject.put(CrashHianalyticsData.TIME, a10);
            jSONObject.put("duration", i10 + "");
            return jSONObject.toString();
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return JsonUtils.EMPTY_JSON;
        }
    }

    public int getMute() {
        return this.f31064h0;
    }

    public String getPlayURL() {
        return this.K;
    }

    public String getUnitId() {
        return this.Q;
    }

    public int getVideoSkipTime() {
        return this.L;
    }

    public void gonePlayingCloseView() {
        if (this.f30929e && this.f31071n.getVisibility() != 8) {
            this.f31071n.setVisibility(8);
            this.f31057a0 = false;
        }
        i();
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void hideAlertView(int i10) {
        if (this.I) {
            this.I = false;
            this.f31074o0 = true;
            setShowingAlertViewCover(false);
            com.mbridge.msdk.foundation.same.report.j.a(this.f30925a, this.f30926b, com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c(), this.Q, 1, i10, 1);
            if (i10 == 0) {
                p();
                if (this.f31063g0) {
                    int i11 = this.f31068l0;
                    if (i11 == com.mbridge.msdk.foundation.same.a.I || i11 == com.mbridge.msdk.foundation.same.a.H) {
                        this.f31076p0 = true;
                        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
                        if (aVar != null) {
                            aVar.a(124, "");
                        }
                        CampaignEx campaignEx = this.f30926b;
                        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f30926b.getRewardTemplateMode().f() == 5002010) {
                            x();
                            return;
                        }
                        this.f31086u0 = true;
                        gonePlayingCloseView();
                        return;
                    }
                    return;
                }
                return;
            }
            this.f31078q0 = true;
            boolean z10 = this.f31063g0;
            if (z10 && this.f31068l0 == com.mbridge.msdk.foundation.same.a.I) {
                p();
            } else if (z10 && this.f31068l0 == com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(this.f31082s0));
                }
            } else {
                com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                if (aVar3 != null) {
                    this.L0 = true;
                    aVar3.a(2, "");
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public boolean isH5Canvas() {
        if (getLayoutParams().height >= u0.f(this.f30925a.getApplicationContext())) {
            return false;
        }
        return true;
    }

    public boolean isInstDialogShowing() {
        return this.F0;
    }

    public boolean isMiniCardShowing() {
        return this.W;
    }

    public boolean isRewardPopViewShowing() {
        return this.J;
    }

    public boolean isShowingAlertView() {
        return this.I;
    }

    public boolean isShowingTransparent() {
        return this.f31061e0;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int indexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i10 = indexOfChild + 1;
        boolean z10 = false;
        while (i10 <= childCount - 1) {
            if (viewGroup.getChildAt(i10).getVisibility() == 0 && this.W) {
                return false;
            }
            i10++;
            z10 = true;
        }
        return z10;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void notifyCloseBtn(int i10) {
        if (i10 == 0) {
            this.f31058b0 = true;
            this.f31060d0 = false;
        } else if (i10 == 1) {
            this.f31059c0 = true;
        }
    }

    public void notifyVideoClose() {
        this.L0 = true;
        this.notifyListener.a(2, "");
    }

    public void onActivityPause() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onPause();
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityResume() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onResume();
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityStop() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onStop();
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPress() {
        boolean z10;
        if (this.W || this.I || this.f31076p0) {
            return;
        }
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f30926b.getRewardTemplateMode().f() == 5002010 && (z10 = this.f31082s0)) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                this.L0 = true;
                aVar.a(2, c(z10));
            }
        } else if (this.f31057a0) {
            y();
        } else {
            boolean z11 = this.f31058b0;
            if (z11 && this.f31059c0) {
                y();
            } else if (!z11 && this.f31060d0) {
                y();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f30926b;
        if ((campaignEx == null || !campaignEx.isDynamicView()) && this.f30929e && this.T) {
            u();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.P0 != null) {
                getHandler().removeCallbacks(this.P0);
            }
            if (this.f31096z0 != 0) {
                removeCallbacks(this.Q0);
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.D = bVar;
        if (this.f30929e) {
            if (!TextUtils.isEmpty(this.K) && this.f30926b != null) {
                AdSession adSession = this.f31065i0;
                if (adSession != null) {
                    adSession.registerAdView(this.mPlayerView);
                    SoundImageView soundImageView = this.mSoundImageView;
                    if (soundImageView != null) {
                        this.f31065i0.addFriendlyObstruction(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                    }
                    this.f31065i0.addFriendlyObstruction(this.f31069m, FriendlyObstructionPurpose.OTHER, null);
                    this.f31065i0.addFriendlyObstruction(this.f31071n, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
                }
                k();
                this.mPlayerView.initBufferIngParam(this.M);
                this.mPlayerView.initVFPData(this.K, this.f30926b.getVideoUrlEncode(), this.N0);
                soundOperate(this.f31064h0, -1, null);
            }
        } else {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(12, "MBridgeVideoView initSuccess false");
            }
        }
        W0 = false;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressBarOperate(int i10) {
        ProgressBar progressBar;
        if (this.f30929e) {
            if (i10 == 1) {
                ProgressBar progressBar2 = this.f31077q;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                }
            } else if (i10 == 2 && (progressBar = this.f31077q) != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressOperate(int i10, int i11) {
        int i12;
        if (this.f30929e) {
            p0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i10);
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                i12 = campaignEx.getVideoLength();
            } else {
                i12 = 0;
            }
            if (i10 > 0 && i10 <= i12 && this.mPlayerView != null) {
                p0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i10);
                this.mPlayerView.seekTo(i10 * 1000);
            }
            if (i11 == 1) {
                this.f31069m.setVisibility(8);
            } else if (i11 == 2) {
                this.f31069m.setVisibility(0);
            }
            if (this.f31069m.getVisibility() == 0) {
                f();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null && !this.V) {
                playerView.release();
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long j10 = X0;
                    if (j10 != 0) {
                        j10 = System.currentTimeMillis() - X0;
                    }
                    eVar.a("duration", Long.valueOf(j10));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f30926b, eVar);
                }
            }
            w wVar = this.N0;
            if (wVar != null) {
                wVar.d();
            }
            if (this.f31085u != null) {
                this.f31085u = null;
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setAdSession(AdSession adSession) {
        this.f31065i0 = adSession;
    }

    public void setBufferTimeout(int i10) {
        this.M = i10;
    }

    public void setCTALayoutVisibleOrGone() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || this.B == null) {
            return;
        }
        if (campaignEx.getRewardTemplateMode() != null && this.f30926b.getRewardTemplateMode().f() == 902) {
            return;
        }
        int i10 = this.F;
        if (i10 != -5) {
            if (i10 == -3) {
                return;
            }
            if (this.C == null) {
                addCTAView();
            }
            if (this.F == -1) {
                if (this.B.getVisibility() != 0) {
                    this.B.setVisibility(0);
                    postDelayed(this.P0, 3000L);
                } else {
                    this.B.setVisibility(8);
                    getHandler().removeCallbacks(this.P0);
                }
            }
            if (this.F >= 0) {
                this.B.setVisibility(0);
            }
        } else if (this.E < -1) {
        } else {
            if (this.C == null) {
                addCTAView();
            }
            int i11 = this.E;
            if (i11 >= 0) {
                this.B.setVisibility(0);
            } else if (i11 == -1) {
                if (this.B.getVisibility() != 0) {
                    this.B.setVisibility(0);
                    postDelayed(this.P0, 3000L);
                    return;
                }
                this.B.setVisibility(8);
                getHandler().removeCallbacks(this.P0);
            }
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, List<CampaignEx> list, int i10, int i11) {
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar;
        this.f31091x = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i10;
        this.f31095z = i11;
        this.mCampOrderViewData = list;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
            MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar2 = this.f31083t;
            if (mBridgeSegmentsProgressBar2 != null && this.mCampOrderViewData != null) {
                if (this.mCampaignSize > 1) {
                    mBridgeSegmentsProgressBar2.setVisibility(0);
                    this.f31083t.init(this.mCampaignSize, 2);
                    for (int i12 = 0; i12 < this.mCampOrderViewData.size(); i12++) {
                        int videoPlayProgress = this.mCampOrderViewData.get(i12).getVideoPlayProgress();
                        if (videoPlayProgress > 0) {
                            this.f31083t.setProgress(videoPlayProgress, i12);
                        }
                        if (this.mCampOrderViewData.get(i12).isRewardPopViewShowed) {
                            this.H = true;
                        }
                    }
                    return;
                }
                CampaignEx campaignEx2 = this.f30926b;
                if (campaignEx2 != null && campaignEx2.getProgressBarShow() == 1) {
                    MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar3 = this.f31083t;
                    if (mBridgeSegmentsProgressBar3 != null) {
                        mBridgeSegmentsProgressBar3.init(1, 3);
                        this.f31083t.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.f31083t.setVisibility(8);
                return;
            }
            return;
        }
        CampaignEx campaignEx3 = this.f30926b;
        if (campaignEx3 != null && campaignEx3.getProgressBarShow() == 1 && (mBridgeSegmentsProgressBar = this.f31083t) != null) {
            mBridgeSegmentsProgressBar.init(1, 3);
            this.f31083t.setVisibility(0);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(campaignEx);
            this.N0.b(a(campaignEx), getCDRate());
        }
    }

    public void setCloseAlert(int i10) {
        this.N = i10;
    }

    public void setContainerViewOnNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f31085u = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setCover(boolean z10) {
        if (this.f30929e) {
            this.mPlayerView.setIsCovered(z10);
        }
    }

    public void setDialogRole(int i10) {
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        this.f31080r0 = z10;
        p0.b(MBridgeBaseView.TAG, i10 + " " + this.f31080r0);
    }

    public void setIPlayVideoViewLayoutCallBack(com.mbridge.msdk.video.dynview.listener.f fVar) {
        this.f31093y = fVar;
    }

    public void setIVRewardEnable(int i10, int i11, int i12) {
        this.f31068l0 = i10;
        this.f31070m0 = i11;
        this.f31072n0 = i12;
    }

    public void setInstDialogState(boolean z10) {
        PlayerView playerView;
        this.F0 = z10;
        if (com.mbridge.msdk.util.b.a() && (playerView = this.mPlayerView) != null) {
            playerView.setIsCovered(z10);
        }
    }

    public void setIsIV(boolean z10) {
        this.f31063g0 = z10;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(z10);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setMiniEndCardState(boolean z10) {
        this.W = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        RelativeLayout relativeLayout;
        try {
            p0.b(MBridgeBaseView.TAG, "NOTCH VideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            int i14 = layoutParams.leftMargin;
            int i15 = layoutParams.rightMargin;
            int i16 = layoutParams.topMargin;
            int i17 = layoutParams.bottomMargin;
            this.K0 = i12;
            if (Math.max(Math.max(i14, i15), Math.max(i16, i17)) <= Math.max(Math.max(i10, i11), Math.max(i12, i13)) && (relativeLayout = this.f31073o) != null) {
                relativeLayout.postDelayed(new b(i10, i12, i11, i13), 200L);
            }
            if (this.f31069m.getVisibility() == 0) {
                f();
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setPlayURL(String str) {
        this.K = str;
    }

    public void setPlayerViewAttachListener(u uVar) {
        this.f31087v = uVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setScaleFitXY(int i10) {
        this.f31062f0 = i10;
    }

    public void setShowingAlertViewCover(boolean z10) {
        MBAcquireRewardPopView mBAcquireRewardPopView;
        if (z10 && (mBAcquireRewardPopView = this.E0) != null && this.J && this.I) {
            mBAcquireRewardPopView.onPause();
        }
        this.mPlayerView.setIsCovered(z10);
    }

    public void setShowingTransparent(boolean z10) {
        this.f31061e0 = z10;
    }

    public void setSoundState(int i10) {
        this.f31064h0 = i10;
    }

    public void setUnitId(String str) {
        this.Q = str;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(str);
        }
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.f31066j0 = mediaEvents;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.f31137f = mediaEvents;
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            playerView.setVideoEvents(mediaEvents);
        }
    }

    public void setVideoLayout(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f30926b = campaignEx;
            this.f30932h = campaignEx.isDynamicView();
        }
        if (this.f30932h) {
            a(this, campaignEx);
        } else {
            h();
        }
    }

    public void setVideoSkipTime(int i10) {
        this.L = i10;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setVisible(int i10) {
        setVisibility(i10);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showAlertView() {
        CampaignEx campaignEx;
        if (this.W) {
            return;
        }
        if (this.P == null) {
            this.P = new s();
        }
        if (this.O == null) {
            MBAlertDialog mBAlertDialog = new MBAlertDialog(getContext(), this.P);
            this.O = mBAlertDialog;
            AdSession adSession = this.f31065i0;
            if (adSession != null) {
                adSession.addFriendlyObstruction(mBAlertDialog.getWindow().getDecorView(), FriendlyObstructionPurpose.NOT_VISIBLE, null);
            }
        }
        if (this.f31063g0) {
            this.O.makeIVAlertView(this.f31068l0, this.Q);
        } else {
            this.O.makeRVAlertView(this.Q);
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            if (!playerView.isComplete() || ((campaignEx = this.f30926b) != null && campaignEx.getRewardTemplateMode() != null && this.f30926b.getRewardTemplateMode().f() == 5002010)) {
                this.O.show();
                this.f31074o0 = true;
                this.I = true;
                setShowingAlertViewCover(true);
                String c10 = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c();
                this.f31067k0 = c10;
                com.mbridge.msdk.foundation.same.report.j.a(this.f30925a, this.f30926b, c10, this.Q, 1, 1);
            }
        }
    }

    public void showBaitClickView() {
        int parseInt;
        MBridgeBaitClickView mBridgeBaitClickView;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.f30926b.getRewardTemplateMode() == null) {
            return;
        }
        String e10 = this.f30926b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(e10)) {
            return;
        }
        try {
            String a10 = b1.a(e10, "bait_click");
            if (!TextUtils.isEmpty(a10) && (parseInt = Integer.parseInt(a10)) != 0 && (mBridgeBaitClickView = this.f31094y0) != null) {
                mBridgeBaitClickView.setVisibility(0);
                this.f31094y0.init(parseInt);
                this.f31094y0.startAnimation();
                this.f31094y0.setOnClickListener(new i());
            }
        } catch (Exception e11) {
            p0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showIVRewardAlertView(String str) {
        this.notifyListener.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || this.G == null || !campaignEx.isDynamicView() || this.f30926b.getRewardTemplateMode() == null) {
            return;
        }
        String e10 = this.f30926b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(e10)) {
            return;
        }
        try {
            String a10 = b1.a(e10, "mof");
            if (!TextUtils.isEmpty(a10) && Integer.parseInt(a10) == 1) {
                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f30926b, this, new com.mbridge.msdk.video.module.listener.impl.i(this.f31085u), 1);
            }
        } catch (Exception e11) {
            p0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void showRewardPopView() {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters;
        MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
        if (mBAcquireRewardPopView == null || (acquireRewardPopViewParameters = this.D0) == null) {
            return;
        }
        try {
            mBAcquireRewardPopView.init(acquireRewardPopViewParameters);
            this.E0.setVisibility(0);
            setCover(true);
            o();
            this.J = true;
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                campaignEx.isRewardPopViewShowed = true;
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showVideoLocation(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        float f10;
        if (this.f30929e) {
            this.f31073o.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.f31073o.getVisibility() != 0) {
                this.f31073o.setVisibility(0);
            }
            if (this.f31069m.getVisibility() == 0) {
                f();
            }
            if (b(i12, i13) && !this.T) {
                S0 = i15;
                T0 = i16;
                U0 = i17 + 4;
                V0 = i18 + 4;
                float f11 = i12 / i13;
                try {
                    f10 = (float) (this.R / this.S);
                } catch (Throwable th2) {
                    p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                    f10 = 0.0f;
                }
                if (i14 > 0) {
                    R0 = i14;
                    setPlayerViewRadius(i14);
                }
                if (Math.abs(f11 - f10) > 0.1f && this.f31062f0 != 1) {
                    u();
                    videoOperate(1);
                    return;
                }
                u();
                if (this.f31061e0) {
                    setLayoutCenter(i12, i13);
                    if (W0) {
                        this.notifyListener.a(114, "");
                        return;
                    } else {
                        this.notifyListener.a(116, "");
                        return;
                    }
                }
                setLayoutParam(i11, i10, i12, i13);
                return;
            }
            u();
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i10, int i11) {
        soundOperate(i10, i11, "2");
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void videoOperate(int i10) {
        p0.a(MBridgeBaseView.TAG, "VideoView videoOperate:" + i10);
        if (this.f30929e) {
            if (i10 == 1) {
                if (getVisibility() == 0 && isfront()) {
                    p0.a(MBridgeBaseView.TAG, "VideoView videoOperate:play");
                    RelativeLayout relativeLayout = this.I0;
                    if ((relativeLayout == null || relativeLayout.getVisibility() == 0) && !this.I && !com.mbridge.msdk.foundation.feedback.b.f26979f) {
                        if (com.mbridge.msdk.util.b.a()) {
                            if (!this.W && !this.F0) {
                                p();
                                return;
                            }
                            return;
                        }
                        p();
                    }
                }
            } else if (i10 == 2) {
                if (getVisibility() == 0 && isfront()) {
                    p0.a(MBridgeBaseView.TAG, "VideoView videoOperate:pause");
                    o();
                }
            } else if (i10 == 3) {
                if (!this.V) {
                    this.mPlayerView.stop();
                    CampaignEx campaignEx = this.f30926b;
                    if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f30926b.getRewardTemplateMode().f() != 5002010) {
                        this.mPlayerView.release();
                        this.V = true;
                        if (!TextUtils.isEmpty(this.K)) {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            long j10 = X0;
                            if (j10 != 0) {
                                j10 = System.currentTimeMillis() - X0;
                            }
                            eVar.a("duration", Long.valueOf(j10));
                            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f30926b, eVar);
                        }
                    }
                }
            } else if (i10 == 5) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = true;
                    if (!this.V) {
                        o();
                    }
                }
            } else if (i10 == 4) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = false;
                    if (!this.V && !isMiniCardShowing()) {
                        p();
                    }
                }
            } else if (i10 == 6 && !this.V) {
                this.mPlayerView.release();
                this.V = true;
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long j11 = X0;
                    if (j11 != 0) {
                        j11 = System.currentTimeMillis() - X0;
                    }
                    eVar2.a("duration", Long.valueOf(j11));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f30926b, eVar2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        w wVar;
        RelativeLayout relativeLayout;
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f30926b.getRewardTemplateMode().f() != 5002010 || (relativeLayout = this.I0) == null || relativeLayout.getVisibility() == 0) {
                if (!this.U) {
                    boolean playVideo = this.mPlayerView.playVideo();
                    CampaignEx campaignEx2 = this.f30926b;
                    if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() != 2 && !playVideo && (wVar = this.N0) != null) {
                        wVar.onPlayError("play video failed");
                    }
                    this.U = true;
                    return;
                }
                MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
                if (mBAcquireRewardPopView != null && this.J) {
                    mBAcquireRewardPopView.onResume();
                }
                if (this.J) {
                    return;
                }
                if (com.mbridge.msdk.util.b.a()) {
                    if (this.F0 || this.I) {
                        return;
                    }
                    this.mPlayerView.setIsCovered(false);
                    w();
                    return;
                }
                w();
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        String e10;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.H) {
            return;
        }
        if (!TextUtils.isEmpty(this.f30926b.getMof_template_url())) {
            e10 = this.f30926b.getMof_template_url();
        } else if (this.f30926b.getRewardTemplateMode() == null) {
            return;
        } else {
            e10 = this.f30926b.getRewardTemplateMode().e();
        }
        if (TextUtils.isEmpty(e10)) {
            return;
        }
        try {
            String a10 = b1.a(e10, "guideShow");
            String a11 = b1.a(e10, "guideDelay");
            String a12 = b1.a(e10, "guideTime");
            String a13 = b1.a(e10, "guideRewardTime");
            if (!TextUtils.isEmpty(a10)) {
                this.f31096z0 = Integer.parseInt(a10);
            }
            if (!TextUtils.isEmpty(a11)) {
                int parseInt = Integer.parseInt(a11);
                this.A0 = parseInt;
                if (parseInt > 10 || parseInt < 3) {
                    this.A0 = 5;
                }
            }
            if (!TextUtils.isEmpty(a12)) {
                int parseInt2 = Integer.parseInt(a12);
                this.B0 = parseInt2;
                if (parseInt2 > 10 || parseInt2 < 3) {
                    this.B0 = 5;
                }
            }
            if (!TextUtils.isEmpty(a13)) {
                int parseInt3 = Integer.parseInt(a13);
                this.C0 = parseInt3;
                if (parseInt3 > 10 || parseInt3 < 5) {
                    this.C0 = 5;
                }
            }
            int i10 = this.f31096z0;
            if (i10 > 0 && i10 <= 2) {
                int videoCompleteTime = getVideoCompleteTime();
                if (videoCompleteTime == 0 || videoCompleteTime > this.A0) {
                    int i11 = videoCompleteTime - this.A0;
                    if (i11 >= 0 && this.C0 > i11) {
                        this.C0 = i11;
                    }
                    int videoAllDuration = getVideoAllDuration();
                    if (this.C0 >= videoAllDuration) {
                        this.C0 = videoAllDuration - this.A0;
                    }
                    if (this.A0 >= videoAllDuration) {
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(this.f30926b.getAppName());
                    String str = "US";
                    com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (b10 != null) {
                        str = b10.k();
                    }
                    this.D0 = new AcquireRewardPopViewParameters.Builder("", this.Q, this.f31096z0, str).setAutoDismissTime(this.B0).setReduceTime(this.C0).setBehaviourListener(new j()).setRightAnswerList(arrayList).build();
                    postDelayed(this.Q0, 1000L);
                }
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void r() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || campaignEx.getAdSpaceT() != 2 || this.tvFlag == null) {
            return;
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            this.tvFlag.setText("广告");
        } else {
            this.tvFlag.setText("AD");
        }
    }

    private void s() {
        int i10;
        int i11;
        float g10 = u0.g(this.f30925a);
        float f10 = u0.f(this.f30925a);
        double d10 = this.R;
        if (d10 > 0.0d) {
            double d11 = this.S;
            if (d11 > 0.0d && g10 > 0.0f && f10 > 0.0f) {
                double d12 = d10 / d11;
                double d13 = g10 / f10;
                p0.c(MBridgeBaseView.TAG, "videoWHDivide:" + d12 + "  screenWHDivide:" + d13);
                double a10 = u0.a(Double.valueOf(d12));
                double a11 = u0.a(Double.valueOf(d13));
                p0.c(MBridgeBaseView.TAG, "videoWHDivideFinal:" + a10 + "  screenWHDivideFinal:" + a11);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
                if (a10 > a11) {
                    layoutParams.width = -1;
                    layoutParams.height = (int) ((g10 * this.S) / this.R);
                    layoutParams.gravity = 17;
                } else if (a10 < a11) {
                    layoutParams.width = (int) (f10 * d12);
                    layoutParams.height = -1;
                    layoutParams.gravity = 17;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                }
                try {
                    CampaignEx campaignEx = this.f30926b;
                    if (campaignEx != null && campaignEx.isDynamicView()) {
                        if (this.f30926b.getRewardTemplateMode() != null) {
                            i11 = this.f30926b.getRewardTemplateMode().f();
                            i10 = this.f30926b.getRewardTemplateMode().b();
                        } else {
                            i10 = this.f30925a.getResources().getConfiguration().orientation;
                            i11 = 904;
                        }
                        if (i11 == 102 || i11 == 202) {
                            if (i10 == 1) {
                                layoutParams.width = -1;
                                layoutParams.gravity = 17;
                                layoutParams.height = (int) (this.S / (this.R / g10));
                            } else {
                                layoutParams.height = -1;
                                layoutParams.gravity = 17;
                                layoutParams.width = (int) (f10 * d12);
                            }
                        }
                        if (i11 == 202 && !TextUtils.isEmpty(this.f30926b.getImageUrl())) {
                            setBlurBackgroundImage(this.f30926b.getImageUrl());
                        }
                        if (i11 == 302 || i11 == 802 || i11 == 5002010) {
                            double d14 = this.R;
                            double d15 = this.S;
                            if (d14 / d15 > 1.0d) {
                                layoutParams.width = -1;
                                layoutParams.height = (int) ((d15 * g10) / d14);
                            } else {
                                int a12 = u0.a(getContext(), 220.0f);
                                layoutParams.width = (int) ((this.R * a12) / this.S);
                                layoutParams.height = a12;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    p0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
                this.mPlayerView.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        v();
    }

    private void u() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null) {
            return;
        }
        if (campaignEx.getAdSpaceT() == 2) {
            t();
        } else {
            s();
        }
    }

    private void v() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.f30929e) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
            int g10 = u0.g(this.f30925a);
            layoutParams.width = -1;
            layoutParams.height = (g10 * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void w() {
        if (this.f31082s0) {
            if (!this.f31084t0) {
                this.mPlayerView.seekToEndFrame();
            }
            this.f31084t0 = true;
        } else {
            this.mPlayerView.onResume();
        }
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || campaignEx.isRewardPopViewShowed) {
            return;
        }
        post(this.Q0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (!this.f30929e || this.f31071n.getVisibility() == 0) {
            return;
        }
        if (this.f30932h) {
            if (this.A) {
                this.f31071n.setVisibility(0);
            }
        } else {
            this.f31071n.setVisibility(0);
        }
        this.f31057a0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int i10;
        com.mbridge.msdk.video.module.listener.a aVar;
        boolean z10;
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f30926b.getRewardTemplateMode().f() == 5002010 && this.L0 && !(z10 = this.f31082s0)) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(z10));
                }
            } else if (this.f31063g0 && ((i10 = this.f31068l0) == com.mbridge.msdk.foundation.same.a.H || i10 == com.mbridge.msdk.foundation.same.a.I)) {
                if (this.f31074o0) {
                    if (i10 != com.mbridge.msdk.foundation.same.a.I || (aVar = this.notifyListener) == null) {
                        return;
                    }
                    this.L0 = true;
                    aVar.a(2, c(this.f31082s0));
                } else if (i10 == com.mbridge.msdk.foundation.same.a.I && this.f31088v0) {
                    com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                    if (aVar3 != null) {
                        this.L0 = true;
                        aVar3.a(2, c(this.f31082s0));
                    }
                } else if (this.f31080r0) {
                    int curPosition = this.mPlayerView.getCurPosition() / 1000;
                    int videoLength = (int) ((curPosition / (this.mPlayerView.getDuration() == 0 ? this.f30926b.getVideoLength() : this.mPlayerView.getDuration())) * 100.0f);
                    if (this.f31068l0 == com.mbridge.msdk.foundation.same.a.H) {
                        o();
                        int i11 = this.f31070m0;
                        if (i11 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f31072n0) {
                            com.mbridge.msdk.video.module.listener.a aVar4 = this.notifyListener;
                            if (aVar4 != null) {
                                this.L0 = true;
                                aVar4.a(2, c(this.f31082s0));
                                return;
                            }
                            return;
                        } else if (i11 == com.mbridge.msdk.foundation.same.a.K && curPosition >= this.f31072n0) {
                            com.mbridge.msdk.video.module.listener.a aVar5 = this.notifyListener;
                            if (aVar5 != null) {
                                this.L0 = true;
                                aVar5.a(2, c(this.f31082s0));
                                return;
                            }
                            return;
                        } else {
                            com.mbridge.msdk.video.module.listener.a aVar6 = this.notifyListener;
                            if (aVar6 != null) {
                                aVar6.a(8, "");
                            }
                        }
                    }
                    if (this.f31068l0 == com.mbridge.msdk.foundation.same.a.I) {
                        int i12 = this.f31070m0;
                        if (i12 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f31072n0) {
                            o();
                            com.mbridge.msdk.video.module.listener.a aVar7 = this.notifyListener;
                            if (aVar7 != null) {
                                aVar7.a(8, "");
                            }
                        } else if (i12 != com.mbridge.msdk.foundation.same.a.K || curPosition < this.f31072n0) {
                        } else {
                            o();
                            com.mbridge.msdk.video.module.listener.a aVar8 = this.notifyListener;
                            if (aVar8 != null) {
                                aVar8.a(8, "");
                            }
                        }
                    }
                }
            } else {
                CampaignEx campaignEx2 = this.f30926b;
                if (campaignEx2 != null && campaignEx2.getAdSpaceT() != 2) {
                    boolean m10 = m();
                    if (m10 && this.N == 1 && !this.f31061e0) {
                        o();
                        com.mbridge.msdk.video.module.listener.a aVar9 = this.notifyListener;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    } else if (this.notifyListener != null) {
                        this.L0 = true;
                        if (this.f30926b.getAdType() == 94 && !m10) {
                            this.notifyListener.a(17, "");
                        }
                        this.notifyListener.a(2, c(!m10));
                        return;
                    } else {
                        return;
                    }
                }
                com.mbridge.msdk.video.module.listener.a aVar10 = this.notifyListener;
                if (aVar10 != null) {
                    this.L0 = true;
                    aVar10.a(2, "");
                }
            }
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i10, int i11, String str) {
        com.mbridge.msdk.video.module.listener.a aVar;
        SoundImageView soundImageView;
        if (this.f30929e) {
            this.f31064h0 = i10;
            if (i10 == 1) {
                this.D.getJSCommon().g(i10);
                SoundImageView soundImageView2 = this.mSoundImageView;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.mPlayerView.closeSound();
                try {
                    MediaEvents mediaEvents = this.f31066j0;
                    if (mediaEvents != null) {
                        mediaEvents.volumeChange(0.0f);
                        p0.a("omsdk", "play video view:  mute");
                    }
                } catch (Exception e10) {
                    p0.a("OMSDK", e10.getMessage());
                }
            } else if (i10 == 2) {
                this.D.getJSCommon().g(i10);
                SoundImageView soundImageView3 = this.mSoundImageView;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.mPlayerView.openSound();
                try {
                    MediaEvents mediaEvents2 = this.f31066j0;
                    if (mediaEvents2 != null) {
                        mediaEvents2.volumeChange(1.0f);
                        p0.a("omsdk", "play video view:  unmute");
                    }
                } catch (Exception e11) {
                    p0.a("OMSDK", e11.getMessage());
                }
            }
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                SoundImageView soundImageView4 = this.mSoundImageView;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(0);
                }
            } else if (i11 == 1) {
                SoundImageView soundImageView5 = this.mSoundImageView;
                if (soundImageView5 != null) {
                    soundImageView5.setVisibility(8);
                }
            } else if (i11 == 2 && (soundImageView = this.mSoundImageView) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals("2") || (aVar = this.notifyListener) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(boolean z10) {
        if (this.f31063g0) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (!this.f31074o0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.F);
                }
                if (this.f31078q0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.D);
                }
                if (this.f31076p0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.E);
                }
                jSONObject.put("complete_info", z10 ? 1 : 2);
                return jSONObject.toString();
            } catch (Exception unused) {
                p0.b(MBridgeBaseView.TAG, "getIVRewardStatusString ERROR");
                return "";
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.Q);
            com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
            b10.a(this.Q + "_1", this.f30926b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            if (this.f31079r != null) {
                com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
                b11.a(this.Q + "_1", this.f31079r);
                return;
            }
            return;
        }
        FeedBackButton feedBackButton = this.f31079r;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        CollapsibleWebView collapsibleWebView = this.H0;
        if (collapsibleWebView == null || this.f30926b == null || !TextUtils.isEmpty(collapsibleWebView.getUrl())) {
            return;
        }
        this.H0.loadUrl(this.f30926b.getClickURL());
        this.H0.setToolBarTitle(this.f30926b.getAppName());
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = com.mbridge.msdk.setting.h.b().a();
        }
        this.H0.setPageLoadTimtout((int) d10.o0());
        this.H0.setPageLoadListener(new d());
        this.H0.setWebViewClient(new e());
        this.H0.setCollapseListener(new f());
        this.H0.setExpandListener(new g());
        this.H0.setExitsClickListener(new h());
    }

    private void h() {
        int findLayout = findLayout("mbridge_reward_videoview_item");
        if (h0.a(findLayout)) {
            this.f30927c.inflate(findLayout, this);
            n();
        }
        W0 = false;
        r();
    }

    private void i() {
        if (this.O0 || this.f31060d0 || this.f31058b0) {
            return;
        }
        this.O0 = true;
        int i10 = this.L;
        if (i10 < 0) {
            return;
        }
        if (i10 == 0) {
            this.f31060d0 = true;
        } else {
            new Handler().postDelayed(new a(), this.L * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.B == null) {
            return;
        }
        if (this.C == null) {
            addCTAView();
        }
        if (this.B.getVisibility() != 0) {
            this.B.setVisibility(0);
            postDelayed(this.P0, 3000L);
            return;
        }
        this.B.setVisibility(8);
        getHandler().removeCallbacks(this.P0);
    }

    private void k() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null || !z0.b(campaignEx.getVideoResolution())) {
            return;
        }
        String videoResolution = this.f30926b.getVideoResolution();
        p0.c(MBridgeBaseView.TAG, "MBridgeBaseView videoResolution:" + videoResolution);
        String[] split = videoResolution.split(TextureRenderKeys.KEY_IS_X);
        if (split.length == 2) {
            if (u0.m(split[0]) > 0.0d) {
                this.R = u0.m(split[0]);
            }
            if (u0.m(split[1]) > 0.0d) {
                this.S = u0.m(split[1]);
            }
            p0.c(MBridgeBaseView.TAG, "MBridgeBaseView mVideoW:" + this.R + "  mVideoH:" + this.S);
        }
        if (this.R <= 0.0d) {
            this.R = 1280.0d;
        }
        if (this.S <= 0.0d) {
            this.S = 720.0d;
        }
    }

    private boolean l() {
        try {
            this.mPlayerView = (PlayerView) findViewById(filterFindViewId(this.f31090w0, "mbridge_vfpv"));
            this.mSoundImageView = (SoundImageView) findViewById(filterFindViewId(this.f31090w0, "mbridge_sound_switch"));
            this.f31069m = (TextView) findViewById(filterFindViewId(this.f31090w0, "mbridge_tv_count"));
            View findViewById = findViewById(filterFindViewId(this.f31090w0, "mbridge_rl_playing_close"));
            this.f31071n = findViewById;
            if (findViewById != null) {
                findViewById.setVisibility(4);
            }
            this.f31073o = (RelativeLayout) findViewById(filterFindViewId(this.f31090w0, "mbridge_top_control"));
            this.f31075p = (ImageView) findViewById(filterFindViewId(this.f31090w0, "mbridge_videoview_bg"));
            this.f31077q = (ProgressBar) findViewById(filterFindViewId(this.f31090w0, "mbridge_video_progress_bar"));
            this.f31079r = (FeedBackButton) findViewById(filterFindViewId(this.f31090w0, "mbridge_native_endcard_feed_btn"));
            this.f31081s = (ImageView) findViewById(filterFindViewId(this.f31090w0, "mbridge_iv_link"));
            this.G0 = (RelativeLayout) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_scale_webview_layout"));
            this.I0 = (RelativeLayout) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_header_layout"));
            if (this.G0 != null) {
                CollapsibleWebView collapsibleWebView = new CollapsibleWebView(getContext());
                this.H0 = collapsibleWebView;
                this.G0.addView(collapsibleWebView, new RelativeLayout.LayoutParams(-1, -1));
            }
            u0.a(1, this.f31081s, this.f30926b, this.f30925a, false, new t());
            this.f31083t = (MBridgeSegmentsProgressBar) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_segment_progressbar"));
            this.B = (FrameLayout) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_cta_layout"));
            this.f31094y0 = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f31090w0, "mbridge_animation_click_view"));
            this.G = (RelativeLayout) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_moreoffer_layout"));
            this.E0 = (MBAcquireRewardPopView) findViewById(filterFindViewId(this.f31090w0, "mbridge_reward_popview"));
            this.tvFlag = (TextView) findViewById(filterFindViewId(this.f31090w0, "mbridge_tv_flag"));
            return isNotNULL(this.mPlayerView, this.mSoundImageView, this.f31069m, this.f31071n);
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private boolean m() {
        int videoCompleteTime = getVideoCompleteTime();
        int curPosition = (this.mPlayerView.getCurPosition() / 1000) + 1;
        if (this.f30926b.getDynamicTempCode() != 5 || this.mCurrPlayNum <= 1) {
            if ((videoCompleteTime > 0 && curPosition < videoCompleteTime) || videoCompleteTime == 0) {
                return true;
            }
        } else if (videoCompleteTime != 0 && videoCompleteTime > 0 && curPosition < videoCompleteTime) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        PlayerView playerView;
        boolean l10 = l();
        this.f30929e = l10;
        if (!l10) {
            p0.b(MBridgeBaseView.TAG, "MBridgeVideoView init fail");
        }
        if (r0.a().a("i_l_s_t_r_i", false) && (playerView = this.mPlayerView) != null) {
            playerView.setNotifyListener(new n());
        }
        d();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.f31092x0 = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        boolean z10;
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null) {
                playerView.onPause();
                CampaignEx campaignEx = this.f30926b;
                if (campaignEx != null && !campaignEx.isRewardPopViewShowed) {
                    removeCallbacks(this.Q0);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    PlayerView playerView2 = this.mPlayerView;
                    if (!this.F0 && !this.I && !this.J) {
                        z10 = false;
                        playerView2.setIsCovered(z10);
                    }
                    z10 = true;
                    playerView2.setIsCovered(z10);
                }
                CampaignEx campaignEx2 = this.f30926b;
                if (campaignEx2 == null || campaignEx2.getNativeVideoTracking() == null || this.f30926b.isHasReportAdTrackPause()) {
                    return;
                }
                this.f30926b.setHasReportAdTrackPause(true);
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx3 = this.f30926b;
                com.mbridge.msdk.click.a.a(d10, campaignEx3, this.Q, campaignEx3.getNativeVideoTracking().n(), false, false);
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        if (this.f30929e) {
            a1.a(this.mPlayerView, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            if (this.f30932h) {
                if (com.mbridge.msdk.video.dynview.util.a.b(this.f30926b) == -1 || com.mbridge.msdk.video.dynview.util.a.b(this.f30926b) == 100) {
                    this.mPlayerView.setOnClickListener(new o());
                }
            } else {
                this.mPlayerView.setOnClickListener(new p());
            }
            SoundImageView soundImageView = this.mSoundImageView;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(new q());
            }
            this.f31071n.setOnClickListener(new r());
        }
    }

    private boolean b(int i10, int i11) {
        return i10 > 0 && i11 > 0 && u0.g(this.f30925a) >= i10 && u0.f(this.f30925a) >= i11;
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.c b10 = new com.mbridge.msdk.video.dynview.wrapper.c().b(viewGroup, campaignEx);
        com.mbridge.msdk.video.dynview.b.a().a(b10, new l(viewGroup, campaignEx, b10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            com.mbridge.msdk.video.module.listener.a r0 = r8.f31085u
            if (r0 == 0) goto L9a
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.f30926b
            if (r0 == 0) goto L55
            r1 = 1
            r0.setClickTempSource(r1)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx$c r0 = r0.getRewardTemplateMode()     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = ""
            if (r0 == 0) goto L29
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2b
            r2.<init>()     // Catch: java.lang.Exception -> L2b
            int r0 = r0.f()     // Catch: java.lang.Exception -> L2b
            r2.append(r0)     // Catch: java.lang.Exception -> L2b
            r2.append(r1)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> L2b
        L29:
            r7 = r1
            goto L2d
        L2b:
            r9 = move-exception
            goto L52
        L2d:
            android.content.Context r0 = r8.f30925a     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            java.lang.String r2 = r1.getCampaignUnitId()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            boolean r3 = r1.isBidCampaign()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            java.lang.String r4 = r1.getRequestId()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            java.lang.String r5 = r1.getRequestIdNotice()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.f30926b     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = r1.getId()     // Catch: java.lang.Exception -> L2b
            r1 = r9
            com.mbridge.msdk.foundation.same.report.j.a(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L2b
            goto L55
        L52:
            r9.printStackTrace()
        L55:
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L67
            r9.<init>()     // Catch: org.json.JSONException -> L67
            java.lang.String r0 = com.mbridge.msdk.foundation.same.a.f27028j     // Catch: org.json.JSONException -> L65
            r1 = 0
            org.json.JSONObject r1 = r8.a(r1)     // Catch: org.json.JSONException -> L65
            r9.put(r0, r1)     // Catch: org.json.JSONException -> L65
            goto L6d
        L65:
            r0 = move-exception
            goto L6a
        L67:
            r9 = move-exception
            r0 = r9
            r9 = 0
        L6a:
            r0.printStackTrace()
        L6d:
            com.mbridge.msdk.video.module.listener.a r0 = r8.f31085u
            r1 = 105(0x69, float:1.47E-43)
            r0.a(r1, r9)
            com.mbridge.msdk.foundation.controller.c r9 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r9 = r9.d()
            if (r9 == 0) goto L9a
            com.mbridge.msdk.foundation.controller.c r9 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L90
            android.content.Context r9 = r9.d()     // Catch: java.lang.Exception -> L90
            android.content.Context r9 = r9.getApplicationContext()     // Catch: java.lang.Exception -> L90
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.f30926b     // Catch: java.lang.Exception -> L90
            com.mbridge.msdk.video.module.report.b.a(r9, r0)     // Catch: java.lang.Exception -> L90
            goto L9a
        L90:
            r9 = move-exception
            java.lang.String r9 = r9.getMessage()
            java.lang.String r0 = "MBridgeBaseView"
            com.mbridge.msdk.foundation.tools.p0.b(r0, r9)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeVideoView.b(java.lang.String):void");
    }

    private String a(int i10, int i11) {
        if (i11 != 0) {
            double d10 = i10 / i11;
            try {
                return u0.a(Double.valueOf(d10)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i11 + "";
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class l implements com.mbridge.msdk.video.dynview.listener.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f31116a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f31117b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.dynview.c f31118c;

        /* loaded from: classes6.dex */
        class a extends com.mbridge.msdk.widget.a {
            a() {
            }

            @Override // com.mbridge.msdk.widget.a
            protected void a(View view) {
                if (view instanceof TextView) {
                    MBridgeVideoView.this.f30926b.setTriggerClickSource(1);
                } else {
                    MBridgeVideoView.this.f30926b.setTriggerClickSource(2);
                }
                if (MBridgeVideoView.this.f30926b.getRewardTemplateMode() != null && MBridgeVideoView.this.f30926b.getRewardTemplateMode().f() == 902) {
                    MBridgeVideoView.this.j();
                } else {
                    MBridgeVideoView.this.b("video_play_click");
                }
            }
        }

        l(ViewGroup viewGroup, CampaignEx campaignEx, com.mbridge.msdk.video.dynview.c cVar) {
            this.f31116a = viewGroup;
            this.f31117b = campaignEx;
            this.f31118c = cVar;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                if (this.f31116a != null && aVar.b() != null) {
                    aVar.b().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f31116a.addView(aVar.b());
                }
                if (aVar.a() != null) {
                    for (View view : aVar.a()) {
                        a1.a(view, this.f31117b.getLocalRequestId(), this.f31117b.getLocalAllowTrackClick());
                        view.setOnClickListener(new a());
                    }
                }
                MBridgeVideoView.this.f31090w0 = aVar.c();
                MBridgeVideoView.this.n();
                boolean unused = MBridgeVideoView.W0 = false;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                CampaignEx campaignEx = mBridgeVideoView.f30926b;
                if (campaignEx != null) {
                    campaignEx.setTemplateRenderSucc(mBridgeVideoView.f31090w0);
                }
                MBridgeVideoView.this.E = this.f31118c.j();
                MBridgeVideoView.this.F = this.f31118c.e();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            p0.b(MBridgeBaseView.TAG, "errorMsg：" + aVar.b());
        }
    }

    /* loaded from: classes6.dex */
    class s implements com.mbridge.msdk.widget.dialog.b {
        s() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView.this.f31078q0 = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f30925a, mBridgeVideoView2.f30926b, mBridgeVideoView2.f31067k0, MBridgeVideoView.this.Q, 1, 1, 1);
            if (MBridgeVideoView.this.f31063g0 && MBridgeVideoView.this.f31068l0 == com.mbridge.msdk.foundation.same.a.H) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f31082s0));
                }
            } else if (MBridgeVideoView.this.f31063g0 && MBridgeVideoView.this.f31068l0 == com.mbridge.msdk.foundation.same.a.I) {
                MBridgeVideoView.this.p();
            } else {
                MBridgeVideoView mBridgeVideoView5 = MBridgeVideoView.this;
                if (mBridgeVideoView5.notifyListener != null) {
                    mBridgeVideoView5.L0 = true;
                    MBridgeVideoView.this.notifyListener.a(2, "");
                }
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            if (MBridgeVideoView.this.f31063g0 && (MBridgeVideoView.this.f31068l0 == com.mbridge.msdk.foundation.same.a.I || MBridgeVideoView.this.f31068l0 == com.mbridge.msdk.foundation.same.a.H)) {
                MBridgeVideoView.this.f31076p0 = true;
                com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                if (aVar != null) {
                    aVar.a(124, "");
                }
                MBridgeVideoView.this.f31086u0 = true;
                MBridgeVideoView.this.gonePlayingCloseView();
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f30925a, mBridgeVideoView2.f30926b, mBridgeVideoView2.f31067k0, MBridgeVideoView.this.Q, 1, 0, 1);
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e extends WebViewClient {
        e() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            p0.b(MBridgeBaseView.TAG, "WebView called onRenderProcessGone");
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
                    p0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        }
    }

    public MBridgeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f31089w = false;
        this.f31095z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f31057a0 = false;
        this.f31058b0 = false;
        this.f31059c0 = false;
        this.f31060d0 = false;
        this.f31061e0 = false;
        this.f31063g0 = false;
        this.f31064h0 = 2;
        this.f31074o0 = false;
        this.f31076p0 = false;
        this.f31078q0 = false;
        this.f31080r0 = true;
        this.f31082s0 = false;
        this.f31084t0 = false;
        this.f31086u0 = false;
        this.f31088v0 = false;
        this.f31090w0 = false;
        this.f31096z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }
}
