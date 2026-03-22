package com.mbridge.msdk.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.vodsetting.FetcherListener;
import com.bytedance.vodsetting.Module;
import com.google.ads.mediation.vungle.VungleConstants;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.iab.omid.library.mmadbridge.adsession.media.VastProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;
import com.mbridge.msdk.video.signal.impl.a;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.widget.FeedBackButton;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeBTContainer extends AbstractJSContainer implements com.mbridge.msdk.video.signal.c {
    private static final String V = "MBridgeBTContainer";
    private boolean A;
    private boolean B;
    private String C;
    private boolean D;
    private List<CampaignEx> E;
    private List<com.mbridge.msdk.videocommon.download.a> F;
    private com.mbridge.msdk.video.bt.module.listener.a G;
    private h H;
    private h I;
    private com.mbridge.msdk.video.bt.module.listener.b J;
    private String K;
    private String L;
    private String M;
    private boolean N;
    private int O;
    private String P;
    private com.mbridge.msdk.video.dynview.listener.d Q;
    private com.mbridge.msdk.foundation.same.report.metrics.c R;
    private AdSession S;
    private MediaEvents T;
    private AdEvents U;

    /* renamed from: r  reason: collision with root package name */
    private int f30568r;

    /* renamed from: s  reason: collision with root package name */
    private int f30569s;

    /* renamed from: t  reason: collision with root package name */
    private FrameLayout f30570t;

    /* renamed from: u  reason: collision with root package name */
    private MBridgeBTLayout f30571u;

    /* renamed from: v  reason: collision with root package name */
    private WindVaneWebView f30572v;

    /* renamed from: w  reason: collision with root package name */
    private LayoutInflater f30573w;

    /* renamed from: x  reason: collision with root package name */
    private Context f30574x;

    /* renamed from: y  reason: collision with root package name */
    private TextView f30575y;

    /* renamed from: z  reason: collision with root package name */
    private ImageView f30576z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeBTContainer.this.onAdClose();
        }
    }

    /* loaded from: classes6.dex */
    private static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private List<CampaignEx> f30581a;

        /* renamed from: b  reason: collision with root package name */
        private Context f30582b;

        /* renamed from: c  reason: collision with root package name */
        private String f30583c;

        /* renamed from: d  reason: collision with root package name */
        private String f30584d;

        public e(List<CampaignEx> list, Context context, String str, String str2) {
            this.f30581a = list;
            this.f30582b = context;
            this.f30583c = str;
            this.f30584d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            List<CampaignEx> list = this.f30581a;
            if (list != null && list.size() > 0) {
                try {
                    com.mbridge.msdk.foundation.db.e.a(g.a(this.f30582b)).a(this.f30583c, this.f30581a);
                    com.mbridge.msdk.videocommon.cache.a.a().b(this.f30584d, this.f30581a.get(0).getAdType());
                } catch (Exception unused) {
                    p0.a(MBridgeBTContainer.V, "remove campaign failed");
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    private class f extends a.C0454a {
        private f() {
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(boolean z10) {
            super.a(z10);
            if (MBridgeBTContainer.this.T != null) {
                try {
                    MBridgeBTContainer.this.T.adUserInteraction(InteractionType.CLICK);
                    p0.a("omsdk", "btc adUserInteraction click");
                } catch (Exception e10) {
                    p0.a("omsdk", e10.getMessage());
                }
            }
            MBridgeBTContainer.this.I.a(z10, ((AbstractJSContainer) MBridgeBTContainer.this).f31484e, ((AbstractJSContainer) MBridgeBTContainer.this).f31483d);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            super.onFinishRedirection(campaign, str);
            t0.a(campaign, MBridgeBTContainer.this.f30570t);
            if (campaign != null && (campaign instanceof CampaignEx)) {
                try {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    String optString = new JSONObject(MBridgeBTContainer.this.getJSVideoModule().getCurrentProgress()).optString("progress", "");
                    if (campaignEx.getLinkType() == 3 && campaignEx.getEndcard_click_result() == 2 && optString.equals("1.0") && ((AbstractJSContainer) MBridgeBTContainer.this).f31482c != null) {
                        if (MBridgeBTContainer.this.B) {
                            MBridgeBTContainer.this.onAdClose();
                        } else {
                            ((AbstractJSContainer) MBridgeBTContainer.this).f31482c.finish();
                        }
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void onInitSuccess() {
            super.onInitSuccess();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            super.onRedirectionFailed(campaign, str);
            t0.a(campaign, MBridgeBTContainer.this.f30570t);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            super.onStartRedirection(campaign, str);
            t0.b(campaign, MBridgeBTContainer.this.f30570t);
        }

        /* synthetic */ f(MBridgeBTContainer mBridgeBTContainer, a aVar) {
            this();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(int i10, String str) {
            super.a(i10, str);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0454a, com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a() {
            super.a();
        }
    }

    public MBridgeBTContainer(Context context) {
        super(context);
        this.f30568r = 0;
        this.f30569s = 1;
        this.A = false;
        this.B = true;
        this.D = false;
        this.S = null;
        this.T = null;
        this.U = null;
        init(context);
    }

    public void addNativeCloseButtonWhenWebViewCrash() {
        try {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            int a10 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 48.0f);
            int a11 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a10, a10);
            layoutParams.setMargins(a11, a11, a11, a11);
            layoutParams.gravity = 5;
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_close", "drawable"));
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setOnClickListener(new d());
            addView(imageView);
        } catch (Throwable th2) {
            p0.b(V, th2.getMessage());
        }
    }

    public void appendSubView(MBridgeBTContainer mBridgeBTContainer, MBTempContainer mBTempContainer, JSONObject jSONObject) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (jSONObject != null) {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                int optInt = jSONObject.optInt(TtmlNode.LEFT, FetcherListener.ErrorOverRetryTimesCode);
                int optInt2 = jSONObject.optInt("top", FetcherListener.ErrorOverRetryTimesCode);
                int optInt3 = jSONObject.optInt(TtmlNode.RIGHT, FetcherListener.ErrorOverRetryTimesCode);
                int optInt4 = jSONObject.optInt("bottom", FetcherListener.ErrorOverRetryTimesCode);
                if (optInt != -999 && d10 != null) {
                    layoutParams.leftMargin = u0.a(d10, optInt);
                }
                if (optInt2 != -999 && d10 != null) {
                    layoutParams.topMargin = u0.a(d10, optInt2);
                }
                if (optInt3 != -999 && d10 != null) {
                    layoutParams.rightMargin = u0.a(d10, optInt3);
                }
                if (optInt4 != -999 && d10 != null) {
                    layoutParams.bottomMargin = u0.a(d10, optInt4);
                }
                int optInt5 = jSONObject.optInt("width");
                int optInt6 = jSONObject.optInt("height");
                if (optInt5 > 0) {
                    layoutParams.width = optInt5;
                }
                if (optInt6 > 0) {
                    layoutParams.height = optInt6;
                }
            }
            mBridgeBTContainer.addView(mBTempContainer, layoutParams);
            mBTempContainer.setActivity(this.f31482c);
            mBTempContainer.setMute(this.f31489j);
            mBTempContainer.setBidCampaign(this.A);
            mBTempContainer.setIV(this.f31490k);
            mBTempContainer.setBigOffer(this.B);
            mBTempContainer.setIVRewardEnable(this.f31492m, this.f31493n, this.f31494o);
            mBTempContainer.setShowRewardListener(this.I);
            mBTempContainer.setCampaignDownLoadTask(c(mBTempContainer.getCampaign()));
            mBTempContainer.setMBridgeTempCallback(k());
            mBTempContainer.setWebViewFront(getJSCommon().b());
            mBTempContainer.init(this.f30574x);
            mBTempContainer.onCreate();
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f30572v != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, this.f30568r);
                jSONObject2.put("id", this.C);
                jSONObject2.put(CallAppDataKey.KEY_TRACKING_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30572v, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.f30572v, "broadcast", this.C);
            }
        }
    }

    public int findID(String str) {
        return h0.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return h0.a(getContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public AdEvents getAdEvents() {
        return this.U;
    }

    public AdSession getAdSession() {
        return this.S;
    }

    public List<CampaignEx> getCampaigns() {
        return this.E;
    }

    public MediaEvents getVideoEvents() {
        return this.T;
    }

    public void init(Context context) {
        this.f30574x = context;
        this.f30573w = LayoutInflater.from(context);
    }

    public void onAdClose() {
        Activity activity = this.f31482c;
        if (activity != null) {
            activity.finish();
        }
    }

    public void onBackPressed() {
        try {
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBTempContainer) {
                        ((MBTempContainer) view).onBackPressed();
                    } else if (view instanceof MBridgeBTWebView) {
                        ((MBridgeBTWebView) view).onBackPressed();
                    } else if (view instanceof MBridgeBTLayout) {
                        ((MBridgeBTLayout) view).onBackPressed();
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        try {
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBTempContainer) {
                        ((MBTempContainer) view).onConfigurationChanged(configuration);
                    } else if (view instanceof MBridgeBTWebView) {
                        ((MBridgeBTWebView) view).onConfigurationChanged(configuration);
                    } else if (view instanceof MBridgeBTLayout) {
                        ((MBridgeBTLayout) view).onConfigurationChanged(configuration);
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    public void onCreate(boolean z10) {
        String str;
        CampaignEx campaignEx;
        try {
            int findLayout = findLayout("mbridge_bt_container");
            if (!h0.a(findLayout)) {
                b("mbridge_bt_container layout null");
                return;
            }
            FrameLayout frameLayout = (FrameLayout) this.f30573w.inflate(findLayout, this);
            this.f30570t = frameLayout;
            if (frameLayout == null) {
                b("ViewIds null");
                return;
            }
            this.L = "";
            List<CampaignEx> list = this.E;
            if (list == null || list.size() <= 0) {
                str = "";
            } else {
                CampaignEx campaignEx2 = this.E.get(0);
                str = campaignEx2.getCMPTEntryUrl();
                this.L = campaignEx2.getRequestId();
                this.M = campaignEx2.getCurrentLocalRid();
            }
            this.f30572v = c(this.f31483d + "_" + this.L + "_" + str);
            com.mbridge.msdk.videocommon.a.e(this.f31483d + "_" + this.L + "_" + str);
            l();
            WindVaneWebView windVaneWebView = this.f30572v;
            if (windVaneWebView != null) {
                com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this.f31482c, this, windVaneWebView);
                registerJsFactory(bVar);
                this.f30572v.setApiManagerJSFactory(bVar);
                if (this.f30572v.getParent() != null) {
                    b("preload template webview is null or load error");
                    return;
                }
                RelativeLayout.LayoutParams layoutParams = null;
                if (this.f30572v.getObject() instanceof k) {
                    bVar.a((k) this.f30572v.getObject());
                    if (this.f30572v != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(getContext()));
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("name", this.f31487h.c());
                            jSONObject2.put("amount", this.f31487h.a());
                            jSONObject2.put("id", this.f31488i);
                            jSONObject.put(VungleConstants.KEY_USER_ID, this.f31486g);
                            jSONObject.put(AdmobPreloadConfig.REWARD, jSONObject2);
                            jSONObject.put("playVideoMute", this.f31489j);
                            jSONObject.put(GearStrategyConsts.EV_EXTRA_INFO, this.P);
                        } catch (JSONException e10) {
                            p0.a(V, e10.getMessage());
                        } catch (Exception e11) {
                            p0.a(V, e11.getMessage());
                        }
                        this.I = new com.mbridge.msdk.video.bt.module.orglistener.c(k(), "");
                        Object jSONObject3 = jSONObject.toString();
                        try {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            eVar.a("type", 1);
                            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.E, eVar);
                        } catch (Exception unused) {
                        }
                        getJSNotifyProxy().a(jSONObject3);
                        getJSCommon().b(true);
                        getJSCommon().a(new f(this, null));
                    }
                    ((com.mbridge.msdk.video.signal.impl.d) getJSCommon()).f31525m.onInitSuccess();
                }
                this.f30572v.setBackgroundColor(0);
                LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
                if (b10 != null && b10.containsKey(this.C)) {
                    View view = b10.get(this.C);
                    if (view instanceof MBridgeBTLayout) {
                        MBridgeBTLayout mBridgeBTLayout = (MBridgeBTLayout) view;
                        this.f30571u = mBridgeBTLayout;
                        try {
                            WindVaneWebView windVaneWebView2 = (WindVaneWebView) mBridgeBTLayout.getBtWebView();
                            k kVar = (k) windVaneWebView2.getObject();
                            kVar.setAdEvents(this.U);
                            kVar.setVideoEvents(this.T);
                            kVar.setAdSession(this.S);
                            windVaneWebView2.setObject(kVar);
                        } catch (Exception e12) {
                            p0.b(V, e12.getMessage());
                        }
                        com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
                        b11.a(this.f31483d + "_1", new a());
                        this.f30571u.addView(this.f30572v, 0, new FrameLayout.LayoutParams(-1, -1));
                        com.mbridge.msdk.foundation.feedback.b b12 = com.mbridge.msdk.foundation.feedback.b.b();
                        b12.d(this.f31483d + "_2");
                        com.mbridge.msdk.foundation.feedback.b b13 = com.mbridge.msdk.foundation.feedback.b.b();
                        FeedBackButton a10 = b13.a(this.f31483d + "_1");
                        if (com.mbridge.msdk.foundation.feedback.b.b().a() && a10 != null) {
                            try {
                                layoutParams = (RelativeLayout.LayoutParams) a10.getLayoutParams();
                            } catch (Exception e13) {
                                e13.printStackTrace();
                            }
                            if (layoutParams == null) {
                                layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f26978e, com.mbridge.msdk.foundation.feedback.b.f26977d);
                            }
                            layoutParams.topMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                            layoutParams.leftMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                            a10.setLayoutParams(layoutParams);
                            ViewGroup viewGroup = (ViewGroup) a10.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(a10);
                            }
                            this.f30571u.addView(a10);
                        }
                        this.f30571u.setTag(this.C);
                        b10.put(this.C, this.f30571u);
                        Iterator<View> it = b10.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            View next = it.next();
                            if (next instanceof MBridgeBTRootLayout) {
                                MBridgeBTRootLayout mBridgeBTRootLayout = (MBridgeBTRootLayout) next;
                                this.K = mBridgeBTRootLayout.getInstanceId();
                                this.f30570t.addView(mBridgeBTRootLayout, new FrameLayout.LayoutParams(-1, -1));
                                break;
                            }
                        }
                        b10.remove(this.K);
                        b10.put(this.K, this);
                    }
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f31483d, this.f31489j);
                    com.mbridge.msdk.video.bt.component.d.c().d(this.C, this.L);
                    com.mbridge.msdk.video.bt.component.d.c().d(this.K, this.L);
                    com.mbridge.msdk.video.bt.component.d c10 = com.mbridge.msdk.video.bt.component.d.c();
                    c10.a(this.f31483d + "_" + this.L, this.f31482c);
                    com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(this.E, getContext().getApplicationContext(), this.f31483d, this.f31484e));
                    List<CampaignEx> list2 = this.E;
                    if (list2 != null && list2.size() > 0) {
                        a(this.f31485f, this.E.get(0));
                        return;
                    }
                    return;
                }
                b("big template webviewLayout is null");
                return;
            }
            List<CampaignEx> list3 = this.E;
            if (list3 != null && list3.size() > 0 && (campaignEx = this.E.get(0)) != null && (z10 || campaignEx.isDynamicView())) {
                a(this.f30574x);
            } else {
                b("big template webview is null");
            }
        } catch (Throwable th2) {
            b("onCreate exception " + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        if (this.D) {
            return;
        }
        this.D = true;
        if (this.S != null) {
            p0.b("omsdk", "btc onDestroy");
            this.S.finish();
        }
        super.onDestroy();
        com.mbridge.msdk.video.bt.component.d c10 = com.mbridge.msdk.video.bt.component.d.c();
        c10.h(this.f31483d + "_" + this.L);
        try {
            WindVaneWebView windVaneWebView = this.f30572v;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.f30572v.clearWebView();
                this.f30572v.release();
            }
            if (this.J != null) {
                this.J = null;
            }
            if (this.G != null) {
                this.G = null;
            }
            if (this.f30574x != null) {
                this.f30574x = null;
            }
            List<CampaignEx> list = this.E;
            if (list != null && list.size() > 0) {
                for (CampaignEx campaignEx : this.E) {
                    if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                        com.mbridge.msdk.videocommon.a.e(this.f31483d + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
                com.mbridge.msdk.video.dynview.energize.a.a().d();
            }
            com.mbridge.msdk.video.bt.component.d.c().a(this.C);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L).remove(this.C);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L).remove(this.K);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L).clear();
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onPause() {
        CampaignEx campaignEx;
        super.onPause();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().b();
        }
        try {
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTVideoView) {
                        ((MBridgeBTVideoView) view).onPause();
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onResume() {
        CampaignEx campaignEx;
        super.onResume();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().c();
        }
        if (com.mbridge.msdk.foundation.feedback.b.f26979f) {
            return;
        }
        try {
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTVideoView) {
                        ((MBridgeBTVideoView) view).onResume();
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onStop() {
        CampaignEx campaignEx;
        super.onStop();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().d();
        }
        try {
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTVideoView) {
                        ((MBridgeBTVideoView) view).onStop();
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void reactDeveloper(Object obj, String str) {
        JSONObject jSONObject;
        int i10;
        if (this.G != null && !TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject2 = new JSONObject(str);
                int optInt = jSONObject2.optInt("type");
                String optString = jSONObject2.optString("unitId", getUnitId());
                String optString2 = jSONObject2.optString(MBridgeConstans.PLACEMENT_ID, getPlacementId());
                JSONObject optJSONObject = jSONObject2.optJSONObject("data");
                CampaignEx campaignEx = this.E.get(0);
                boolean z10 = true;
                if (optInt == 1 && optJSONObject != null) {
                    boolean optBoolean = optJSONObject.optBoolean("expired");
                    if (campaignEx != null) {
                        if (optBoolean) {
                            campaignEx.setSpareOfferFlag(1);
                        } else {
                            campaignEx.setSpareOfferFlag(0);
                        }
                    }
                }
                setCBT(campaignEx);
                JSONObject jSONObject3 = null;
                switch (optInt) {
                    case 1:
                        this.G.a();
                        this.G.a(2, optString2, optString);
                        a(obj);
                        return;
                    case 2:
                        if (optJSONObject != null) {
                            jSONObject3 = optJSONObject.optJSONObject("error");
                        }
                        String str2 = "";
                        if (jSONObject3 != null) {
                            str2 = jSONObject3.optString("msg");
                        }
                        this.G.a(str2);
                        this.G.a(4, optString2, optString);
                        a(obj);
                        return;
                    case 3:
                        this.G.b(optString2, optString);
                        this.G.a(5, optString2, optString);
                        a(obj);
                        return;
                    case 4:
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("type", 2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000147", this.E, eVar);
                        this.G.a(optString2, optString);
                        this.G.a(6, optString2, optString);
                        a(obj);
                        return;
                    case 5:
                        this.G.a(jSONObject2.optBoolean("isAutoClick"), optString2, optString);
                        a(obj);
                        return;
                    case 6:
                        if (optJSONObject != null) {
                            if (optJSONObject.optInt("convert") != 1) {
                                z10 = false;
                            }
                            jSONObject = optJSONObject.optJSONObject(AdmobPreloadConfig.REWARD);
                            String optString3 = optJSONObject.optString(GearStrategyConsts.EV_EXTRA_INFO);
                            if (!TextUtils.isEmpty(optString3)) {
                                this.P = optString3;
                            }
                        } else {
                            z10 = false;
                            jSONObject = null;
                        }
                        CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject.optJSONObject(MBInterstitialActivity.INTENT_CAMAPIGN));
                        com.mbridge.msdk.videocommon.entity.c a10 = com.mbridge.msdk.videocommon.entity.c.a(jSONObject);
                        if (a10 == null) {
                            a10 = this.f31487h;
                        }
                        this.G.a(7, optString2, optString);
                        try {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            eVar2.a("type", 2);
                            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                e10.printStackTrace();
                            }
                        }
                        if (this.f31490k && ((i10 = this.f31492m) == com.mbridge.msdk.foundation.same.a.H || i10 == com.mbridge.msdk.foundation.same.a.I)) {
                            this.G.a(this.N, this.O);
                        }
                        if (!z10) {
                            a10.a(0);
                            p0.a("omsdk", "bt videoEvents :" + this.T);
                            MediaEvents mediaEvents = this.T;
                            if (mediaEvents != null) {
                                try {
                                    mediaEvents.skipped();
                                    this.T = null;
                                } catch (Exception e11) {
                                    p0.a("omsdk", e11.getMessage());
                                }
                            }
                        }
                        this.G.a(z10, a10);
                        p0.a(V, "sendToServerRewardInfo");
                        if (!this.f31490k && z10) {
                            if (parseCampaignWithBackData != null) {
                                com.mbridge.msdk.video.module.report.b.a(parseCampaignWithBackData, a10, optString, this.f31486g, this.P);
                            } else {
                                com.mbridge.msdk.video.module.report.b.a(campaignEx, a10, optString, this.f31486g, this.P);
                            }
                        }
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", parseCampaignWithBackData);
                        a(obj);
                        return;
                    default:
                        a(obj);
                        return;
                }
            } catch (JSONException e12) {
                a(obj, e12.getMessage());
                p0.a(V, e12.getMessage());
                return;
            }
        }
        a(obj, "listener is null");
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void reportUrls(Object obj, String str) {
        boolean z10;
        boolean z11;
        p0.a(V, "reportUrls:" + str);
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    int optInt = jSONObject.optInt("type");
                    String a10 = u0.a(jSONObject.optString("url"), "&tun=", l0.y() + "");
                    int optInt2 = jSONObject.optInt("report");
                    CampaignEx campaignEx = null;
                    if (optInt2 == 0) {
                        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list = this.E;
                        if (list != null) {
                            campaignEx = list.get(0);
                        }
                        CampaignEx campaignEx2 = campaignEx;
                        if (optInt != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        com.mbridge.msdk.click.a.a(d10, campaignEx2, "", a10, false, z11);
                    } else {
                        Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list2 = this.E;
                        if (list2 != null) {
                            campaignEx = list2.get(0);
                        }
                        CampaignEx campaignEx3 = campaignEx;
                        if (optInt != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        com.mbridge.msdk.click.a.a(d11, campaignEx3, "", a10, false, z10, optInt2);
                    }
                }
                b(obj, "");
            } catch (Throwable th2) {
                p0.b(V, "reportUrls", th2);
            }
        }
    }

    public void setAdEvents(AdEvents adEvents) {
        this.U = adEvents;
    }

    public void setAdSession(AdSession adSession) {
        this.S = adSession;
    }

    public void setBTContainerCallback(com.mbridge.msdk.video.bt.module.listener.a aVar) {
        this.G = aVar;
    }

    public void setCBT(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getSpareOfferFlag() == 1) {
                com.mbridge.msdk.videocommon.setting.c cVar = this.f31485f;
                if (cVar != null) {
                    if (cVar.A() == 1) {
                        campaignEx.setCbt(1);
                        return;
                    } else {
                        campaignEx.setCbt(0);
                        return;
                    }
                }
                return;
            }
            campaignEx.setCbt(0);
        }
    }

    public void setCampaignDownLoadTasks(List<com.mbridge.msdk.videocommon.download.a> list) {
        this.F = list;
    }

    public void setCampaigns(List<CampaignEx> list) {
        CampaignEx campaignEx;
        this.E = list;
        String str = "";
        if (list != null) {
            try {
                if (list.size() > 0 && (campaignEx = list.get(0)) != null) {
                    str = campaignEx.getCurrentLocalRid();
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            this.R = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(str);
        }
        if (this.R == null) {
            this.R = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        this.R.i(str);
        this.R.b(list);
    }

    public void setChoiceOneCallback(com.mbridge.msdk.video.dynview.listener.d dVar) {
        this.Q = dVar;
    }

    public void setDeveloperExtraData(String str) {
        this.P = str;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f31496q = bVar;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13, int i14) {
        try {
            String a10 = c0.a(i10, i11, i12, i13, i14);
            p0.b(V, a10);
            WindVaneWebView windVaneWebView = this.f30572v;
            if (windVaneWebView != null && (windVaneWebView.getObject() instanceof k) && !TextUtils.isEmpty(a10)) {
                ((k) this.f30572v.getObject()).a(a10);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30572v, "oncutoutfetched", Base64.encodeToString(a10.getBytes(), 0));
            }
            a(i11, i13, i12, i14);
            com.mbridge.msdk.video.bt.component.d.c().a(i10, i11, i12, i13, i14);
            LinkedHashMap<String, View> b10 = com.mbridge.msdk.video.bt.component.d.c().b(this.f31483d, this.L);
            if (b10 != null && b10.size() > 0) {
                for (View view : b10.values()) {
                    if (view instanceof MBridgeBTVideoView) {
                        ((MBridgeBTVideoView) view).setNotchPadding(i11, i12, i13, i14);
                    }
                    if (view instanceof MBTempContainer) {
                        ((MBTempContainer) view).setNotchPadding(i10, i11, i12, i13, i14);
                    }
                    if ((view instanceof WindVaneWebView) && !TextUtils.isEmpty(a10)) {
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(view, "oncutoutfetched", Base64.encodeToString(a10.getBytes(), 0));
                    }
                }
            }
        } catch (Throwable th2) {
            p0.a(V, th2.getMessage());
        }
    }

    public void setShowRewardVideoListener(h hVar) {
        this.H = hVar;
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.T = mediaEvents;
    }

    private WindVaneWebView c(String str) {
        a.C0455a b10 = com.mbridge.msdk.videocommon.a.b(str);
        if (b10 != null) {
            this.C = b10.a();
            String str2 = V;
            p0.a(str2, "get BT wraper.getTag = " + this.C);
            b10.a("");
            return b10.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                HashMap hashMap = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> a10 = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getCampaignUnitId(), campaignEx.getRequestId());
                if (a10 == null || a10.size() <= 0 || a10.get(0) == null) {
                    return;
                }
                int c10 = a10.get(0).c();
                String b10 = a10.get(0).b();
                if (c10 == 1) {
                    hashMap.put("encrypt_p=", "encrypt_p=" + b10);
                    hashMap.put("irlfa=", "irlfa=1");
                    for (Map.Entry entry : hashMap.entrySet()) {
                        campaignEx.setOnlyImpressionURL(campaignEx.getOnlyImpressionURL().replaceAll((String) entry.getKey(), (String) entry.getValue()));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private com.mbridge.msdk.video.bt.module.listener.b k() {
        if (this.J == null) {
            this.J = new c();
        }
        return this.J;
    }

    private void l() {
        AdSession adSession = this.S;
        if (adSession != null) {
            try {
                adSession.registerAdView(this);
                this.S.start();
                p0.a("omsdk", "btc:  adSession.start();");
                if (this.U != null) {
                    p0.a("omsdk", "btc:   adEvents.loaded");
                    this.U.loaded(VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE));
                    p0.a("omsdk", "btc:   adEvents.impressionOccurred");
                    this.U.impressionOccurred();
                }
            } catch (Exception e10) {
                p0.a("omsdk", e10.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    protected void b(String str) {
        h hVar = this.H;
        if (hVar != null) {
            hVar.a(this.R, str);
        }
        super.b(str);
    }

    protected void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                for (String str : pv_urls) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f31483d, str, false, true);
                }
            } catch (Throwable th2) {
                p0.b(V, th2.getMessage());
            }
        }
    }

    /* loaded from: classes6.dex */
    class a implements com.mbridge.msdk.foundation.feedback.a {
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
                p0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
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
                p0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
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
                p0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    private void a(Context context) {
        if (this.Q == null) {
            b("ChoiceOneCallback is null");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("choice_one_callback", this.Q);
        com.mbridge.msdk.video.dynview.b.a().a(context, this.E, new b(), hashMap);
    }

    private com.mbridge.msdk.videocommon.download.a c(CampaignEx campaignEx) {
        List<com.mbridge.msdk.videocommon.download.a> list = this.F;
        if (list == null || campaignEx == null) {
            return null;
        }
        for (com.mbridge.msdk.videocommon.download.a aVar : list) {
            if (aVar.c().getId().equals(campaignEx.getId())) {
                p0.a(V, "tempContainer task initSuccess");
                return aVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.video.bt.module.listener.b {
        c() {
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(String str) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).f31484e);
                    jSONObject2.put("unitId", ((AbstractJSContainer) MBridgeBTContainer.this).f31483d);
                    jSONObject.put("data", jSONObject2);
                    String str2 = MBridgeBTContainer.V;
                    p0.a(str2, " BT Call H5 onAdShow " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewPlayStart", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void b(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    String str4 = MBridgeBTContainer.V;
                    p0.a(str4, " BT Call H5 onVideoAdClicked " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void c(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    String str4 = MBridgeBTContainer.V;
                    p0.a(str4, " BT Call H5 onEndcardShow " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewEndcardShowSuccess", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(String str, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    if (cVar != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("name", cVar.c());
                        jSONObject3.put("amount", cVar.a());
                        jSONObject2.put(AdmobPreloadConfig.REWARD, jSONObject3);
                    }
                    jSONObject2.put("isComplete", z10);
                    jSONObject2.put("convert", z10 ? 1 : 2);
                    jSONObject.put("data", jSONObject2);
                    String str2 = MBridgeBTContainer.V;
                    p0.a(str2, " BT Call H5 onAdClose " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewDismissed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(boolean z10, int i10) {
            MBridgeBTContainer.this.N = z10;
            MBridgeBTContainer.this.O = i10;
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(String str, String str2) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).f31484e);
                    jSONObject2.put("unitId", ((AbstractJSContainer) MBridgeBTContainer.this).f31483d);
                    jSONObject2.put("error", str2);
                    jSONObject.put("data", jSONObject2);
                    String str3 = MBridgeBTContainer.V;
                    p0.a(str3, " BT Call H5 onShowFail " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewPlayFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f30572v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("convert", true);
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    String str4 = MBridgeBTContainer.V;
                    p0.a(str4, " BT Call H5 onVideoComplete " + jSONObject.toString());
                } catch (JSONException e10) {
                    p0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f30572v, "onSubPlayTemplateViewPlayCompleted", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.b
        public void a(String str, int i10, String str2, String str3) {
            if (MBridgeBTContainer.this.H != null) {
                MBridgeBTContainer.this.H.a(i10, str2, str3);
            }
        }
    }

    public MBridgeBTContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30568r = 0;
        this.f30569s = 1;
        this.A = false;
        this.B = true;
        this.D = false;
        this.S = null;
        this.T = null;
        this.U = null;
        init(context);
    }

    private void a(int i10, int i11, int i12, int i13) {
        TextView textView;
        FrameLayout.LayoutParams layoutParams;
        List<CampaignEx> list = this.E;
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            if (!this.E.get(0).isDynamicView() || (textView = this.f30575y) == null || (layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams()) == null) {
                return;
            }
            if (i10 > 0) {
                layoutParams.leftMargin = i10;
            }
            if (i12 > 0) {
                layoutParams.rightMargin = i12;
            }
            if (i11 > 0) {
                layoutParams.topMargin = i11;
            }
            if (i13 > 0) {
                layoutParams.bottomMargin = i13;
            }
            this.f30575y.setLayoutParams(layoutParams);
            if (this.f30576z != null) {
                try {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f30576z.getLayoutParams());
                    layoutParams2.leftMargin = layoutParams.rightMargin;
                    layoutParams2.topMargin = layoutParams.topMargin;
                    this.f30576z.setLayoutParams(layoutParams2);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            p0.b(V, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.video.dynview.listener.h {
        b() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            CampaignEx campaignEx;
            String str;
            if (aVar != null) {
                if (MBridgeBTContainer.this.f30570t != null && aVar.b() != null) {
                    MBridgeBTContainer.this.f30570t.removeAllViews();
                    MBridgeBTContainer.this.f30570t.addView(aVar.b());
                    MBridgeBTContainer mBridgeBTContainer = MBridgeBTContainer.this;
                    mBridgeBTContainer.f30575y = (TextView) mBridgeBTContainer.findViewById(mBridgeBTContainer.findID("mbridge_choice_one_countdown_tv"));
                    MBridgeBTContainer mBridgeBTContainer2 = MBridgeBTContainer.this;
                    mBridgeBTContainer2.f30576z = (ImageView) mBridgeBTContainer2.findViewById(mBridgeBTContainer2.findID("mbridge_iv_link"));
                    if (MBridgeBTContainer.this.G != null) {
                        MBridgeBTContainer.this.G.a();
                        MBridgeBTContainer.this.G.a(2, ((AbstractJSContainer) MBridgeBTContainer.this).f31484e, ((AbstractJSContainer) MBridgeBTContainer.this).f31483d);
                    }
                    if (MBridgeBTContainer.this.E == null || MBridgeBTContainer.this.E.size() <= 0 || (campaignEx = (CampaignEx) MBridgeBTContainer.this.E.get(0)) == null) {
                        return;
                    }
                    if (campaignEx.isBidCampaign()) {
                        MBridgeBTContainer.this.d(campaignEx);
                    }
                    String onlyImpressionURL = campaignEx.getOnlyImpressionURL();
                    com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), ((AbstractJSContainer) MBridgeBTContainer.this).f31483d);
                    int A = c10 != null ? c10.A() : 1;
                    if (campaignEx.getSpareOfferFlag() == 1) {
                        str = onlyImpressionURL + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + A;
                    } else {
                        str = onlyImpressionURL + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + A;
                    }
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, ((AbstractJSContainer) MBridgeBTContainer.this).f31483d, str, false, true, com.mbridge.msdk.click.retry.a.f26107n);
                    com.mbridge.msdk.foundation.same.buffer.b.f27061l.put(campaignEx.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                    MBridgeBTContainer.this.e(campaignEx);
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("type", "choseFromTwoShow");
                        com.mbridge.msdk.video.module.report.a.a("2000103", campaignEx, eVar);
                        return;
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            e10.printStackTrace();
                            return;
                        }
                        return;
                    }
                }
                MBridgeBTContainer.this.b("nativeview is null");
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            String str;
            if (aVar != null) {
                str = "errorCode:" + aVar.a() + "Msg:" + aVar.b();
            } else {
                str = "";
            }
            MBridgeBTContainer.this.b("nativeview is null" + str);
        }
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void click(int i10, String str) {
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void handlerH5Exception(int i10, String str) {
    }
}
