package com.mbridge.msdk.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.google.ads.mediation.vungle.VungleConstants;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.iab.omid.library.mmadbridge.adsession.media.VastProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.mraid.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;
import com.mbridge.msdk.video.signal.impl.a;
import com.mbridge.msdk.videocommon.a;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBTempContainer extends MBTempContainerDiff {

    /* renamed from: s0  reason: collision with root package name */
    private static final String f30524s0 = "MBTempContainer";
    private int A;
    private int B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private String I;
    private String J;
    private List<CampaignEx> K;
    private int L;
    private com.mbridge.msdk.foundation.same.report.metrics.c M;
    protected boolean N;
    private LayoutInflater O;
    protected boolean P;
    protected k Q;
    protected WindVaneWebView R;
    protected MBridgeContainerView S;
    protected Handler T;
    private int U;
    private int V;
    protected Runnable W;

    /* renamed from: a0  reason: collision with root package name */
    protected Runnable f30525a0;

    /* renamed from: b0  reason: collision with root package name */
    private View f30526b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f30527c0;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f30528d0;

    /* renamed from: e0  reason: collision with root package name */
    private boolean f30529e0;

    /* renamed from: f0  reason: collision with root package name */
    private boolean f30530f0;

    /* renamed from: g0  reason: collision with root package name */
    private boolean f30531g0;

    /* renamed from: h0  reason: collision with root package name */
    private boolean f30532h0;

    /* renamed from: i0  reason: collision with root package name */
    private boolean f30533i0;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f30534j0;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f30535k0;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f30536l0;

    /* renamed from: m0  reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.d f30537m0;

    /* renamed from: n0  reason: collision with root package name */
    private AdSession f30538n0;

    /* renamed from: o0  reason: collision with root package name */
    private MediaEvents f30539o0;

    /* renamed from: p0  reason: collision with root package name */
    private AdEvents f30540p0;

    /* renamed from: q0  reason: collision with root package name */
    private Runnable f30541q0;

    /* renamed from: r  reason: collision with root package name */
    private View f30542r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f30543r0;

    /* renamed from: s  reason: collision with root package name */
    private CampaignEx f30544s;

    /* renamed from: t  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f30545t;

    /* renamed from: u  reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.orglistener.h f30546u;

    /* renamed from: v  reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.listener.b f30547v;

    /* renamed from: w  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f30548w;

    /* renamed from: x  reason: collision with root package name */
    private int f30549x;

    /* renamed from: y  reason: collision with root package name */
    private String f30550y;

    /* renamed from: z  reason: collision with root package name */
    private com.mbridge.msdk.video.signal.factory.b f30551z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBTempContainer.this.f30526b0.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.getActivityProxy().a() != 0) {
                MBTempContainer.this.U = -3;
            } else {
                MBTempContainer.this.defaultLoad(-1, "WebView load timeout");
            }
        }
    }

    /* loaded from: classes6.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.getActivityProxy().a() != 0) {
                MBTempContainer.this.U = -4;
            } else {
                MBTempContainer.this.defaultLoad(-3, "Signal Communication connect timeout");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements MBridgeVideoView.u {
        d() {
        }

        @Override // com.mbridge.msdk.video.module.MBridgeVideoView.u
        public void a() {
            if (MBTempContainer.this.f30544s != null) {
                MBTempContainer.this.l();
                if (MBTempContainer.this.f30544s.isDynamicView()) {
                    if (((AbstractJSContainer) MBTempContainer.this).f31495p) {
                        if (MBTempContainer.this.f30544s.isCampaignIsFiltered()) {
                            MBTempContainer.this.f30546u.a(MBTempContainer.this.M);
                        }
                    } else {
                        MBTempContainer.this.f30546u.a(MBTempContainer.this.M);
                    }
                } else {
                    MBTempContainer.this.f30546u.a(MBTempContainer.this.M);
                }
                com.mbridge.msdk.video.bt.module.orglistener.f.a(MBTempContainer.this.getContext(), MBTempContainer.this.f30544s, ((AbstractJSContainer) MBTempContainer.this).f31483d, MBTempContainer.this.f30549x);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements com.mbridge.msdk.video.dynview.listener.f {
        e() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.f
        public void a() {
            MBTempContainer.this.w();
        }
    }

    /* loaded from: classes6.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.f30526b0 != null) {
                MBTempContainer.this.f30526b0.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractJSContainer) MBTempContainer.this).f31482c != null) {
                ((AbstractJSContainer) MBTempContainer.this).f31482c.finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class i implements d.b {
        i() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.d.b
        public void a(double d10) {
            MBridgeContainerView mBridgeContainerView;
            String str = MBTempContainer.f30524s0;
            p0.b(str, "volume is : " + d10);
            try {
                if (MBTempContainer.this.f30544s.isMraid() && (mBridgeContainerView = MBTempContainer.this.S) != null && mBridgeContainerView.getH5EndCardView() != null) {
                    MBTempContainer.this.S.getH5EndCardView().volumeChange(d10);
                }
            } catch (Exception e10) {
                p0.b(MBTempContainer.f30524s0, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBTempContainer.this.f30526b0.setBackgroundColor(0);
            MBTempContainer.this.f30526b0.setVisibility(0);
            MBTempContainer.this.f30526b0.bringToFront();
        }
    }

    /* loaded from: classes6.dex */
    public interface k {

        /* loaded from: classes6.dex */
        public static class a implements k {

            /* renamed from: a  reason: collision with root package name */
            private boolean f30562a = false;

            @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k
            public void a(boolean z10) {
                this.f30562a = z10;
            }

            @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k
            public void onError(String str) {
                p0.b("ActivityErrorListener", str);
                this.f30562a = true;
            }
        }

        void a(boolean z10);

        void onError(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class l extends AppletSchemeCallBack {

        /* renamed from: a  reason: collision with root package name */
        private CampaignEx f30563a;

        public l(CampaignEx campaignEx) {
            this.f30563a = campaignEx;
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestFailed(int i10, String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                String str3 = MBTempContainer.f30524s0;
                p0.a(str3, "request wx scheme failed: errorCode: " + i10 + " errorMessage: " + str);
            }
            try {
                CampaignEx campaignEx = this.f30563a;
                if (campaignEx != null) {
                    campaignEx.setClickURL(str2);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b(MBTempContainer.f30524s0, e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestStart() {
            if (MBridgeConstans.DEBUG) {
                p0.a(MBTempContainer.f30524s0, "start request wx scheme");
            }
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestSuccess(String str) {
            if (MBridgeConstans.DEBUG) {
                p0.a(MBTempContainer.f30524s0, "request wx scheme success");
            }
            try {
                CampaignEx campaignEx = this.f30563a;
                if (campaignEx != null) {
                    campaignEx.setDeepLinkUrl(str);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b(MBTempContainer.f30524s0, e10.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class m extends com.mbridge.msdk.video.module.listener.impl.a {
        public m(Activity activity, CampaignEx campaignEx) {
            super(activity, campaignEx);
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.a, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i10, Object obj) {
            if (com.mbridge.msdk.util.b.a()) {
                MBTempContainer.this.setChinaJsCommonContext();
            }
            String str = "";
            if (i10 != 108) {
                if (i10 != 113) {
                    if (i10 != 117) {
                        if (i10 != 126 && i10 != 128) {
                            if (i10 != 131) {
                                switch (i10) {
                                    case 103:
                                    case 104:
                                        MBTempContainer.this.onAdClose();
                                        break;
                                    case 105:
                                        if (com.mbridge.msdk.util.b.a()) {
                                            MBTempContainer.this.setChinaCTACallBack();
                                        }
                                        com.mbridge.msdk.video.signal.d jSCommon = MBTempContainer.this.getJSCommon();
                                        if (obj != null) {
                                            str = obj.toString();
                                        }
                                        jSCommon.click(1, str);
                                        break;
                                    case 106:
                                        if (com.mbridge.msdk.util.b.a()) {
                                            MBTempContainer mBTempContainer = MBTempContainer.this;
                                            mBTempContainer.setChinaBrowserCallBack(mBTempContainer.f30547v, MBTempContainer.this.f30550y, MBTempContainer.this.f30546u, MBTempContainer.this.f30544s);
                                            if (((AbstractJSContainer) MBTempContainer.this).f31482c != null && MBTempContainer.this.f30544s != null) {
                                                MBTempContainer.this.onAdClose();
                                                break;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                MBTempContainer.this.f30546u.a(true, ((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
                            }
                        } else {
                            MBTempContainer.this.f30546u.a(false, ((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
                        }
                    } else {
                        MBridgeVideoView mBridgeVideoView = MBTempContainer.this.mbridgeVideoView;
                        if (mBridgeVideoView != null) {
                            mBridgeVideoView.setVisible(4);
                        }
                        MBTempContainer.this.f30534j0 = true;
                        MBTempContainer.this.f30546u.a(((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
                    }
                }
                MBTempContainer.this.f30546u.a(true, ((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
            } else {
                if (com.mbridge.msdk.util.b.a()) {
                    MBTempContainer mBTempContainer2 = MBTempContainer.this;
                    mBTempContainer2.setChinaCallBackStatus(mBTempContainer2.R);
                }
                MBTempContainer.this.getJSCommon().a(new a.b(MBTempContainer.this.getJSCommon(), new o(MBTempContainer.this, null)));
                com.mbridge.msdk.video.signal.d jSCommon2 = MBTempContainer.this.getJSCommon();
                if (obj != null) {
                    str = obj.toString();
                }
                jSCommon2.click(1, str);
            }
            super.a(i10, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class n extends com.mbridge.msdk.video.module.listener.impl.f {
        private n() {
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i10, Object obj) {
            String str;
            super.a(i10, obj);
            try {
                if (obj instanceof JSONObject) {
                    str = obj.toString();
                } else {
                    str = (String) obj;
                }
                if (((AbstractJSContainer) MBTempContainer.this).f31490k && !TextUtils.isEmpty(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    int optInt = jSONObject.optInt("type");
                    int optInt2 = jSONObject.optInt(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
                    if (optInt != 2) {
                        if (optInt != 3) {
                            MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.F;
                        } else {
                            MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.E;
                        }
                    } else {
                        MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.D;
                    }
                    MBTempContainer.this.B = optInt2;
                }
            } catch (Exception unused) {
                p0.b("NotifyListener", "PlayableResultListener ERROR");
            }
            if (i10 != 120) {
                String str2 = "";
                if (i10 != 131) {
                    if (i10 != 126) {
                        if (i10 != 127) {
                            switch (i10) {
                                case 100:
                                    MBTempContainer.this.f30535k0 = true;
                                    MBTempContainer mBTempContainer = MBTempContainer.this;
                                    mBTempContainer.T.postDelayed(mBTempContainer.f30541q0, 250L);
                                    MBTempContainer.this.f30546u.a(MBTempContainer.this.M);
                                    return;
                                case 101:
                                case 102:
                                    MBTempContainer.this.getJSCommon().f();
                                    return;
                                case 103:
                                    MBTempContainer.this.f30528d0 = true;
                                    if (MBTempContainer.this.f30544s.isMraid()) {
                                        MBTempContainer.this.onAdClose();
                                        return;
                                    } else {
                                        MBTempContainer.this.getJSCommon().f();
                                        return;
                                    }
                                case 104:
                                    MBTempContainer.this.onAdClose();
                                    return;
                                case 105:
                                    if (com.mbridge.msdk.util.b.a()) {
                                        MBTempContainer.this.setChinaCTACallBack();
                                    }
                                    com.mbridge.msdk.video.signal.d jSCommon = MBTempContainer.this.getJSCommon();
                                    if (obj != null) {
                                        str2 = obj.toString();
                                    }
                                    jSCommon.click(1, str2);
                                    return;
                                default:
                                    return;
                            }
                        }
                        MBTempContainer.this.f30528d0 = true;
                        MBTempContainer.this.f30546u.a(MBTempContainer.this.M);
                        MBTempContainer.this.f30546u.a(((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
                        MBTempContainer.this.getJSContainerModule().showEndcard(100);
                        return;
                    }
                    MBTempContainer.this.f30546u.a(false, ((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
                    return;
                }
                com.mbridge.msdk.video.signal.d jSCommon2 = MBTempContainer.this.getJSCommon();
                if (obj != null) {
                    str2 = obj.toString();
                }
                jSCommon2.click(4, str2);
                return;
            }
            MBTempContainer.this.f30546u.a(((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
        }

        /* synthetic */ n(MBTempContainer mBTempContainer, b bVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class o extends a.C0454a {
        private o() {
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(boolean z10) {
            if (MBTempContainer.this.f30539o0 != null) {
                try {
                    MBTempContainer.this.f30539o0.adUserInteraction(InteractionType.CLICK);
                    p0.a("omsdk", "mbtc adUserInteraction click");
                } catch (Exception e10) {
                    p0.b("omsdk", e10.getMessage());
                }
            }
            super.a(z10);
            MBTempContainer.this.f30546u.a(z10, ((AbstractJSContainer) MBTempContainer.this).f31484e, ((AbstractJSContainer) MBTempContainer.this).f31483d);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            super.onFinishRedirection(campaign, str);
            MBTempContainer.this.f30532h0 = true;
            MBTempContainer.this.m();
            if (campaign != null && (campaign instanceof CampaignEx)) {
                try {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    String optString = new JSONObject(MBTempContainer.this.getJSVideoModule().getCurrentProgress()).optString("progress", "");
                    if (campaignEx.getLinkType() == 3 && campaignEx.getEndcard_click_result() == 2 && optString.equals("1.0") && ((AbstractJSContainer) MBTempContainer.this).f31482c != null) {
                        if (((AbstractJSContainer) MBTempContainer.this).f31495p) {
                            MBTempContainer.this.onAdClose();
                        } else {
                            ((AbstractJSContainer) MBTempContainer.this).f31482c.finish();
                        }
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            if (MBTempContainer.this.f30543r0) {
                MBTempContainer.this.onResume();
            }
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void onInitSuccess() {
            super.onInitSuccess();
            MBTempContainer.this.receiveSuccess();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            super.onRedirectionFailed(campaign, str);
            MBTempContainer.this.m();
            MBTempContainer.this.f30532h0 = true;
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            super.onStartRedirection(campaign, str);
            MBTempContainer.this.y();
            if (MBTempContainer.this.f30543r0) {
                MBTempContainer.this.onPause();
            }
        }

        /* synthetic */ o(MBTempContainer mBTempContainer, b bVar) {
            this();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(int i10, String str) {
            super.a(i10, str);
            MBTempContainer.this.defaultLoad(i10, str);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a() {
            super.a();
            MBTempContainer mBTempContainer = MBTempContainer.this;
            Handler handler = mBTempContainer.T;
            if (handler != null) {
                handler.removeCallbacks(mBTempContainer.W);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class p extends com.mbridge.msdk.video.module.listener.impl.f {
        private p() {
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x0161  */
        @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(int r7, java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 556
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.MBTempContainer.p.a(int, java.lang.Object):void");
        }

        /* synthetic */ p(MBTempContainer mBTempContainer, b bVar) {
            this();
        }
    }

    public MBTempContainer(Context context) {
        super(context);
        this.f30549x = 1;
        this.f30550y = "";
        this.A = com.mbridge.msdk.foundation.same.a.F;
        this.C = false;
        this.I = "";
        this.K = new ArrayList();
        this.L = 0;
        this.N = false;
        this.P = false;
        this.Q = new k.a();
        this.T = new Handler();
        this.U = 0;
        this.V = 0;
        this.W = new b();
        this.f30525a0 = new c();
        this.f30527c0 = false;
        this.f30528d0 = false;
        this.f30529e0 = false;
        this.f30531g0 = false;
        this.f30532h0 = false;
        this.f30533i0 = false;
        this.f30534j0 = false;
        this.f30535k0 = false;
        this.f30536l0 = false;
        this.f30538n0 = null;
        this.f30539o0 = null;
        this.f30540p0 = null;
        this.f30541q0 = new f();
        this.f30543r0 = false;
        init(context);
    }

    private int getBufferTimeout() {
        try {
            com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c10 == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            if (c10 != null) {
                return (int) c10.i();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return 5;
    }

    private int getCloseBtnTime() {
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx == null) {
            return 1;
        }
        boolean a10 = u0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_CLOSE_BTN_DELATE, campaignEx.getendcard_url());
        int c10 = u0.c(this.f30544s.getendcard_url(), MBridgeConstans.DYNAMIC_VIEW_KEY_CLOSE_BTN_DELATE);
        if (!a10 || c10 < 0) {
            if (this.f30544s.getCbd() > -2) {
                return this.f30544s.getCbd();
            }
            return this.f31485f.i();
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdClose() {
        int i10;
        try {
            com.mbridge.msdk.video.bt.module.listener.b bVar = this.f30547v;
            if (bVar != null) {
                if (this.f31490k && ((i10 = this.f31492m) == com.mbridge.msdk.foundation.same.a.H || i10 == com.mbridge.msdk.foundation.same.a.I)) {
                    boolean z10 = true;
                    if (this.B != 1) {
                        z10 = false;
                    }
                    bVar.a(z10, this.A);
                }
                this.f30547v.a(this.f30550y, this.f30528d0, this.f31487h);
                return;
            }
            Activity activity = this.f31482c;
            if (activity != null) {
                activity.finish();
            }
        } catch (Exception unused) {
            Activity activity2 = this.f31482c;
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    public boolean canBackPress() {
        MBridgeContainerView mBridgeContainerView = this.S;
        if (mBridgeContainerView != null && !mBridgeContainerView.canBackPress()) {
            return false;
        }
        return true;
    }

    public void defaultLoad(int i10, String str) {
        int i11;
        int F;
        int i12;
        superDefaultLoad(i10, str);
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx != null && !campaignEx.isDynamicView()) {
            this.f30544s.setTemplateRenderSucc(false);
        }
        if (isLoadSuccess()) {
            if (this.f30544s.getPlayable_ads_without_video() == 2) {
                this.S.setCampaign(this.f30544s);
                this.S.addOrderViewData(this.K);
                this.S.setUnitID(this.f31483d);
                this.S.setCloseDelayTime(getCloseBtnTime());
                this.S.setPlayCloseBtnTm(this.f31485f.u());
                this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.h(this.f30544s, this.f30545t, this.f31487h, getInnerPlacementId(), this.f31483d, new n(this, null), this.f31485f.A(), this.f31495p));
                this.S.preLoadData(this.f30551z);
                this.f30551z.getJSCommon().g(this.f31489j);
                this.S.showPlayableView();
            } else {
                b(i10, str);
                this.f30526b0.setVisibility(8);
                loadModuleDatas();
                int E = this.f31485f.E();
                int h5CloseType = getH5CloseType();
                if (h5CloseType != 0) {
                    i11 = h5CloseType;
                } else {
                    i11 = E;
                }
                CampaignEx campaignEx2 = this.f30544s;
                if (campaignEx2 != null && campaignEx2.isDynamicView()) {
                    this.mbridgeVideoView.setContainerViewOnNotifyListener(new m(this.f31482c, this.f30544s));
                }
                CampaignEx campaignEx3 = this.f30544s;
                if (campaignEx3 != null && campaignEx3.getVst() > -2) {
                    F = this.f30544s.getVst();
                } else {
                    F = this.f31485f.F();
                }
                CampaignEx campaignEx4 = this.f30544s;
                if (campaignEx4 != null && campaignEx4.getDynamicTempCode() == 5 && (i12 = this.f30549x) > 1) {
                    F = a(F, i12);
                    this.f30544s.setVst(F);
                }
                int i13 = F;
                this.mbridgeVideoView.setVideoSkipTime(i13);
                MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
                mBridgeVideoView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.m(mBridgeVideoView, this.S, this.f30544s, this.f31487h, this.f30545t, getInnerPlacementId(), this.f31483d, i11, i13, new p(this, null), this.f31485f.A(), this.f31495p, this.f31485f.C()));
                this.mbridgeVideoView.setAdSession(this.f30538n0);
                this.mbridgeVideoView.setVideoEvents(this.f30539o0);
                this.mbridgeVideoView.defaultShow();
                MBridgeContainerView mBridgeContainerView = this.S;
                mBridgeContainerView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.b(this.mbridgeVideoView, mBridgeContainerView, this.f30544s, this.f31487h, this.f30545t, getInnerPlacementId(), this.f31483d, new m(this.f31482c, this.f30544s), this.f31485f.A(), this.f31495p));
                this.S.defaultShow();
            }
            q();
            return;
        }
        b(i10, str);
        Activity activity = this.f31482c;
        if (activity != null) {
            activity.finish();
        }
    }

    public int findID(String str) {
        return h0.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return h0.a(getContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public MBridgeContainerView findMBridgeContainerView() {
        return (MBridgeContainerView) findViewById(findID("mbridge_video_templete_container"));
    }

    public MBridgeVideoView findMBridgeVideoView() {
        return (MBridgeVideoView) findViewById(findID("mbridge_video_templete_videoview"));
    }

    public WindVaneWebView findWindVaneWebView() {
        a.C0455a a10;
        try {
            if (this.f31495p) {
                CampaignEx campaignEx = this.f30544s;
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                    a.C0455a b10 = com.mbridge.msdk.videocommon.a.b(this.f31483d + "_" + this.f30544s.getId() + "_" + this.f30544s.getRequestId() + "_" + this.f30544s.getRewardTemplateMode().e());
                    if (b10 != null) {
                        return b10.b();
                    }
                    return null;
                }
                return null;
            }
            if (this.f31490k) {
                a10 = com.mbridge.msdk.videocommon.a.a(287, this.f30544s);
            } else {
                a10 = com.mbridge.msdk.videocommon.a.a(94, this.f30544s);
            }
            if (a10 != null && a10.c()) {
                if (this.f31490k) {
                    com.mbridge.msdk.videocommon.a.b(287, this.f30544s);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f30544s);
                }
                WindVaneWebView b11 = a10.b();
                if (this.f30531g0) {
                    b11.setWebViewTransparent();
                }
                return b11;
            }
            return null;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public AdEvents getAdEvents() {
        return this.f30540p0;
    }

    public AdSession getAdSession() {
        return this.f30538n0;
    }

    public CampaignEx getCampaign() {
        return this.f30544s;
    }

    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    protected int getH5CloseType() {
        com.mbridge.msdk.video.signal.impl.k b10 = b(this.f30544s);
        if (b10 != null) {
            return b10.l();
        }
        return 0;
    }

    protected int getH5DialogRole() {
        if (getJSCommon() != null) {
            return getJSCommon().d();
        }
        return 1;
    }

    protected int getH5MuteState() {
        com.mbridge.msdk.video.signal.impl.k b10 = b(this.f30544s);
        if (b10 != null) {
            return b10.m();
        }
        return 0;
    }

    public String getInstanceId() {
        return this.f30550y;
    }

    protected boolean getIsShowingTransparent() {
        com.mbridge.msdk.video.signal.impl.k b10 = b(this.f30544s);
        if (b10 != null) {
            return b10.p();
        }
        return false;
    }

    public int getLayoutID() {
        String str;
        if (this.f30531g0) {
            str = "mbridge_reward_activity_video_templete_transparent";
        } else {
            str = "mbridge_reward_activity_video_templete";
        }
        return findLayout(str);
    }

    public MediaEvents getVideoEvents() {
        return this.f30539o0;
    }

    public void init(Context context) {
        this.O = LayoutInflater.from(context);
    }

    public boolean initViews() {
        View findViewById = findViewById(findID("mbridge_video_templete_progressbar"));
        this.f30526b0 = findViewById;
        if (findViewById != null) {
            return true;
        }
        return false;
    }

    public boolean isHasDestoryed() {
        return this.C;
    }

    public boolean isLoadSuccess() {
        return this.P;
    }

    public void loadModuleDatas() {
        int i10;
        int F;
        int i11;
        int i12;
        int h5MuteState = getH5MuteState();
        if (h5MuteState != 0) {
            this.f31489j = h5MuteState;
        }
        int E = this.f31485f.E();
        int h5CloseType = getH5CloseType();
        if (h5CloseType != 0) {
            i10 = h5CloseType;
        } else {
            i10 = E;
        }
        this.mbridgeVideoView.setSoundState(this.f31489j);
        this.mbridgeVideoView.setCampaign(this.f30544s);
        this.mbridgeVideoView.setPlayURL(this.f30545t.g());
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx != null && campaignEx.getVst() > -2) {
            F = this.f30544s.getVst();
        } else {
            F = this.f31485f.F();
        }
        CampaignEx campaignEx2 = this.f30544s;
        if (campaignEx2 != null && campaignEx2.getDynamicTempCode() == 5 && (i12 = this.f30549x) > 1) {
            F = a(F, i12);
            this.f30544s.setVst(F);
        }
        this.mbridgeVideoView.setVideoSkipTime(F);
        this.mbridgeVideoView.setCloseAlert(this.f31485f.h());
        this.mbridgeVideoView.setBufferTimeout(getBufferTimeout());
        int i13 = F;
        this.mbridgeVideoView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.n(this.f30551z, this.f30544s, this.f31487h, this.f30545t, getInnerPlacementId(), this.f31483d, i10, F, new p(this, null), this.f31485f.A(), this.f31495p, this.f31485f.C()));
        this.mbridgeVideoView.setShowingTransparent(this.f30531g0);
        this.mbridgeVideoView.setAdSession(this.f30538n0);
        if (this.f31490k && ((i11 = this.f31492m) == com.mbridge.msdk.foundation.same.a.H || i11 == com.mbridge.msdk.foundation.same.a.I)) {
            this.mbridgeVideoView.setIVRewardEnable(i11, this.f31493n, this.f31494o);
            this.mbridgeVideoView.setDialogRole(getH5DialogRole());
        }
        this.S.setCampaign(this.f30544s);
        this.S.addOrderViewData(this.K);
        this.S.setUnitID(this.f31483d);
        this.S.setCloseDelayTime(getCloseBtnTime());
        this.S.setPlayCloseBtnTm(this.f31485f.u());
        this.S.setVideoInteractiveType(this.f31485f.D());
        this.S.setEndscreenType(this.f31485f.m());
        this.S.setVideoSkipTime(i13);
        this.S.setShowingTransparent(this.f30531g0);
        this.S.setJSFactory(this.f30551z);
        this.f30551z.getJSCommon().g(this.f31489j);
        if (this.f30544s.getPlayable_ads_without_video() == 2) {
            this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.h(this.f30544s, this.f30545t, this.f31487h, getInnerPlacementId(), this.f31483d, new n(this, null), this.f31485f.A(), this.f31495p));
            this.S.preLoadData(this.f30551z);
            this.S.showPlayableView();
        } else {
            this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.c(this.f30551z, this.f30544s, this.f31487h, this.f30545t, getInnerPlacementId(), this.f31483d, new m(this.f31482c, this.f30544s), this.f31485f.A(), this.f31495p));
            this.S.preLoadData(this.f30551z);
            this.mbridgeVideoView.preLoadData(this.f30551z);
        }
        if (this.f30531g0) {
            this.S.setMBridgeClickMiniCardViewTransparent();
        }
    }

    public void onBackPressed() {
        MBridgeContainerView mBridgeContainerView;
        MBridgeContainerView mBridgeContainerView2;
        MBridgeVideoView mBridgeVideoView;
        MBridgeVideoView mBridgeVideoView2;
        if (this.f30531g0 && (mBridgeVideoView2 = this.mbridgeVideoView) != null) {
            mBridgeVideoView2.notifyVideoClose();
            return;
        }
        CampaignEx campaignEx = this.f30544s;
        if (((campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f30544s.getRewardTemplateMode().f() == 5002010) || this.f30533i0) && (mBridgeVideoView = this.mbridgeVideoView) != null) {
            if (mBridgeVideoView.isMiniCardShowing()) {
                MBridgeContainerView mBridgeContainerView3 = this.S;
                if (mBridgeContainerView3 != null) {
                    mBridgeContainerView3.onMiniEndcardBackPress();
                    return;
                }
                return;
            }
            this.mbridgeVideoView.onBackPress();
        } else if (this.f30535k0 && (mBridgeContainerView2 = this.S) != null) {
            mBridgeContainerView2.onPlayableBackPress();
        } else {
            if (this.f30534j0 && (mBridgeContainerView = this.S) != null) {
                mBridgeContainerView.onEndcardBackPress();
            }
            if (getJSCommon().a()) {
                if (getJSContainerModule() == null || !getJSContainerModule().miniCardShowing()) {
                    getActivityProxy().e();
                }
            } else if (canBackPress()) {
                Activity activity = this.f31482c;
                if (activity != null && !this.f31495p && !this.f30536l0) {
                    this.f30536l0 = true;
                    activity.onBackPressed();
                }
            } else {
                p0.a(f30524s0, "onBackPressed can't excute");
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate() {
        k();
        try {
            A();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        this.f30536l0 = false;
        try {
            if (this.f31495p) {
                CampaignEx campaignEx = this.f30544s;
                if (campaignEx != null && campaignEx.isDynamicView()) {
                    this.f30546u = new com.mbridge.msdk.video.bt.module.orglistener.d(getContext(), this.f31490k, this.f31485f, this.f30544s, this.f30546u, getInnerPlacementId(), this.f31483d);
                } else {
                    this.f30546u = new com.mbridge.msdk.video.bt.module.orglistener.c(this.f30547v, this.f30550y);
                }
            } else {
                this.f30546u = new com.mbridge.msdk.video.bt.module.orglistener.d(getContext(), this.f31490k, this.f31485f, this.f30544s, this.f30546u, getInnerPlacementId(), this.f31483d);
            }
            registerErrorListener(new com.mbridge.msdk.video.bt.module.orglistener.e(this.M, this.f30546u));
            a(this.f31485f, this.f30544s);
            setShowingTransparent();
            int layoutID = getLayoutID();
            if (!h0.a(layoutID)) {
                b("layoutID not found");
                return;
            }
            View inflate = this.O.inflate(layoutID, (ViewGroup) null);
            this.f30542r = inflate;
            addView(inflate, getContentLayoutParams());
            x();
            if (!n()) {
                this.Q.onError("not found View IDS");
                Activity activity = this.f31482c;
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
            this.P = true;
            p();
        } catch (Throwable th2) {
            th2.printStackTrace();
            b("onCreate error" + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        if (this.C) {
            return;
        }
        this.C = true;
        super.onDestroy();
        try {
            if (com.mbridge.msdk.util.b.a()) {
                setChinaDestroy();
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.releasePlayer();
            }
            WindVaneWebView windVaneWebView = this.R;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.R.clearWebView();
                this.R.release();
            }
            if (this.f30547v != null) {
                this.f30547v = null;
            }
            this.T.removeCallbacks(this.W);
            this.T.removeCallbacks(this.f30525a0);
            getJSCommon().release();
            if (this.f31490k) {
                com.mbridge.msdk.setting.h.b().g(this.f31483d);
            }
            if (!this.f30527c0) {
                r();
            }
            if (!this.f30530f0) {
                s();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = this.f30537m0;
            if (dVar != null) {
                dVar.d();
            }
            if (this.f30538n0 != null) {
                p0.b("omsdk", "tc onDestroy");
                this.f30538n0.removeAllFriendlyObstructions();
                this.f30538n0.finish();
                this.f30538n0 = null;
            }
            if (!this.f31495p) {
                if (isLoadSuccess()) {
                    this.T.postDelayed(new g(), 100L);
                } else {
                    Activity activity = this.f31482c;
                    if (activity != null) {
                        activity.finish();
                    }
                }
            }
            if (!this.f30530f0) {
                s();
            }
            com.mbridge.msdk.video.bt.component.d.c().a(this.f30550y);
        } catch (Throwable th2) {
            p0.a(f30524s0, th2.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onPause() {
        super.onPause();
        this.f30529e0 = true;
        try {
            getJSVideoModule().videoOperate(2);
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setOnPause();
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.onActivityPause();
            }
        } catch (Throwable th2) {
            p0.b(f30524s0, th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onResume() {
        Activity activity;
        super.onResume();
        t();
        try {
            if (this.mbridgeVideoView != null && !o() && !this.mbridgeVideoView.isMiniCardShowing() && !com.mbridge.msdk.foundation.feedback.b.f26979f) {
                this.mbridgeVideoView.setCover(false);
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.onActivityResume();
            }
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setOnResume();
            }
            if (this.f30529e0 && !o() && !com.mbridge.msdk.foundation.feedback.b.f26979f) {
                getJSVideoModule().videoOperate(1);
            }
            Activity activity2 = this.f31482c;
            if (activity2 != null) {
                u0.a(activity2.getWindow().getDecorView());
            }
            if (this.f30531g0 && this.f30532h0 && (activity = this.f31482c) != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            p0.b(f30524s0, th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onStop() {
        super.onStop();
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setCover(true);
            this.mbridgeVideoView.onActivityStop();
        }
    }

    public void receiveSuccess() {
        p0.a(f30524s0, "receiveSuccess ,start hybrid");
        this.T.removeCallbacks(this.f30525a0);
        this.T.postDelayed(this.f30541q0, 250L);
    }

    public void registerErrorListener(k kVar) {
        this.Q = kVar;
    }

    public void setAdEvents(AdEvents adEvents) {
        this.f30540p0 = adEvents;
        com.mbridge.msdk.video.signal.factory.b bVar = this.f30551z;
        if (bVar != null && bVar.getJSCommon() != null) {
            this.f30551z.getJSCommon().setAdEvents(adEvents);
        }
    }

    public void setAdSession(AdSession adSession) {
        this.f30538n0 = adSession;
        com.mbridge.msdk.video.signal.factory.b bVar = this.f30551z;
        if (bVar != null && bVar.getJSCommon() != null) {
            this.f30551z.getJSCommon().setAdSession(adSession);
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setAdSession(adSession);
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, int i10) {
        this.f30548w = aVar;
        this.f30549x = i10;
    }

    public void setCampOrderViewData(List<CampaignEx> list, int i10) {
        if (list != null) {
            this.K = list;
        }
        this.L = i10;
    }

    public void setCampaign(CampaignEx campaignEx) {
        this.f30544s = campaignEx;
        if (campaignEx != null) {
            com.mbridge.msdk.foundation.same.report.metrics.c b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(campaignEx.getCurrentLocalRid());
            this.M = b10;
            if (b10 == null) {
                this.M = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.M.i(campaignEx.getCurrentLocalRid());
            this.M.a(campaignEx);
            if (TextUtils.isEmpty(campaignEx.getCampaignUnitId()) && !TextUtils.isEmpty(this.f31483d)) {
                campaignEx.setCampaignUnitId(this.f31483d);
            }
            AppletsModel appletsModel = AppletModelManager.getInstance().get(campaignEx);
            if (appletsModel != null) {
                this.f30543r0 = appletsModel.isSupportWxScheme();
            }
            com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
            b11.a(campaignEx.getCampaignUnitId() + "_1", campaignEx);
        }
    }

    public void setCampaignDownLoadTask(com.mbridge.msdk.videocommon.download.a aVar) {
        this.f30545t = aVar;
    }

    public void setCampaignExpired(boolean z10) {
        try {
            CampaignEx campaignEx = this.f30544s;
            if (campaignEx != null) {
                if (z10) {
                    campaignEx.setSpareOfferFlag(1);
                    if (com.mbridge.msdk.util.b.a()) {
                        if (this.f31491l) {
                            this.f30544s.setCbt(0);
                        } else {
                            com.mbridge.msdk.videocommon.setting.c cVar = this.f31485f;
                            if (cVar != null) {
                                if (cVar.A() == 1) {
                                    this.f30544s.setCbt(1);
                                } else {
                                    this.f30544s.setCbt(0);
                                }
                            }
                        }
                    } else {
                        com.mbridge.msdk.videocommon.setting.c cVar2 = this.f31485f;
                        if (cVar2 != null) {
                            if (cVar2.A() == 1) {
                                this.f30544s.setCbt(1);
                            } else {
                                this.f30544s.setCbt(0);
                            }
                        }
                    }
                } else {
                    campaignEx.setSpareOfferFlag(0);
                    this.f30544s.setCbt(0);
                }
            }
        } catch (Exception e10) {
            p0.b(f30524s0, e10.getMessage());
        }
    }

    public void setDeveloperExtraData(String str) {
        this.J = str;
    }

    public void setInstanceId(String str) {
        this.f30550y = str;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f30551z = bVar;
    }

    public void setMBridgeTempCallback(com.mbridge.msdk.video.bt.module.listener.b bVar) {
        this.f30547v = bVar;
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        layoutParams.height = -1;
        layoutParams.width = -1;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13, int i14) {
        this.D = i10;
        this.E = i11;
        this.F = i12;
        this.G = i13;
        this.H = i14;
        String a10 = c0.a(i10, i11, i12, i13, i14);
        this.I = a10;
        p0.b(f30524s0, a10);
        if (getJSCommon() != null && !TextUtils.isEmpty(this.I)) {
            getJSCommon().a(this.I);
            if (this.R != null && !TextUtils.isEmpty(this.I)) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.R, "oncutoutfetched", Base64.encodeToString(this.I.getBytes(), 0));
            }
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setNotchPadding(i11, i12, i13, i14);
        }
        MBridgeContainerView mBridgeContainerView = this.S;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.setNotchPadding(i10, i11, i12, i13, i14);
        }
    }

    public void setShowRewardListener(com.mbridge.msdk.video.bt.module.orglistener.h hVar) {
        this.f30546u = hVar;
    }

    public void setShowingTransparent() {
        Activity activity;
        boolean isShowingTransparent = getIsShowingTransparent();
        this.f30531g0 = isShowingTransparent;
        if (!isShowingTransparent) {
            int a10 = h0.a(getContext(), "mbridge_reward_theme", TtmlNode.TAG_STYLE);
            if (h0.a(a10) && (activity = this.f31482c) != null) {
                activity.setTheme(a10);
            }
        }
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.f30539o0 = mediaEvents;
        com.mbridge.msdk.video.signal.factory.b bVar = this.f30551z;
        if (bVar != null && bVar.getJSCommon() != null) {
            this.f30551z.getJSCommon().setVideoEvents(mediaEvents);
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setVideoEvents(mediaEvents);
        }
    }

    public void setWebViewFront(int i10) {
        this.V = i10;
    }

    public void superDefaultLoad(int i10, String str) {
        this.T.removeCallbacks(this.W);
        this.T.removeCallbacks(this.f30525a0);
        this.Q.a(true);
        WindVaneWebView windVaneWebView = this.R;
        if (windVaneWebView != null) {
            windVaneWebView.setVisibility(8);
        }
    }

    private void A() {
        AppletsModel appletsModel;
        if (this.f30544s == null) {
            return;
        }
        try {
            appletsModel = AppletModelManager.getInstance().get(this.f30544s);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            appletsModel = null;
        }
        if (appletsModel != null) {
            try {
                if (appletsModel.can(0)) {
                    appletsModel.setUserClick(false);
                    appletsModel.requestWxAppletsScheme(0, new l(this.f30544s));
                }
            } catch (Exception e11) {
                appletsModel.clearRequestState();
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void k() {
        if (this.f31485f == null) {
            this.f31485f = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31483d, this.f31490k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null && mBridgeVideoView.notifyListener != null) {
                eVar.a("notify_listener", 1);
                com.mbridge.msdk.video.module.listener.a aVar = this.mbridgeVideoView.notifyListener;
                if (aVar instanceof com.mbridge.msdk.video.module.listener.impl.n) {
                    eVar.a("listener_type", 1);
                } else if (aVar instanceof com.mbridge.msdk.video.module.listener.impl.m) {
                    eVar.a("listener_type", 2);
                } else {
                    eVar.a("listener_type", 3);
                }
            } else {
                eVar.a("notify_listener", 0);
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = this.M;
            if (cVar != null) {
                cVar.a("2000130", eVar);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (isLoadSuccess()) {
            this.f31482c.runOnUiThread(new a());
        }
    }

    private void q() {
        AdSession adSession = this.f30538n0;
        if (adSession != null) {
            try {
                MBridgeContainerView mBridgeContainerView = this.S;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                adSession.addFriendlyObstruction(mBridgeContainerView, friendlyObstructionPurpose, null);
                View view = this.f30526b0;
                if (view != null) {
                    this.f30538n0.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
                }
                WindVaneWebView windVaneWebView = this.R;
                if (windVaneWebView != null) {
                    this.f30538n0.addFriendlyObstruction(windVaneWebView, friendlyObstructionPurpose, null);
                }
                this.mbridgeVideoView.setVideoEvents(this.f30539o0);
                this.f30538n0.start();
                if (this.f30540p0 != null) {
                    VastProperties createVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
                    p0.a("omsdk", "bt:   adEvents.loaded");
                    this.f30540p0.loaded(createVastPropertiesForNonSkippableMedia);
                    this.f30540p0.impressionOccurred();
                }
            } catch (Exception e10) {
                p0.a("omsdk", e10.getMessage());
            }
        }
    }

    private void r() {
        CampaignEx campaignEx;
        int i10;
        boolean z10 = true;
        try {
            this.f30527c0 = true;
            CampaignEx campaignEx2 = this.f30544s;
            if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() == 2) {
                this.f30528d0 = true;
            }
            MediaEvents mediaEvents = this.f30539o0;
            if (mediaEvents != null && !this.f30528d0) {
                try {
                    mediaEvents.skipped();
                    this.f30539o0 = null;
                } catch (Exception e10) {
                    p0.a("omsdk", e10.getMessage());
                }
            }
            com.mbridge.msdk.video.bt.module.orglistener.h hVar = this.f30546u;
            if (hVar != null) {
                if (this.f31490k && ((i10 = this.f31492m) == com.mbridge.msdk.foundation.same.a.H || i10 == com.mbridge.msdk.foundation.same.a.I)) {
                    if (this.B != 1) {
                        z10 = false;
                    }
                    hVar.a(z10, this.A);
                }
                if (!this.f30528d0) {
                    this.f31487h.a(0);
                }
                this.M.a(this.f30544s);
                this.f30546u.a(this.M, this.f30528d0, this.f31487h);
            }
            this.T.removeCallbacks(this.f30541q0);
            if ((!this.f31490k && !this.f31495p) || ((campaignEx = this.f30544s) != null && campaignEx.isDynamicView())) {
                u();
            }
            if (!this.f31495p) {
                if (this.f31490k) {
                    com.mbridge.msdk.videocommon.a.b(287, this.f30544s);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f30544s);
                }
            }
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.release();
            }
        } catch (Throwable th2) {
            p0.b(f30524s0, th2.getMessage(), th2);
        }
    }

    private void s() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getContext());
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.f30544s.getRequestIdNotice(), this.f30544s.getId(), this.f31483d, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.f30544s.getId()), this.f30544s.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f30544s.getId());
            this.f30530f0 = true;
        }
    }

    private void t() {
        Runnable runnable;
        int i10 = this.U;
        if (i10 == -3) {
            runnable = this.W;
        } else {
            runnable = i10 == -4 ? this.f30525a0 : null;
        }
        if (runnable != null) {
            runnable.run();
            this.U = 0;
        }
    }

    private void u() {
        if (this.f30528d0) {
            if (com.mbridge.msdk.util.b.a() && checkChinaSendToServerDiff(this.f30546u)) {
                return;
            }
            p0.a(f30524s0, "sendToServerRewardInfo");
            com.mbridge.msdk.video.module.report.b.a(this.f30544s, this.f31487h, this.f31483d, this.f31486g, this.J);
        }
    }

    private void v() {
        getJSCommon().setAdEvents(this.f30540p0);
        getJSCommon().setAdSession(this.f30538n0);
        getJSCommon().setVideoEvents(this.f30539o0);
        getJSCommon().g(this.f31489j);
        getJSCommon().setUnitId(this.f31483d);
        getJSCommon().setRewardUnitSetting(this.f31485f);
        getJSCommon().a(new o(this, null));
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx != null) {
            if (campaignEx.isMraid() || this.f30544s.isActiveOm()) {
                com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(getContext());
                this.f30537m0 = dVar;
                dVar.c();
                this.f30537m0.a();
                this.f30537m0.a(new i());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("temp_container", getWidth() + TextureRenderKeys.KEY_IS_X + getHeight());
            if (this.R != null) {
                eVar.a("web_view", this.R.getWidth() + TextureRenderKeys.KEY_IS_X + this.R.getHeight());
            }
            if (this.mbridgeVideoView != null) {
                eVar.a("mbridge_video_view", this.mbridgeVideoView.getWidth() + TextureRenderKeys.KEY_IS_X + this.mbridgeVideoView.getHeight());
                if (this.mbridgeVideoView.mPlayerView != null) {
                    eVar.a("player_view", this.mbridgeVideoView.mPlayerView.getWidth() + TextureRenderKeys.KEY_IS_X + this.mbridgeVideoView.mPlayerView.getHeight());
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = this.M;
            if (cVar != null) {
                cVar.a("2000136", eVar);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (isLoadSuccess()) {
            this.f31482c.runOnUiThread(new j());
        }
    }

    protected boolean n() {
        this.R = findWindVaneWebView();
        MBridgeVideoView findMBridgeVideoView = findMBridgeVideoView();
        this.mbridgeVideoView = findMBridgeVideoView;
        findMBridgeVideoView.setVideoLayout(this.f30544s);
        this.mbridgeVideoView.setIsIV(this.f31490k);
        this.mbridgeVideoView.setUnitId(this.f31483d);
        this.mbridgeVideoView.setCamPlayOrderCallback(this.f30548w, this.K, this.f30549x, this.L);
        if (this.f31495p) {
            this.mbridgeVideoView.setNotchPadding(this.E, this.F, this.G, this.H);
        }
        MBridgeContainerView findMBridgeContainerView = findMBridgeContainerView();
        this.S = findMBridgeContainerView;
        if (this.f31495p) {
            findMBridgeContainerView.setNotchPadding(this.D, this.E, this.F, this.G, this.H);
        }
        if (r0.a().a("i_l_s_t_r_i", false)) {
            this.mbridgeVideoView.setPlayerViewAttachListener(new d());
        }
        this.mbridgeVideoView.setIPlayVideoViewLayoutCallBack(new e());
        return (this.mbridgeVideoView == null || this.S == null || !initViews()) ? false : true;
    }

    protected boolean o() {
        if (this.mbridgeVideoView != null) {
            return com.mbridge.msdk.util.b.a() ? this.mbridgeVideoView.isShowingAlertView() || checkChinaShowingAlertViewState() || this.mbridgeVideoView.isRewardPopViewShowing() : this.mbridgeVideoView.isShowingAlertView() || this.mbridgeVideoView.isRewardPopViewShowing();
        }
        return false;
    }

    protected void p() {
        ViewGroup viewGroup;
        List<CampaignEx> list;
        WindVaneWebView windVaneWebView = this.R;
        CampaignEx campaignEx = this.f30544s;
        if (campaignEx != null) {
            a1.a(windVaneWebView, campaignEx.getLocalRequestId(), this.f30544s.getLocalAllowTrackClick());
        }
        this.f30551z = new com.mbridge.msdk.video.signal.factory.b(this.f31482c, windVaneWebView, this.mbridgeVideoView, this.S, this.f30544s, new o(this, null));
        CampaignEx campaignEx2 = this.f30544s;
        if (campaignEx2 != null && campaignEx2.getDynamicTempCode() == 5 && (list = this.K) != null) {
            this.f30551z.a(list);
        }
        registerJsFactory(this.f30551z);
        com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
        b10.a(this.f31483d + "_1", new h());
        q();
        if (windVaneWebView != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.f30542r.findViewById(h0.a(getContext(), "mbridge_video_templete_webview_parent", "id"));
            windVaneWebView.setApiManagerJSFactory(this.f30551z);
            if (windVaneWebView.getParent() != null) {
                defaultLoad(0, "preload template webview is null or load error");
                return;
            }
            if (windVaneWebView.getObject() instanceof com.mbridge.msdk.video.signal.impl.k) {
                v();
                getJSContainerModule().readyStatus(((com.mbridge.msdk.video.signal.impl.k) windVaneWebView.getObject()).v());
                z();
                ((com.mbridge.msdk.video.signal.impl.k) windVaneWebView.getObject()).f31525m.onInitSuccess();
                if (this.f31495p) {
                    getJSCommon().setWebViewFront(this.V);
                }
            }
            if (getJSCommon().b() == 1 && (viewGroup = (ViewGroup) this.f30542r.findViewById(h0.a(getContext(), "mbridge_video_templete_webview_parent", "id"))) != null) {
                ((ViewGroup) this.f30542r).removeView(viewGroup);
                ((ViewGroup) this.f30542r).addView(viewGroup, 1);
            }
            viewGroup2.addView(windVaneWebView, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        defaultLoad(0, "preload template webview is null or load error");
    }

    protected void x() {
        if (this.N) {
            setMatchParent();
        }
    }

    protected void z() {
        int g10;
        int f10;
        try {
            if (this.R != null) {
                int i10 = getResources().getConfiguration().orientation;
                if (getIsShowingTransparent()) {
                    g10 = u0.i(getContext());
                    f10 = u0.h(getContext());
                    if (com.mbridge.msdk.foundation.tools.e.a(getContext())) {
                        int c10 = u0.c(getContext());
                        if (i10 == 2) {
                            g10 += c10;
                        } else {
                            f10 += c10;
                        }
                    }
                } else {
                    g10 = u0.g(getContext());
                    f10 = u0.f(getContext());
                }
                int b10 = this.f30544s.getRewardTemplateMode().b();
                if (a(this.f30544s) == 1) {
                    b10 = i10;
                }
                getJSNotifyProxy().a(i10, b10, g10, f10);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(getContext()));
                try {
                    if (this.f31487h != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.f31487h.c());
                        jSONObject2.put("amount", this.f31487h.a());
                        jSONObject2.put("id", this.f31488i);
                        jSONObject.put(VungleConstants.KEY_USER_ID, this.f31486g);
                        jSONObject.put(AdmobPreloadConfig.REWARD, jSONObject2);
                        jSONObject.put("playVideoMute", this.f31489j);
                        jSONObject.put(GearStrategyConsts.EV_EXTRA_INFO, this.J);
                    }
                } catch (JSONException e10) {
                    p0.a(f30524s0, e10.getMessage());
                } catch (Exception e11) {
                    p0.a(f30524s0, e11.getMessage());
                }
                String jSONObject3 = jSONObject.toString();
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.f30544s, eVar);
                getJSNotifyProxy().a(jSONObject3);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.R, "oncutoutfetched", Base64.encodeToString(this.I.getBytes(), 0));
                getJSCommon().b(true);
                if (com.mbridge.msdk.util.b.a()) {
                    setChinaCallBackStatus(this.R);
                }
                loadModuleDatas();
                this.T.postDelayed(this.W, 2000L);
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                e12.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    protected void b(String str) {
        com.mbridge.msdk.video.bt.module.orglistener.h hVar = this.f30546u;
        if (hVar != null) {
            hVar.a(this.M, str);
        }
        super.b(str);
    }

    private int a(int i10, int i11) {
        List<CampaignEx> list;
        if (i10 >= 0 && (list = this.K) != null && list.size() != 0 && i11 > 1) {
            int i12 = 0;
            for (int i13 = 0; i13 < i11 - 1; i13++) {
                if (this.K.get(i13) != null) {
                    i12 += this.K.get(i13).getVideoLength();
                }
            }
            if (i10 > i12) {
                return i10 - i12;
            }
            return 0;
        }
        return i10;
    }

    private void b(int i10, String str) {
        try {
            com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
            nVar.j("2000037");
            nVar.h("code=" + i10 + ",desc=" + str);
            CampaignEx campaignEx = this.f30544s;
            nVar.t((campaignEx == null || campaignEx.getRewardTemplateMode() == null) ? "" : this.f30544s.getRewardTemplateMode().e());
            nVar.u(this.f31483d);
            CampaignEx campaignEx2 = this.f30544s;
            nVar.b(campaignEx2 != null ? campaignEx2.getId() : "");
            CampaignEx campaignEx3 = this.f30544s;
            if (campaignEx3 != null && !TextUtils.isEmpty(campaignEx3.getRequestId())) {
                nVar.n(this.f30544s.getRequestId());
            }
            CampaignEx campaignEx4 = this.f30544s;
            if (campaignEx4 != null && !TextUtils.isEmpty(campaignEx4.getRequestIdNotice())) {
                nVar.o(this.f30544s.getRequestIdNotice());
            }
            int s10 = l0.s(getContext());
            nVar.c(s10);
            nVar.l(l0.a(getContext(), s10));
            com.mbridge.msdk.foundation.same.report.o.i(nVar);
        } catch (Throwable th2) {
            p0.b(f30524s0, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class h implements com.mbridge.msdk.foundation.feedback.a {
        h() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            MBTempContainer.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBTempContainer.f30524s0, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            MBTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBTempContainer.f30524s0, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            MBTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(MBTempContainer.f30524s0, th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    public void preload() {
    }

    public void setMediaPlayerUrl(String str) {
    }

    public MBTempContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30549x = 1;
        this.f30550y = "";
        this.A = com.mbridge.msdk.foundation.same.a.F;
        this.C = false;
        this.I = "";
        this.K = new ArrayList();
        this.L = 0;
        this.N = false;
        this.P = false;
        this.Q = new k.a();
        this.T = new Handler();
        this.U = 0;
        this.V = 0;
        this.W = new b();
        this.f30525a0 = new c();
        this.f30527c0 = false;
        this.f30528d0 = false;
        this.f30529e0 = false;
        this.f30531g0 = false;
        this.f30532h0 = false;
        this.f30533i0 = false;
        this.f30534j0 = false;
        this.f30535k0 = false;
        this.f30536l0 = false;
        this.f30538n0 = null;
        this.f30539o0 = null;
        this.f30540p0 = null;
        this.f30541q0 = new f();
        this.f30543r0 = false;
        init(context);
    }
}
