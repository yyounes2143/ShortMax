package com.mbridge.msdk.reward.player;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.reward.adapter.RewardUnitCacheManager;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.video.bt.module.MBTempContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.activity.AbstractJSActivity;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.videocommon.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class MBRewardVideoActivity extends AbstractJSActivity {
    public static String INTENT_EXTRADATA = "extraData";
    public static String INTENT_ISBID = "isBid";
    public static String INTENT_ISBIG_OFFER = "isBigOffer";
    public static String INTENT_ISIV = "isIV";
    public static String INTENT_IVREWARD_MODETYPE = "ivRewardMode";
    public static String INTENT_IVREWARD_VALUE = "ivRewardValue";
    public static String INTENT_IVREWARD_VALUETYPE = "ivRewardValueType";
    public static String INTENT_LOCAL_REQUEST_ID = "lRid";
    public static String INTENT_MUTE = "mute";
    public static String INTENT_REWARD = "reward";
    public static String INTENT_UNITID = "unitId";
    public static String INTENT_USERID = "userId";
    public static String SAVE_STATE_KEY_REPORT = "hasRelease";
    private MBridgeBTContainer A;
    private WindVaneWebView B;
    private com.mbridge.msdk.video.bt.module.listener.a C;
    private String D;
    private String E;
    private boolean F;
    private String N;
    private com.mbridge.msdk.foundation.same.report.metrics.c O;
    private boolean Q;

    /* renamed from: f  reason: collision with root package name */
    private String f28860f;

    /* renamed from: g  reason: collision with root package name */
    private String f28861g;

    /* renamed from: h  reason: collision with root package name */
    private String f28862h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.entity.c f28863i;

    /* renamed from: m  reason: collision with root package name */
    private int f28867m;

    /* renamed from: n  reason: collision with root package name */
    private int f28868n;

    /* renamed from: o  reason: collision with root package name */
    private int f28869o;

    /* renamed from: r  reason: collision with root package name */
    private h f28872r;

    /* renamed from: s  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f28873s;

    /* renamed from: v  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f28876v;

    /* renamed from: w  reason: collision with root package name */
    private CampaignEx f28877w;

    /* renamed from: x  reason: collision with root package name */
    private List<com.mbridge.msdk.videocommon.download.a> f28878x;

    /* renamed from: y  reason: collision with root package name */
    private List<CampaignEx> f28879y;

    /* renamed from: z  reason: collision with root package name */
    private MBTempContainer f28880z;

    /* renamed from: j  reason: collision with root package name */
    private int f28864j = 2;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28865k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28866l = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28870p = false;

    /* renamed from: q  reason: collision with root package name */
    private boolean f28871q = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f28874t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f28875u = false;
    private int G = 1;
    private int H = 0;
    private int I = 0;
    private int J = 0;
    private int K = 0;
    private int L = 0;
    private int M = 0;
    private boolean P = false;
    private AdSession R = null;
    private MediaEvents S = null;
    private AdEvents T = null;
    private long U = 0;
    private String V = "";
    private Boolean W = null;
    private int X = 0;
    private boolean Y = false;
    private boolean Z = false;

    /* renamed from: a0  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f28858a0 = new a();

    /* renamed from: b0  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.d f28859b0 = new b();

    /* loaded from: classes6.dex */
    class a implements com.mbridge.msdk.video.dynview.listener.a {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.a
        public void a(Map<String, Object> map) {
            if (map == null) {
                return;
            }
            if (map.containsKey("mute")) {
                MBRewardVideoActivity.this.f28864j = ((Integer) map.get("mute")).intValue();
            }
            if (map.containsKey("position")) {
                int intValue = ((Integer) map.get("position")).intValue();
                if (MBRewardVideoActivity.this.f28879y != null && MBRewardVideoActivity.this.f28879y.size() > 0 && intValue >= 1) {
                    MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
                    mBRewardVideoActivity.f28877w = (CampaignEx) mBRewardVideoActivity.f28879y.get(intValue);
                    MBRewardVideoActivity.m(MBRewardVideoActivity.this);
                    int i10 = intValue - 1;
                    if (MBRewardVideoActivity.this.f28879y.get(i10) != null) {
                        MBRewardVideoActivity mBRewardVideoActivity2 = MBRewardVideoActivity.this;
                        MBRewardVideoActivity.b(mBRewardVideoActivity2, ((CampaignEx) mBRewardVideoActivity2.f28879y.get(i10)).getVideoLength());
                    }
                    MBRewardVideoActivity mBRewardVideoActivity3 = MBRewardVideoActivity.this;
                    MBRewardVideoActivity.this.f28877w.setVideoCompleteTime(mBRewardVideoActivity3.a(mBRewardVideoActivity3.f28877w.getVideoCompleteTime(), MBRewardVideoActivity.this.G));
                    MBRewardVideoActivity.this.f28877w.setShowIndex(MBRewardVideoActivity.this.G);
                    MBRewardVideoActivity.this.f28877w.setShowType(1);
                    MBRewardVideoActivity mBRewardVideoActivity4 = MBRewardVideoActivity.this;
                    mBRewardVideoActivity4.c(mBRewardVideoActivity4.f28877w);
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    class d implements com.mbridge.msdk.foundation.feedback.a {
        d() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBRewardVideoActivity.this.onPause();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBRewardVideoActivity.this.onResume();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBRewardVideoActivity.this.onResume();
        }
    }

    /* loaded from: classes6.dex */
    private static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final List<com.mbridge.msdk.videocommon.download.a> f28885a;

        /* renamed from: b  reason: collision with root package name */
        private final String f28886b;

        /* renamed from: c  reason: collision with root package name */
        private final String f28887c;

        public e(List<com.mbridge.msdk.videocommon.download.a> list, String str, String str2) {
            this.f28885a = list;
            this.f28886b = str;
            this.f28887c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f28885a;
                if (list != null && list.size() > 0) {
                    for (com.mbridge.msdk.videocommon.download.a aVar : this.f28885a) {
                        if (aVar != null && aVar.c() != null) {
                            CampaignEx c10 = aVar.c();
                            try {
                                AppletModelManager.getInstance().remove(c10);
                            } catch (Exception e10) {
                                if (MBridgeConstans.DEBUG) {
                                    p0.b("MBRewardVideoActivity", "AppletModelManager remove error", e10);
                                }
                            }
                            com.mbridge.msdk.videocommon.download.b.getInstance().c(this.f28886b, c10.getRequestId() + c10.getId() + c10.getVideoUrlEncode());
                            if (c10.getRewardTemplateMode() != null) {
                                if (!TextUtils.isEmpty(c10.getRewardTemplateMode().e())) {
                                    com.mbridge.msdk.videocommon.a.e(this.f28886b + "_" + c10.getId() + "_" + this.f28887c + "_" + c10.getRewardTemplateMode().e());
                                    com.mbridge.msdk.videocommon.a.b(c10.getAdType(), c10);
                                }
                                if (!TextUtils.isEmpty(c10.getCMPTEntryUrl())) {
                                    com.mbridge.msdk.videocommon.a.e(this.f28886b + "_" + this.f28887c + "_" + c10.getCMPTEntryUrl());
                                }
                                com.mbridge.msdk.videocommon.cache.a.a().a(this.f28886b, c10);
                            }
                        }
                    }
                }
            } catch (Exception e11) {
                p0.a("MBRewardVideoActivity", e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final List<com.mbridge.msdk.videocommon.download.a> f28888a;

        /* renamed from: b  reason: collision with root package name */
        private final String f28889b;

        public f(String str, List<com.mbridge.msdk.videocommon.download.a> list) {
            this.f28888a = list;
            this.f28889b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f28888a;
                if (list != null && list.size() > 0) {
                    for (com.mbridge.msdk.videocommon.download.a aVar : this.f28888a) {
                        if (aVar != null && aVar.c() != null) {
                            com.mbridge.msdk.videocommon.cache.a.a().a(aVar.c(), this.f28889b);
                        }
                    }
                }
            } catch (Throwable th2) {
                p0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    static /* synthetic */ int m(MBRewardVideoActivity mBRewardVideoActivity) {
        int i10 = mBRewardVideoActivity.G;
        mBRewardVideoActivity.G = i10 + 1;
        return i10;
    }

    public void changeHalfScreenPadding(int i10) {
        int f10;
        int g10;
        int g11;
        float f11;
        try {
            CampaignEx campaignEx = this.f28877w;
            if (campaignEx != null && campaignEx.getAdSpaceT() == 2) {
                getWindow().getDecorView().setBackgroundColor(-1728053248);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28880z.getLayoutParams();
                layoutParams.gravity = 17;
                if (this.f28877w.getRewardTemplateMode().b() == 0) {
                    if (i10 == 2) {
                        f10 = (int) (u0.f(this) * 0.6f);
                        g11 = u0.g(this);
                        f11 = g11 * 0.6f;
                    } else {
                        f10 = (int) (u0.f(this) * 0.6f);
                        g10 = u0.g(this);
                        f11 = g10 * 0.7f;
                    }
                } else if (this.f28877w.getRewardTemplateMode().b() == 2) {
                    f10 = (int) (u0.f(this) * 0.6f);
                    g11 = u0.g(this);
                    f11 = g11 * 0.6f;
                } else {
                    f10 = (int) (u0.f(this) * 0.6f);
                    g10 = u0.g(this);
                    f11 = g10 * 0.7f;
                }
                int i11 = (int) f11;
                layoutParams.height = f10;
                layoutParams.width = i11;
                this.f28880z.setLayoutParams(layoutParams);
            }
        } catch (Throwable th2) {
            p0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    public int findID(String str) {
        return h0.a(getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return h0.a(getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override // android.app.Activity
    public void finish() {
        this.Y = true;
        com.mbridge.msdk.foundation.controller.c.m().b(0);
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f28880z = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f28860f);
        if (this.R != null) {
            p0.b("omsdk", "mbrewardvideoac finish");
            this.R.removeAllFriendlyObstructions();
            this.R.finish();
            this.R = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        super.finish();
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onBackPressed() {
        this.Z = true;
        super.onBackPressed();
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onBackPressed();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onBackPressed();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f28880z != null) {
            changeHalfScreenPadding(configuration.orientation);
            this.f28880z.onConfigurationChanged(configuration);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onConfigurationChanged(configuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        int i10;
        List<com.mbridge.msdk.videocommon.download.a> list;
        String str2 = "";
        super.onCreate(bundle);
        MBridgeConstans.isRewardActivityShowing = true;
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        this.U = SystemClock.elapsedRealtime();
        if (TextUtils.isEmpty(this.V)) {
            str = "onCreate";
        } else {
            str = this.V + "_onCreate";
        }
        this.V = str;
        try {
            Intent intent = getIntent();
            this.f28860f = intent.getStringExtra(INTENT_UNITID);
            this.f28861g = intent.getStringExtra(MBridgeConstans.PLACEMENT_ID);
            this.f28863i = com.mbridge.msdk.videocommon.entity.c.a(intent.getStringExtra(INTENT_REWARD));
            this.f28862h = intent.getStringExtra(INTENT_USERID);
            this.f28864j = intent.getIntExtra(INTENT_MUTE, 2);
            this.f28865k = intent.getBooleanExtra(INTENT_ISIV, false);
            com.mbridge.msdk.foundation.controller.c m10 = com.mbridge.msdk.foundation.controller.c.m();
            int i11 = 94;
            if (this.f28865k) {
                i10 = 287;
            } else {
                i10 = 94;
            }
            m10.b(i10);
            this.f28866l = intent.getBooleanExtra(INTENT_ISBID, false);
            this.E = intent.getStringExtra(INTENT_EXTRADATA);
            boolean booleanExtra = intent.getBooleanExtra("is_refactor", false);
            this.P = booleanExtra;
            if (booleanExtra) {
                this.f28872r = MBridgeGlobalCommon.showRewardListenerMap.get(this.f28860f);
            } else {
                this.f28872r = com.mbridge.msdk.reward.controller.a.f28764f0.get(this.f28860f);
            }
            if (this.f28865k) {
                this.f28867m = intent.getIntExtra(INTENT_IVREWARD_MODETYPE, 0);
                this.f28868n = intent.getIntExtra(INTENT_IVREWARD_VALUETYPE, 0);
                this.f28869o = intent.getIntExtra(INTENT_IVREWARD_VALUE, 0);
            }
            this.f28870p = intent.getBooleanExtra(INTENT_ISBIG_OFFER, false);
            this.f28878x = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f28860f);
            this.f28879y = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f28860f);
            int findLayout = findLayout("mbridge_more_offer_activity");
            if (!h0.a(findLayout)) {
                b("no mbridge_more_offer_activity layout");
                return;
            }
            setContentView(findLayout);
            if (TextUtils.isEmpty(this.f28860f)) {
                b("data empty error");
                return;
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this);
            this.jsFactory = bVar;
            registerJsFactory(bVar);
            h hVar = this.f28872r;
            if (hVar == null) {
                b("showRewardListener is null");
                return;
            }
            this.X = hVar.hashCode();
            com.mbridge.msdk.videocommon.setting.c cVar = RewardUnitCacheManager.getInstance().get(this.f28861g, this.f28860f);
            this.f28873s = cVar;
            if (cVar == null) {
                com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f28860f);
                this.f28873s = c10;
                if (c10 == null) {
                    this.f28873s = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f28860f, this.f28865k);
                }
            }
            com.mbridge.msdk.videocommon.setting.c cVar2 = this.f28873s;
            if (cVar2 != null) {
                this.f28863i.a(cVar2.d());
                this.f28863i.b(this.f28873s.s());
            }
            com.mbridge.msdk.videocommon.entity.c cVar3 = this.f28863i;
            if (cVar3 != null && cVar3.a() <= 0) {
                this.f28863i.a(1);
            }
            int a10 = h0.a(this, "mbridge_reward_activity_open", "anim");
            int a11 = h0.a(this, "mbridge_reward_activity_stay", "anim");
            if (h0.a(a10) && h0.a(a11)) {
                overridePendingTransition(a10, a11);
            }
            if (bundle != null) {
                try {
                    this.f28875u = bundle.getBoolean(SAVE_STATE_KEY_REPORT);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            p0.a("DynamicViewCampaignResourceDownloader", "进入 show，大模板 " + this.f28870p);
            if (!this.f28870p) {
                List<com.mbridge.msdk.videocommon.download.a> list2 = this.f28878x;
                if (list2 != null && list2.size() > 0) {
                    this.f28876v = this.f28878x.get(0);
                }
                com.mbridge.msdk.videocommon.download.a aVar = this.f28876v;
                if (aVar != null) {
                    this.f28877w = aVar.c();
                    this.f28876v.b(true);
                    this.f28876v.d(false);
                    CampaignEx campaignEx = this.f28877w;
                    if (campaignEx != null) {
                        this.N = campaignEx.getCurrentLocalRid();
                        this.f28877w.setShowIndex(1);
                        this.f28877w.setShowType(1);
                        com.mbridge.msdk.reward.controller.a.f28760b0 = this.f28877w.getEcppv();
                        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f28877w.getMaitve(), this.f28877w.getMaitve_src());
                    }
                }
                CampaignEx campaignEx2 = this.f28877w;
                if (campaignEx2 != null && !g.a(campaignEx2, this, (View) null, campaignEx2.getImpReportType())) {
                    b("env is exception");
                    return;
                }
                if (this.f28876v != null && this.f28877w != null && this.f28863i != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f28877w);
                    a(arrayList);
                    b(this.f28877w);
                    j();
                    if (!com.mbridge.msdk.util.b.a()) {
                        e();
                        return;
                    }
                    return;
                }
                b("data empty error");
                return;
            }
            a(this.f28879y);
            this.D = "";
            List<CampaignEx> list3 = this.f28879y;
            if (list3 != null && list3.size() > 0) {
                CampaignEx campaignEx3 = this.f28879y.get(0);
                if (!g.a(this.f28879y, this, (View) null, campaignEx3.getImpReportType())) {
                    b("env is exception");
                    return;
                }
                b(campaignEx3);
                str2 = campaignEx3.getCMPTEntryUrl();
                this.D = campaignEx3.getRequestId();
                this.N = campaignEx3.getCurrentLocalRid();
                com.mbridge.msdk.reward.controller.a.f28760b0 = campaignEx3.getEcppv();
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx3.getMaitve(), campaignEx3.getMaitve_src());
            }
            WindVaneWebView a12 = a(this.f28860f + "_" + this.D + "_" + str2);
            this.B = a12;
            if (a12 == null) {
                if (this.f28876v == null && (list = this.f28878x) != null && list.size() > 0) {
                    this.f28876v = this.f28878x.get(0);
                }
                if (this.f28876v == null) {
                    com.mbridge.msdk.videocommon.download.b bVar2 = com.mbridge.msdk.videocommon.download.b.getInstance();
                    if (this.f28865k) {
                        i11 = 287;
                    }
                    this.f28876v = bVar2.a(i11, this.f28860f, this.f28866l);
                }
                com.mbridge.msdk.videocommon.download.a aVar2 = this.f28876v;
                if (aVar2 != null) {
                    this.f28877w = aVar2.c();
                    this.f28876v.b(true);
                    this.f28876v.d(false);
                }
                if (this.f28876v != null && this.f28877w != null && this.f28863i != null) {
                    this.f28870p = false;
                    List<CampaignEx> a13 = com.mbridge.msdk.videocommon.cache.a.a().a(this.f28879y);
                    if (a13 == null) {
                        b("no available campaign");
                        return;
                    }
                    int size = a13.size();
                    if (size == 0) {
                        b("no available campaign");
                        return;
                    } else if (a13.get(0) != null && a13.get(0).isDynamicView()) {
                        if (size == 1) {
                            CampaignEx campaignEx4 = a13.get(0);
                            this.f28877w = campaignEx4;
                            if (campaignEx4 != null) {
                                this.N = campaignEx4.getCurrentLocalRid();
                                this.f28877w.setCampaignIsFiltered(true);
                            }
                            c(this.f28877w);
                        } else {
                            b(a13);
                        }
                    } else {
                        j();
                    }
                }
                b("data empty error");
                return;
            }
            b(this.f28879y.get(0));
            WindVaneWebView windVaneWebView = this.B;
            if (windVaneWebView != null) {
                a1.a(windVaneWebView, this.f28879y.get(0).getLocalRequestId(), this.f28879y.get(0).getLocalAllowTrackClick());
                try {
                    k kVar = (k) this.B.getObject();
                    kVar.setAdEvents(this.T);
                    kVar.setAdSession(this.R);
                    kVar.setVideoEvents(this.S);
                    this.B.setObject(kVar);
                } catch (Exception e11) {
                    p0.b("MBRewardVideoActivity", e11.getMessage());
                }
            }
            k();
            if (!com.mbridge.msdk.util.b.a()) {
                e();
            }
        } catch (Throwable th2) {
            a(this.f28879y);
            b("onCreate error" + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onDestroy() {
        String str;
        String str2;
        int i10;
        int i11;
        int i12;
        int i13;
        if (TextUtils.isEmpty(this.V)) {
            str = "onDestroy";
        } else {
            str = this.V + "_onDestroy";
        }
        this.V = str;
        super.onDestroy();
        f();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (TextUtils.isEmpty(this.V)) {
            str2 = "unKnown";
        } else {
            str2 = this.V;
        }
        eVar.a("activity_life_cycle", str2);
        eVar.a("activity_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.U));
        Boolean bool = this.W;
        int i14 = 0;
        if (bool == null) {
            i10 = 0;
        } else if (bool.booleanValue()) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        eVar.a("is_unexpected_destroy", Integer.valueOf(i10));
        if (this.f28872r == null) {
            i11 = 1;
        } else {
            i11 = 2;
        }
        eVar.a("is_listener_null", Integer.valueOf(i11));
        if (this.Y) {
            i12 = 1;
        } else {
            i12 = 2;
        }
        eVar.a("is_called_finish", Integer.valueOf(i12));
        if (this.Z) {
            i13 = 1;
        } else {
            i13 = 2;
        }
        eVar.a("is_back_pressed", Integer.valueOf(i13));
        h hVar = this.f28872r;
        if (hVar != null) {
            if (hVar.hashCode() == this.X) {
                i14 = 1;
            } else {
                i14 = 2;
            }
        }
        eVar.a("is_listener_change", Integer.valueOf(i14));
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000151", this.f28877w, eVar);
        g();
        com.mbridge.msdk.video.module.report.b.a(this.f28860f);
        h();
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f28880z = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        this.f28858a0 = null;
        this.f28859b0 = null;
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f28860f + "_1");
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f28860f + "_2");
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(this.f28878x, this.f28860f, this.D));
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onPause() {
        String str;
        super.onPause();
        if (TextUtils.isEmpty(this.V)) {
            str = "onPause";
        } else {
            str = this.V + "_onPause";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onPause();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        String str;
        super.onRestart();
        if (TextUtils.isEmpty(this.V)) {
            str = "onRestart";
        } else {
            str = this.V + "_onRestart";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onRestart();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onRestart();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onResume() {
        String str;
        MBridgeVideoView mBridgeVideoView;
        super.onResume();
        if (TextUtils.isEmpty(this.V)) {
            str = "onResume";
        } else {
            str = this.V + "_onResume";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f26979f) {
            MBTempContainer mBTempContainer = this.f28880z;
            if (mBTempContainer != null && (mBridgeVideoView = mBTempContainer.mbridgeVideoView) != null) {
                mBridgeVideoView.setCover(false);
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new f(this.f28860f, this.f28878x));
        } catch (Throwable th2) {
            p0.b("MBRewardVideoActivity", th2.getMessage());
        }
        MBTempContainer mBTempContainer2 = this.f28880z;
        if (mBTempContainer2 != null) {
            mBTempContainer2.onResume();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onResume();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(SAVE_STATE_KEY_REPORT, this.f28875u);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        String str;
        super.onStart();
        if (TextUtils.isEmpty(this.V)) {
            str = "onStart";
        } else {
            str = this.V + "_onStart";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f26979f) {
            return;
        }
        new d();
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onStart();
            this.f28877w.setCampaignUnitId(this.f28860f);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f28860f + "_1", this.f28877w);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStart();
            List<CampaignEx> list = this.f28879y;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = this.f28879y.get(0);
                campaignEx.setCampaignUnitId(this.f28860f);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f28860f + "_1", campaignEx);
            }
        }
        if (!this.F) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f28860f + "_1", 1);
            com.mbridge.msdk.foundation.feedback.b.b().d(this.f28860f + "_2");
            this.F = true;
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        String str;
        if (TextUtils.isEmpty(this.V)) {
            str = "onStop";
        } else {
            str = this.V + "_onStop";
        }
        this.V = str;
        MBridgeConstans.isRewardActivityShowing = false;
        super.onStop();
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.onStop();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStop();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        super.setTheme(h0.a(this, "mbridge_transparent_theme", TtmlNode.TAG_STYLE));
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i10, int i11, int i12, int i13, int i14) {
        this.I = i11;
        this.K = i12;
        this.J = i13;
        this.L = i14;
        this.M = i10;
        MBTempContainer mBTempContainer = this.f28880z;
        if (mBTempContainer != null) {
            mBTempContainer.setNotchPadding(i10, i11, i12, i13, i14);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.setNotchPadding(i10, i11, i12, i13, i14);
        }
        com.mbridge.msdk.video.dynview.constant.a.a(i10, i11, i12, i13, i14);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.video.bt.module.listener.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a() {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(MBRewardVideoActivity.this.O);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void b(String str, String str2) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.b(str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, com.mbridge.msdk.videocommon.entity.c cVar) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(MBRewardVideoActivity.this.O, z10, cVar);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, int i10) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(z10, i10);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(String str) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(MBRewardVideoActivity.this.O, str);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, String str, String str2) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(z10, str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(String str, String str2) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(int i10, String str, String str2) {
            if (MBRewardVideoActivity.this.f28872r != null) {
                MBRewardVideoActivity.this.f28872r.a(i10, str, str2);
            }
        }
    }

    static /* synthetic */ int b(MBRewardVideoActivity mBRewardVideoActivity, int i10) {
        int i11 = mBRewardVideoActivity.H - i10;
        mBRewardVideoActivity.H = i11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignEx campaignEx) {
        CampaignEx c10;
        try {
            List<com.mbridge.msdk.videocommon.download.a> list = this.f28878x;
            if (list != null && list.size() > 0) {
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f28878x) {
                    if (aVar != null && (c10 = aVar.c()) != null && TextUtils.equals(c10.getId(), campaignEx.getId()) && TextUtils.equals(c10.getRequestId(), campaignEx.getRequestId())) {
                        this.f28876v = aVar;
                    }
                }
            }
            this.f28870p = true;
            j();
            MBTempContainer mBTempContainer = this.f28880z;
            if (mBTempContainer != null) {
                mBTempContainer.setNotchPadding(this.M, this.I, this.K, this.J, this.L);
            }
        } catch (Exception e10) {
            p0.b("MBRewardVideoActivity", e10.getMessage());
            b("more offer to one offer exception");
        }
    }

    private void d(CampaignEx campaignEx) {
        com.mbridge.msdk.reward.player.a.a(this, campaignEx, this.f28873s, this.f28860f);
    }

    private void e() {
        try {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            BitmapDrawable a10 = com.mbridge.msdk.foundation.controller.c.m().a(this.f28860f, this.f28865k ? 287 : 94);
            if (a10 != null) {
                ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                u0.a(imageView, a10, getResources().getDisplayMetrics());
                ((ViewGroup) ((ViewGroup) ((ViewGroup) viewGroup.getChildAt(0)).getChildAt(1)).getChildAt(0)).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                AdSession adSession = this.R;
                if (adSession != null) {
                    adSession.addFriendlyObstruction(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void f() {
        h hVar = this.f28872r;
        if (hVar == null || !(hVar instanceof com.mbridge.msdk.video.bt.module.orglistener.b)) {
            return;
        }
        try {
            com.mbridge.msdk.video.bt.module.orglistener.b bVar = (com.mbridge.msdk.video.bt.module.orglistener.b) hVar;
            Boolean d10 = bVar.d();
            Boolean c10 = bVar.c();
            if (d10 == null && c10 == null) {
                this.W = null;
                return;
            }
            Boolean bool = Boolean.FALSE;
            this.W = Boolean.valueOf(bool.equals(d10) && bool.equals(c10));
        } catch (Throwable th2) {
            p0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void g() {
        try {
            Boolean bool = this.W;
            if (bool != null && !bool.booleanValue()) {
                return;
            }
            h hVar = this.f28872r;
            if (hVar != null) {
                hVar.a(this.O, "show fail : unexpected destroy");
            }
        } catch (Throwable th2) {
            p0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void h() {
        try {
            List<CampaignEx> list = this.f28879y;
            if (list != null && list.size() > 0) {
                for (CampaignEx campaignEx : this.f28879y) {
                    a(campaignEx);
                }
            }
            CampaignEx campaignEx2 = this.f28877w;
            if (campaignEx2 != null) {
                a(campaignEx2);
            }
        } catch (Throwable th2) {
            p0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private com.mbridge.msdk.video.bt.module.listener.a i() {
        if (this.C == null) {
            this.C = new c();
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        List<CampaignEx> list;
        RewardPlus rewardPlus;
        CampaignEx campaignEx;
        List<CampaignEx> list2;
        int findID = findID("mbridge_temp_container");
        if (!h0.a(findID)) {
            b("no id mbridge_bt_container in mbridge_more_offer_activity layout");
        }
        MBTempContainer mBTempContainer = (MBTempContainer) findViewById(findID);
        this.f28880z = mBTempContainer;
        if (mBTempContainer == null) {
            b("env error");
        }
        List<CampaignEx> list3 = this.f28879y;
        if (list3 != null && list3.size() > 0 && this.f28879y.get(0).isDynamicView()) {
            new com.mbridge.msdk.video.dynview.ui.b().a(this.f28880z, 500L);
        } else {
            this.f28880z.setVisibility(0);
        }
        changeHalfScreenPadding(-1);
        this.f28880z.setActivity(this);
        this.f28880z.setBidCampaign(this.f28866l);
        this.f28880z.setBigOffer(this.f28870p);
        this.f28880z.setUnitId(this.f28860f);
        this.f28880z.setCampaign(this.f28877w);
        if (this.f28877w.getDynamicTempCode() == 5 && (list2 = this.f28879y) != null && list2.size() > 1) {
            View findViewById = findViewById(findID("mbridge_reward_root_container"));
            if (findViewById != null) {
                findViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.f28880z.removeAllViews();
            this.f28880z.setCampOrderViewData(this.f28879y, this.H);
            this.f28880z.setCamPlayOrderCallback(this.f28858a0, this.G);
        }
        this.f28880z.setCampaignDownLoadTask(this.f28876v);
        this.f28880z.setIV(this.f28865k);
        CampaignEx campaignEx2 = this.f28877w;
        if (campaignEx2 != null && campaignEx2.getAdSpaceT() == 2) {
            this.f28880z.setIVRewardEnable(0, 0, 0);
        } else {
            this.f28880z.setIVRewardEnable(this.f28867m, this.f28868n, this.f28869o);
        }
        this.f28880z.setMute(this.f28864j);
        CampaignEx campaignEx3 = this.f28877w;
        if (((campaignEx3 != null && (rewardPlus = campaignEx3.getRewardPlus()) != null) || ((list = this.f28879y) != null && list.size() > 0 && this.f28879y.get(0) != null && (rewardPlus = this.f28879y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f28863i = cVar;
        }
        this.f28880z.setReward(this.f28863i);
        this.f28880z.setRewardUnitSetting(this.f28873s);
        this.f28880z.setPlacementId(this.f28861g);
        this.f28880z.setUserId(this.f28862h);
        this.f28880z.setShowRewardListener(this.f28872r);
        this.f28880z.setDeveloperExtraData(this.E);
        this.f28880z.init(this);
        this.f28880z.setAdSession(this.R);
        this.f28880z.setAdEvents(this.T);
        this.f28880z.setVideoEvents(this.S);
        this.f28880z.onCreate();
        if (!com.mbridge.msdk.util.b.a() || (campaignEx = this.f28877w) == null) {
            return;
        }
        d(campaignEx);
    }

    private void k() {
        RewardPlus rewardPlus;
        List<CampaignEx> list;
        int findID = findID("mbridge_bt_container");
        if (!h0.a(findID)) {
            b("no mbridge_webview_framelayout in mbridge_more_offer_activity layout");
        }
        MBridgeBTContainer mBridgeBTContainer = (MBridgeBTContainer) findViewById(findID);
        this.A = mBridgeBTContainer;
        if (mBridgeBTContainer == null) {
            b("env error");
        }
        this.A.setVisibility(0);
        com.mbridge.msdk.video.bt.module.listener.a i10 = i();
        this.C = i10;
        this.A.setBTContainerCallback(i10);
        this.A.setShowRewardVideoListener(this.f28872r);
        this.A.setChoiceOneCallback(this.f28859b0);
        this.A.setCampaigns(this.f28879y);
        this.A.setCampaignDownLoadTasks(this.f28878x);
        this.A.setRewardUnitSetting(this.f28873s);
        this.A.setUnitId(this.f28860f);
        this.A.setPlacementId(this.f28861g);
        this.A.setUserId(this.f28862h);
        this.A.setActivity(this);
        CampaignEx campaignEx = this.f28877w;
        if (((campaignEx != null && (rewardPlus = campaignEx.getRewardPlus()) != null) || (this.f28879y.get(0) != null && (rewardPlus = this.f28879y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f28863i = cVar;
        }
        this.A.setReward(this.f28863i);
        this.A.setIVRewardEnable(this.f28867m, this.f28868n, this.f28869o);
        this.A.setIV(this.f28865k);
        this.A.setMute(this.f28864j);
        this.A.setJSFactory((com.mbridge.msdk.video.signal.factory.b) this.jsFactory);
        this.A.setDeveloperExtraData(this.E);
        this.A.init(this);
        this.A.setAdSession(this.R);
        this.A.setVideoEvents(this.S);
        this.A.setAdEvents(this.T);
        this.A.onCreate(this.P);
        if (!com.mbridge.msdk.util.b.a() || (list = this.f28879y) == null || list.size() <= 0 || this.f28879y.get(0) == null) {
            return;
        }
        d(this.f28879y.get(0));
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isActiveOm() && this.R == null) {
                    AdSession a10 = com.mbridge.msdk.omsdk.b.a(getApplicationContext(), false, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f28860f, campaignEx.getVideoUrlEncode(), campaignEx.getRequestIdNotice());
                    this.R = a10;
                    if (a10 != null) {
                        this.T = AdEvents.createAdEvents(a10);
                        this.S = MediaEvents.createMediaEvents(this.R);
                    }
                }
            } catch (Throwable th2) {
                p0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    /* loaded from: classes6.dex */
    class b implements com.mbridge.msdk.video.dynview.listener.d {
        b() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.d
        public void a(CampaignEx campaignEx) {
            if (campaignEx != null) {
                if (MBRewardVideoActivity.this.A != null) {
                    new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
                }
                MBRewardVideoActivity.this.f28877w = campaignEx;
                MBRewardVideoActivity.this.f28877w.setShowType(2);
                MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
                mBRewardVideoActivity.c(mBRewardVideoActivity.f28877w);
                return;
            }
            MBRewardVideoActivity.this.b("campaign is null");
        }

        @Override // com.mbridge.msdk.video.dynview.listener.d
        public void a() {
            if (MBRewardVideoActivity.this.A != null) {
                new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
            }
            MBRewardVideoActivity.this.f28870p = true;
            MBRewardVideoActivity.this.j();
            if (MBRewardVideoActivity.this.f28880z != null) {
                MBRewardVideoActivity.this.f28880z.setNotchPadding(MBRewardVideoActivity.this.M, MBRewardVideoActivity.this.I, MBRewardVideoActivity.this.K, MBRewardVideoActivity.this.J, MBRewardVideoActivity.this.L);
            }
        }
    }

    private WindVaneWebView a(String str) {
        a.C0455a b10 = com.mbridge.msdk.videocommon.a.b(str);
        if (b10 != null) {
            return b10.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i10, int i11) {
        List<CampaignEx> list = this.f28879y;
        if (list == null || list.size() == 0) {
            return i10;
        }
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f28879y.size(); i14++) {
            if (this.f28879y.get(0) != null) {
                if (i14 == 0) {
                    i13 = this.f28879y.get(0).getVideoCompleteTime();
                }
                i12 += this.f28879y.get(i14).getVideoLength();
            }
        }
        if (i11 == 1) {
            if (i10 == 0) {
                if (i12 >= 45) {
                    return 45;
                }
            } else if (i12 > i10) {
                if (i10 > 45) {
                    return 45;
                }
                return i10;
            }
            return i12;
        }
        int i15 = 0;
        for (int i16 = 0; i16 < i11 - 1; i16++) {
            if (this.f28879y.get(i16) != null) {
                i15 += this.f28879y.get(i16).getVideoLength();
            }
        }
        if (i13 > i15) {
            return i13 - i15;
        }
        return 0;
    }

    private void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            int a10 = a(campaignEx.getVideoCompleteTime(), this.G);
            this.f28877w = campaignEx;
            campaignEx.setCampaignIsFiltered(true);
            this.G = 1;
            this.f28877w.setVideoCompleteTime(a10);
            this.f28877w.setShowIndex(this.G);
            this.f28877w.setShowType(1);
            c(this.f28877w);
            return;
        }
        b("campaign is less");
    }

    private void b(List<CampaignEx> list) {
        int i10;
        if (list == null) {
            b("no available campaign");
        } else if (list.size() == 0) {
            b("no available campaign");
        } else {
            if (list.get(0) != null) {
                i10 = list.get(0).getDynamicTempCode();
                this.N = list.get(0).getCurrentLocalRid();
            } else {
                i10 = 0;
            }
            if (i10 != 5) {
                k();
                return;
            }
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null) {
                    this.H += campaignEx.getVideoLength();
                }
            }
            e(list.get(0));
        }
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl());
            }
            if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                return;
            }
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getIconUrl());
        }
    }

    private void a(List<CampaignEx> list) {
        CampaignEx campaignEx;
        if (this.Q) {
            return;
        }
        if (list == null) {
            try {
                if (this.f28870p) {
                    list = this.f28879y;
                } else {
                    list = new ArrayList<>();
                    List<com.mbridge.msdk.videocommon.download.a> list2 = this.f28878x;
                    if (list2 != null && list2.get(0) != null && this.f28878x.get(0).c() != null) {
                        list.add(this.f28878x.get(0).c());
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        String str = "";
        if (list != null && !list.isEmpty() && (campaignEx = list.get(0)) != null) {
            str = campaignEx.getCurrentLocalRid();
        }
        if (!TextUtils.isEmpty(str)) {
            this.O = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(str);
        }
        if (this.O == null) {
            this.O = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28860f);
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f28866l ? 1 : 0));
            eVar.a("adtp", Integer.valueOf(this.f28865k ? 287 : 94));
            eVar.a("lrid", this.N);
            eVar.a("his_reason", "show campaign is null");
            this.O.a("2000129", eVar);
        }
        if (list != null) {
            this.O.b(list);
        }
        this.Q = true;
        com.mbridge.msdk.reward.report.metrics.a.a().a("2000129", this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        p0.b("MBRewardVideoActivity", str);
        a(this.f28879y);
        h hVar = this.f28872r;
        if (hVar != null) {
            hVar.a(this.O, str);
        }
        finish();
    }
}
