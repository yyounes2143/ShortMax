package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView;
import com.mbridge.msdk.video.module.listener.impl.i;
import com.mbridge.msdk.video.module.listener.impl.k;
import com.mbridge.msdk.video.module.listener.impl.l;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class MBridgeContainerView extends MBridgeBaseView implements f, h {
    private int A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private boolean J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private String P;
    private com.mbridge.msdk.video.signal.factory.b Q;
    private boolean R;
    private boolean S;
    private List<CampaignEx> T;

    /* renamed from: m  reason: collision with root package name */
    private MBridgePlayableView f30953m;

    /* renamed from: n  reason: collision with root package name */
    private MBridgeClickCTAView f30954n;

    /* renamed from: o  reason: collision with root package name */
    private MBridgeClickMiniCardView f30955o;

    /* renamed from: p  reason: collision with root package name */
    private MBridgeNativeEndCardView f30956p;

    /* renamed from: q  reason: collision with root package name */
    private MBridgeH5EndCardView f30957q;

    /* renamed from: r  reason: collision with root package name */
    private MBridgeVastEndCardView f30958r;

    /* renamed from: s  reason: collision with root package name */
    private MBridgeLandingPageView f30959s;

    /* renamed from: t  reason: collision with root package name */
    private MBridgeVideoEndCoverView f30960t;

    /* renamed from: u  reason: collision with root package name */
    private MBridgeAlertWebview f30961u;

    /* renamed from: v  reason: collision with root package name */
    private MBridgeOrderCampView f30962v;

    /* renamed from: w  reason: collision with root package name */
    private String f30963w;

    /* renamed from: x  reason: collision with root package name */
    private int f30964x;

    /* renamed from: y  reason: collision with root package name */
    private int f30965y;

    /* renamed from: z  reason: collision with root package name */
    private int f30966z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.signal.factory.b f30967a;

        a(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f30967a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f30967a, Integer.valueOf(mBridgeContainerView.f30926b.getVideo_end_type()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.signal.factory.b f30969a;

        b(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f30969a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f30969a, Integer.valueOf(mBridgeContainerView.f30926b.getVideo_end_type()));
        }
    }

    /* loaded from: classes6.dex */
    class c implements com.mbridge.msdk.video.dynview.listener.b {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.b
        public void a() {
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeContainerView.this.notifyListener;
            if (aVar != null) {
                aVar.a(117, "");
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.b
        public void b() {
            if (MBridgeContainerView.this.f30926b.getAdSpaceT() == 2) {
                MBridgeContainerView.this.showVideoEndCover();
                return;
            }
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.showEndcard(mBridgeContainerView.f30926b.getVideo_end_type());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d extends i {
        d(com.mbridge.msdk.video.module.listener.a aVar) {
            super(aVar);
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.i, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i10, Object obj) {
            int i11;
            super.a(i10, obj);
            if (i10 == 100) {
                MBridgeContainerView.this.webviewshow();
                MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
                mBridgeContainerView.onConfigurationChanged(mBridgeContainerView.getResources().getConfiguration());
                n nVar = new n();
                nVar.n(MBridgeContainerView.this.f30926b.getRequestId());
                nVar.o(MBridgeContainerView.this.f30926b.getRequestIdNotice());
                nVar.b(MBridgeContainerView.this.f30926b.getId());
                if (MBridgeContainerView.this.f30926b.isMraid()) {
                    i11 = n.N;
                } else {
                    i11 = n.O;
                }
                nVar.b(i11);
                MBridgeContainerView mBridgeContainerView2 = MBridgeContainerView.this;
                g.d(nVar, mBridgeContainerView2.f30925a, mBridgeContainerView2.f30963w);
            }
        }
    }

    public MBridgeContainerView(Context context) {
        super(context);
        this.f30965y = 1;
        this.f30966z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    private void addCTAView() {
        if (this.f30954n == null) {
            b(-1);
        }
        if (this.f30954n != null) {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12, -1);
            addView(this.f30954n, 0, layoutParams);
        }
    }

    private void b(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        if (this.f30960t == null) {
            MBridgeVideoEndCoverView mBridgeVideoEndCoverView = new MBridgeVideoEndCoverView(this.f30925a);
            this.f30960t = mBridgeVideoEndCoverView;
            mBridgeVideoEndCoverView.setCampaign(this.f30926b);
            this.f30960t.setNotifyListener(new i(this.notifyListener));
            this.f30960t.preLoadData(bVar);
        }
    }

    private void e() {
        if (this.f30961u == null) {
            q();
        }
        MBridgeAlertWebview mBridgeAlertWebview = this.f30961u;
        if (mBridgeAlertWebview != null && mBridgeAlertWebview.getParent() != null) {
            removeView(this.f30961u);
        }
        addView(this.f30961u);
    }

    private void f() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            boolean isDynamicView = campaignEx.isDynamicView();
            boolean l10 = u0.l(this.f30926b.getendcard_url());
            if (isDynamicView && !l10 && !this.f30926b.isMraid()) {
                j();
                return;
            }
        }
        if (this.f30965y == 2 && !this.I) {
            g();
        } else {
            j();
        }
    }

    private void g() {
        int i10;
        if (this.f30957q == null) {
            a(this.Q, (Integer) 2);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.isLoadSuccess()) {
            this.I = true;
            addView(this.f30957q);
            webviewshow();
            onConfigurationChanged(getResources().getConfiguration());
            this.f30957q.excuteTask();
            this.f30957q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
            n nVar = new n();
            nVar.n(this.f30926b.getRequestId());
            nVar.o(this.f30926b.getRequestIdNotice());
            nVar.b(this.f30926b.getId());
            if (this.f30926b.isMraid()) {
                i10 = n.N;
            } else {
                i10 = n.O;
            }
            nVar.b(i10);
            g.d(nVar, this.f30925a, this.f30963w);
        } else {
            j();
            MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f30957q;
            if (mBridgeH5EndCardView2 != null) {
                mBridgeH5EndCardView2.reportRenderResult("timeout", 3);
                this.f30957q.setError(true);
            }
        }
        MBridgeH5EndCardView mBridgeH5EndCardView3 = this.f30957q;
        if (mBridgeH5EndCardView3 != null) {
            mBridgeH5EndCardView3.setUnitId(this.f30963w);
        }
    }

    private void h() {
        if (this.f30959s == null) {
            a(this.Q, (Integer) 4);
        }
        this.f30959s.setUnitId(this.f30963w);
        this.f30959s.preLoadData(this.Q);
        addView(this.f30959s);
    }

    private void i() {
        if (this.f30955o == null) {
            b(-2);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        if (this.D && this.E) {
            this.E = false;
            layoutParams.width = 1;
            layoutParams.height = 1;
        }
        addView(this.f30955o, layoutParams);
    }

    private void j() {
        this.f30965y = 1;
        if (this.f30956p == null) {
            a(this.Q, (Integer) 2);
        }
        addView(this.f30956p);
        onConfigurationChanged(getResources().getConfiguration());
        this.f30956p.notifyShowListener();
        this.S = true;
        bringToFront();
    }

    private void k() {
        if (this.f30953m == null) {
            preLoadData(this.Q);
        }
        addView(this.f30953m);
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.setUnitId(this.f30963w);
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null && campaignEx.isMraid() && this.f30926b.getPlayable_ads_without_video() == 2) {
                this.f30953m.setCloseVisible(0);
            }
            this.f30953m.setNotchValue(this.P, this.K, this.L, this.M, this.N);
        }
    }

    private void l() {
        if (this.f30958r == null) {
            a(this.Q, (Integer) 3);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        addView(this.f30958r, layoutParams);
        this.f30958r.notifyShowListener();
    }

    private void m() {
        if (this.f30960t == null) {
            b(this.Q);
        }
        addView(this.f30960t);
        onConfigurationChanged(getResources().getConfiguration());
        this.S = true;
        bringToFront();
    }

    private boolean n() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup.indexOfChild(this) == viewGroup.getChildCount() - 1) {
            return true;
        }
        return false;
    }

    private void o() {
        this.C = false;
        this.S = false;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            int i10 = 0;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt = viewGroup.getChildAt(i10);
                if (!(childAt instanceof MBridgeContainerView)) {
                    viewGroup.bringChildToFront(childAt);
                } else {
                    i10++;
                }
            }
        }
    }

    private void p() {
        boolean z10;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getendcard_url();
        int i10 = 404;
        if (!TextUtils.isEmpty(str)) {
            try {
                i10 = Integer.parseInt(b1.a(str, "ecid"));
            } catch (Throwable th2) {
                p0.b(MBridgeBaseView.TAG, th2.getMessage());
            }
        }
        int i11 = i10;
        Context context = this.f30925a;
        if (this.f30926b.getAdSpaceT() == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f30956p = new MBridgeNativeEndCardView(context, null, true, i11, z10, this.f30935k, this.f30926b.getMof_tplid());
        if (this.f30926b.getDynamicTempCode() == 5) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null && (aVar instanceof k)) {
                ((k) aVar).a(this.f30926b);
            }
            this.f30956p.setCampaign(this.f30926b);
            return;
        }
        this.f30956p.setCampaign(this.f30926b);
    }

    private void q() {
        if (this.f30961u == null) {
            MBridgeAlertWebview mBridgeAlertWebview = new MBridgeAlertWebview(this.f30925a);
            this.f30961u = mBridgeAlertWebview;
            mBridgeAlertWebview.setUnitId(this.f30963w);
            this.f30961u.setCampaign(this.f30926b);
        }
        this.f30961u.preLoadData(this.Q);
    }

    private void r() {
        setWrapContent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(12, -1);
        }
    }

    public void addOrderViewData(List<CampaignEx> list) {
        if (list == null) {
            return;
        }
        this.T = list;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (view != null) {
            a(view);
            super.addView(view);
            return;
        }
        p0.b(MBridgeBaseView.TAG, "view is null");
    }

    public boolean canBackPress() {
        if (this.f30956p != null) {
            return false;
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            return mBridgeH5EndCardView.canBackPress();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f30959s;
        if (mBridgeLandingPageView != null) {
            return mBridgeLandingPageView.canBackPress();
        }
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView == null) {
            return false;
        }
        return mBridgePlayableView.canBackPress();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void configurationChanged(int i10, int i11, int i12) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getVisibility() == 0) {
            this.f30955o.resizeMiniCard(i10, i11);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean endCardShowing() {
        return this.B;
    }

    public boolean endcardIsPlayable() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.isPlayable()) {
            return true;
        }
        return false;
    }

    public MBridgeH5EndCardView getH5EndCardView() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView == null) {
            return this.f30953m;
        }
        return mBridgeH5EndCardView;
    }

    public CampaignEx getReSetCampaign() {
        if (!this.f30926b.isDynamicView() || !TextUtils.isEmpty(this.f30926b.getendcard_url())) {
            return null;
        }
        int size = this.T.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 < size) {
                if (this.T.get(i11) != null && this.T.get(i11).getId() == this.f30926b.getId()) {
                    i10 = i11 - 1;
                    break;
                }
                i11++;
            } else {
                break;
            }
        }
        if (i10 < 0 || i10 >= size || this.T.get(i10) == null) {
            return null;
        }
        return this.T.get(i10);
    }

    public boolean getShowingTransparent() {
        return this.D;
    }

    public String getUnitID() {
        return this.f30963w;
    }

    public int getVideoInteractiveType() {
        return this.f30964x;
    }

    public int getVideoSkipTime() {
        return this.H;
    }

    public void handlerPlayableException(String str) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.handlerPlayableException(str);
            if (this.I) {
                f();
                return;
            }
            return;
        }
        f();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void hideAlertWebview() {
        if (!isLast()) {
            if (this.R && !this.S) {
                o();
                this.R = false;
            }
            MBridgeAlertWebview mBridgeAlertWebview = this.f30961u;
            if (mBridgeAlertWebview != null && mBridgeAlertWebview.getParent() != null) {
                removeView(this.f30961u);
                MBridgeClickCTAView mBridgeClickCTAView = this.f30954n;
                if (mBridgeClickCTAView != null && mBridgeClickCTAView.getParent() != null) {
                    r();
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        setVisibility(0);
    }

    public void install(CampaignEx campaignEx) {
        this.notifyListener.a(105, campaignEx);
    }

    public boolean isLast() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null || viewGroup.indexOfChild(this) != 0) {
            return false;
        }
        return true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void ivRewardAdsWithoutVideo(String str) {
        this.notifyListener.a(103, str);
    }

    public boolean miniCardLoaded() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.isLoadSuccess()) {
            return true;
        }
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean miniCardShowing() {
        return this.C;
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i10) {
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.notifyCloseBtn(i10);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.notifyCloseBtn(i10);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(configuration, this.f30953m, this.f30954n, this.f30955o, this.f30956p, this.f30957q, this.f30958r, this.f30959s, this.f30960t);
    }

    public void onEndcardBackPress() {
        if (this.f30956p == null && this.f30958r == null) {
            if (this.f30959s != null) {
                this.notifyListener.a(103, "");
                return;
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.onBackPress();
                return;
            }
            return;
        }
        this.notifyListener.a(104, "");
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void onMiniEndcardBackPress() {
        if (this.C) {
            this.notifyListener.a(107, "");
        }
    }

    public void onPlayableBackPress() {
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.onBackPress();
        }
    }

    public void orientation(Configuration configuration) {
        a(this.f30953m, this.f30955o, this.f30957q, this.f30961u);
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            if (campaignEx.getPlayable_ads_without_video() == 2) {
                a(bVar);
            } else {
                b(this.f30964x);
                if (this.f30926b.isDynamicView()) {
                    try {
                        a(bVar, Integer.valueOf(this.f30926b.getVideo_end_type()));
                    } catch (Throwable th2) {
                        p0.b(MBridgeBaseView.TAG, th2.getMessage());
                        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new a(bVar));
                    }
                    if (!u0.l(this.f30926b.getendcard_url())) {
                        try {
                            String a10 = b1.a(this.f30926b.getendcard_url(), "mof");
                            if (!TextUtils.isEmpty(a10) && Integer.parseInt(a10) == 1) {
                                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f30926b, 2);
                            }
                        } catch (Exception e10) {
                            p0.b(MBridgeBaseView.TAG, e10.getMessage());
                        }
                    }
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new b(bVar), getVideoSkipTime());
                }
            }
            q();
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void readyStatus(int i10) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.readyStatus(i10);
        }
    }

    public void release() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.release();
            this.f30957q = null;
        }
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.release();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f30959s;
        if (mBridgeLandingPageView != null) {
            mBridgeLandingPageView.release();
        }
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f30956p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.clearMoreOfferBitmap();
            this.f30956p.release();
        }
        if (this.notifyListener != null) {
            this.notifyListener = null;
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void resizeMiniCard(int i10, int i11, int i12) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.resizeMiniCard(i10, i11);
            this.f30955o.setRadius(i12);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
        }
    }

    public void setCloseDelayTime(int i10) {
        this.f30966z = i10;
    }

    public void setEndscreenType(int i10) {
        this.f30965y = i10;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
    }

    public void setMBridgeClickMiniCardViewTransparent() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMBridgeClickMiniCardViewTransparent();
            this.f30955o.setMBridgeClickMiniCardViewClickable(false);
        }
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13, int i14) {
        p0.b(MBridgeBaseView.TAG, "NOTCH ContainerView " + String.format("%1s-%2s-%3s-%4s-%5s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i10)));
        this.O = i10;
        this.K = i11;
        this.L = i12;
        this.M = i13;
        this.N = i14;
        this.P = c0.a(i10, i11, i12, i13, i14);
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f30956p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setNotchPadding(i11, i12, i13, i14);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.f30976p != null) {
            mBridgeH5EndCardView.setNotchValue(this.P, i11, i12, i13, i14);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30957q.f30976p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null && mBridgePlayableView.f30976p != null) {
            mBridgePlayableView.setNotchValue(this.P, i11, i12, i13, i14);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f30953m.f30976p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgeOrderCampView mBridgeOrderCampView = this.f30962v;
        if (mBridgeOrderCampView != null) {
            mBridgeOrderCampView.setNotchPadding(i11, i12, i13, i14);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        super.setNotifyListener(aVar);
        a(aVar, this.f30953m, this.f30954n, this.f30955o, this.f30956p, this.f30957q, this.f30958r, this.f30959s, this.f30960t);
    }

    public void setOnPause() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f30956p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnPause();
        }
    }

    public void setOnResume() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f30956p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnResume();
        }
    }

    public void setPlayCloseBtnTm(int i10) {
        this.A = i10;
    }

    public void setRewardStatus(boolean z10) {
        this.J = z10;
    }

    public void setShowingTransparent(boolean z10) {
        this.D = z10;
    }

    public void setUnitID(String str) {
        this.f30963w = str;
    }

    public void setVideoInteractiveType(int i10) {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            int b10 = com.mbridge.msdk.video.dynview.util.a.b(this.f30926b);
            if (b10 == 100) {
                this.f30964x = i10;
                return;
            } else {
                this.f30964x = b10;
                return;
            }
        }
        this.f30964x = i10;
    }

    public void setVideoSkipTime(int i10) {
        this.H = i10;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean showAlertWebView() {
        MBridgeAlertWebview mBridgeAlertWebview = this.f30961u;
        if (mBridgeAlertWebview == null || !mBridgeAlertWebview.isLoadSuccess()) {
            return false;
        }
        setMatchParent();
        if (!n() && !this.S) {
            removeAllViews();
            bringToFront();
            this.R = true;
        }
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getParent() != null) {
            return false;
        }
        e();
        setBackgroundColor(0);
        this.f30961u.webviewshow();
        return true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showEndcard(int i10) {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            if (i10 != 1) {
                if (i10 != 100) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                removeAllViews();
                                setMatchParent();
                                this.S = true;
                                bringToFront();
                                f();
                                this.notifyListener.a(117, "");
                            } else {
                                this.notifyListener.a(106, "");
                            }
                        } else {
                            this.notifyListener.a(113, "");
                            removeAllViews();
                            setMatchParent();
                            h();
                            this.S = true;
                            bringToFront();
                        }
                    } else {
                        removeAllViews();
                        setMatchParent();
                        l();
                        this.S = true;
                        bringToFront();
                    }
                } else {
                    if (campaignEx.getPlayable_ads_without_video() == 2) {
                        this.G = true;
                    }
                    a(this.f30953m);
                    setMatchParent();
                    j();
                }
            } else {
                this.notifyListener.a(104, "");
            }
        }
        this.B = true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showMiniCard(int i10, int i11, int i12, int i13, int i14) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMiniCardLocation(i10, i11, i12, i13);
            this.f30955o.setRadius(i14);
            this.f30955o.setCloseVisible(8);
            this.f30955o.setClickable(false);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
            if (!this.F) {
                this.F = true;
                this.notifyListener.a(109, "");
                this.notifyListener.a(117, "");
            }
        }
    }

    public void showOrderCampView() {
        MBridgeOrderCampView mBridgeOrderCampView = new MBridgeOrderCampView(this.f30925a);
        this.f30962v = mBridgeOrderCampView;
        mBridgeOrderCampView.setCampaignExes(this.T);
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null && (aVar instanceof k)) {
            ((k) aVar).a(this.T);
        }
        this.f30962v.setNotifyListener(new i(this.notifyListener));
        this.f30962v.setRewarded(this.J);
        this.f30962v.setNotchPadding(this.K, this.L, this.M, this.N);
        this.f30962v.setCampOrderViewBuildCallback(new c());
        this.f30962v.createView(this);
    }

    public void showPlayableView() {
        if (this.f30926b != null && !this.G) {
            removeAllViews();
            setMatchParent();
            k();
            this.S = true;
            bringToFront();
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoClickView(int i10) {
        if (this.f30926b != null) {
            if (i10 != -1) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        MBridgeClickCTAView mBridgeClickCTAView = this.f30954n;
                        if (mBridgeClickCTAView != null && mBridgeClickCTAView.getParent() != null) {
                            removeView(this.f30954n);
                        }
                        MBridgeAlertWebview mBridgeAlertWebview = this.f30961u;
                        if (mBridgeAlertWebview != null && mBridgeAlertWebview.getParent() != null) {
                            return;
                        }
                        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
                        if (mBridgeClickMiniCardView == null || mBridgeClickMiniCardView.getParent() == null) {
                            try {
                                CampaignEx campaignEx = this.f30926b;
                                if (campaignEx != null && campaignEx.getPlayable_ads_without_video() == 1) {
                                    setMatchParent();
                                    i();
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (miniCardLoaded()) {
                            MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
                            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getParent() != null) {
                                removeView(this.f30957q);
                            }
                            this.notifyListener.a(112, "");
                            CampaignEx campaignEx2 = this.f30926b;
                            if (campaignEx2 != null && !campaignEx2.isHasReportAdTrackPause()) {
                                this.f30926b.setHasReportAdTrackPause(true);
                                com.mbridge.msdk.video.module.report.b.c(this.f30925a, this.f30926b);
                            }
                            if (this.D) {
                                this.notifyListener.a(115, "");
                            } else {
                                this.S = true;
                                bringToFront();
                                webviewshow();
                                onConfigurationChanged(getResources().getConfiguration());
                            }
                            this.C = true;
                            return;
                        }
                        o();
                    }
                } else if (this.B) {
                } else {
                    MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f30957q;
                    if (mBridgeH5EndCardView2 != null && mBridgeH5EndCardView2.getParent() != null) {
                        removeView(this.f30957q);
                    }
                    MBridgeClickMiniCardView mBridgeClickMiniCardView2 = this.f30955o;
                    if (mBridgeClickMiniCardView2 != null && mBridgeClickMiniCardView2.getParent() != null) {
                        removeView(this.f30955o);
                    }
                    MBridgeClickCTAView mBridgeClickCTAView2 = this.f30954n;
                    if (mBridgeClickCTAView2 == null || mBridgeClickCTAView2.getParent() == null) {
                        try {
                            CampaignEx campaignEx3 = this.f30926b;
                            if (campaignEx3 != null && campaignEx3.getPlayable_ads_without_video() == 1) {
                                this.S = true;
                                addCTAView();
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    if (isLast()) {
                        bringToFront();
                    }
                }
            } else if (!isLast() && !endCardShowing()) {
                o();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoEndCover() {
        removeAllViews();
        setMatchParent();
        m();
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i10) {
        MBridgePlayableView mBridgePlayableView = this.f30953m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.toggleCloseBtn(i10);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f30957q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.toggleCloseBtn(i10);
        }
    }

    public void triggerCloseBtn(String str) {
        try {
            e eVar = new e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f30926b);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
        if (this.f30926b != null) {
            this.notifyListener.a(122, "");
            this.notifyListener.a(104, "");
        }
    }

    public void webviewshow() {
        try {
            e eVar = new e();
            eVar.a("type", 3);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.f30926b, eVar);
        } catch (Exception unused) {
        }
        b(this.f30953m, this.f30955o, this.f30957q, this.f30961u);
    }

    private void a(View view) {
        if (view != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            } catch (Throwable th2) {
                p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view != null) {
            a(view);
            super.addView(view, layoutParams);
            return;
        }
        p0.b(MBridgeBaseView.TAG, "view is null");
    }

    private void a(com.mbridge.msdk.video.signal.factory.b bVar) {
        if (this.f30953m == null) {
            this.f30953m = new MBridgePlayableView(this.f30925a);
        }
        this.f30953m.setCloseDelayShowTime(this.f30966z);
        this.f30953m.setPlayCloseBtnTm(this.A);
        this.f30953m.setCampaign(this.f30926b);
        this.f30953m.setNotifyListener(new d(this.notifyListener));
        this.f30953m.preLoadData(bVar);
    }

    private void b(int i10) {
        if (i10 != -3) {
            if (i10 != -2) {
                if (this.f30954n == null) {
                    this.f30954n = new MBridgeClickCTAView(this.f30925a);
                }
                this.f30954n.setCampaign(this.f30926b);
                this.f30954n.setUnitId(this.f30963w);
                this.f30954n.setNotifyListener(new i(this.notifyListener));
                this.f30954n.preLoadData(this.Q);
                return;
            }
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || campaignEx.getVideo_end_type() != 2) {
                return;
            }
            if (this.f30955o == null) {
                this.f30955o = new MBridgeClickMiniCardView(this.f30925a);
            }
            this.f30955o.setCampaign(this.f30926b);
            MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f30955o;
            mBridgeClickMiniCardView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(mBridgeClickMiniCardView, this.notifyListener));
            this.f30955o.preLoadData(this.Q);
            setMatchParent();
            i();
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.video.signal.factory.b bVar, Integer num) {
        CampaignEx campaignEx;
        com.mbridge.msdk.video.module.listener.a aVar;
        CampaignEx campaignEx2;
        this.Q = bVar;
        CampaignEx campaignEx3 = this.f30926b;
        if (campaignEx3 != null) {
            if (num == null) {
                num = Integer.valueOf(campaignEx3.getVideo_end_type());
            }
            if (!isLast()) {
                o();
            }
            int intValue = num.intValue();
            if (intValue != 1) {
                if (intValue == 3) {
                    if (this.f30958r == null) {
                        this.f30958r = new MBridgeVastEndCardView(this.f30925a);
                    }
                    this.f30958r.setCampaign(this.f30926b);
                    this.f30958r.setNotifyListener(new l(this.notifyListener));
                    this.f30958r.preLoadData(bVar);
                } else if (intValue == 4) {
                    if (this.f30959s == null) {
                        this.f30959s = new MBridgeLandingPageView(this.f30925a);
                    }
                    this.f30959s.setCampaign(this.f30926b);
                    this.f30959s.setNotifyListener(new i(this.notifyListener));
                } else if (intValue != 5) {
                    if (this.f30965y == 2) {
                        boolean isDynamicView = this.f30926b.isDynamicView();
                        boolean l10 = u0.l(this.f30926b.getendcard_url());
                        if ((isDynamicView && !l10 && (campaignEx2 = this.f30926b) != null && !campaignEx2.isMraid()) || (campaignEx = this.f30926b) == null || campaignEx.getAdSpaceT() == 2) {
                            return;
                        }
                        if (this.f30957q == null) {
                            this.f30957q = new MBridgeH5EndCardView(this.f30925a);
                            try {
                                e eVar = new e();
                                eVar.a("type", 3);
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", this.f30926b, eVar);
                            } catch (Throwable th2) {
                                p0.b(MBridgeBaseView.TAG, th2.getMessage());
                            }
                        }
                        if (this.f30926b.getDynamicTempCode() == 5 && (aVar = this.notifyListener) != null && (aVar instanceof k)) {
                            ((k) aVar).a(this.f30926b);
                        }
                        this.f30957q.setCampaign(this.f30926b);
                        this.f30957q.setCloseDelayShowTime(this.f30966z);
                        this.f30957q.setNotifyListener(new i(this.notifyListener));
                        this.f30957q.setUnitId(this.f30963w);
                        this.f30957q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
                        this.f30957q.preLoadData(bVar);
                        if (this.D) {
                            return;
                        }
                        addView(this.f30957q);
                        return;
                    }
                    CampaignEx campaignEx4 = this.f30926b;
                    int b10 = (campaignEx4 == null || campaignEx4.getRewardTemplateMode() == null) ? 0 : this.f30926b.getRewardTemplateMode().b();
                    if (this.f30956p == null) {
                        CampaignEx campaignEx5 = this.f30926b;
                        if (campaignEx5 != null && campaignEx5.isDynamicView()) {
                            p();
                        } else {
                            Context context = this.f30925a;
                            CampaignEx campaignEx6 = this.f30926b;
                            boolean z10 = campaignEx6 != null && campaignEx6.getAdSpaceT() == 2;
                            CampaignEx campaignEx7 = this.f30926b;
                            MBridgeNativeEndCardView mBridgeNativeEndCardView = new MBridgeNativeEndCardView(context, null, false, -1, z10, b10, campaignEx7 != null ? campaignEx7.getMof_tplid() : 0);
                            this.f30956p = mBridgeNativeEndCardView;
                            mBridgeNativeEndCardView.setCampaign(this.f30926b);
                        }
                    }
                    this.f30956p.setLayout();
                    if (this.f30926b.isDynamicView()) {
                        com.mbridge.msdk.video.dynview.moffer.a a10 = com.mbridge.msdk.video.dynview.moffer.a.a();
                        if (a10.b(this.f30926b.getRequestId() + "_" + this.f30926b.getId())) {
                            try {
                                com.mbridge.msdk.video.dynview.moffer.a a11 = com.mbridge.msdk.video.dynview.moffer.a.a();
                                MBridgeNativeEndCardView mBridgeNativeEndCardView2 = this.f30956p;
                                a11.a(mBridgeNativeEndCardView2, this.f30926b.getRequestId() + "_" + this.f30926b.getId(), new i(this.notifyListener));
                            } catch (Exception e10) {
                                p0.b(MBridgeBaseView.TAG, e10.getMessage());
                            }
                        } else {
                            try {
                                String a12 = b1.a(this.f30926b.getendcard_url(), "mof");
                                if (!TextUtils.isEmpty(a12) && Integer.parseInt(a12) == 1) {
                                    com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f30926b, this.f30956p, new i(this.notifyListener), 2);
                                }
                            } catch (Exception e11) {
                                p0.b(MBridgeBaseView.TAG, e11.getMessage());
                            }
                        }
                    }
                    this.f30956p.setUnitId(this.f30963w);
                    this.f30956p.setCloseBtnDelay(this.f30966z);
                    this.f30956p.setNotifyListener(new i(this.notifyListener));
                    this.f30956p.preLoadData(bVar);
                    this.f30956p.setNotchPadding(this.K, this.L, this.M, this.N);
                }
            }
        }
    }

    public MBridgeContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30965y = 1;
        this.f30966z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    private void b(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0 && mBridgeH5EndCardView.getParent() != null && !isLast()) {
                mBridgeH5EndCardView.webviewshow();
            }
        }
    }

    private void a(com.mbridge.msdk.video.module.listener.a aVar, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null) {
                if (mBridgeBaseView instanceof MBridgeClickMiniCardView) {
                    mBridgeBaseView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(this.f30955o, aVar));
                } else {
                    mBridgeBaseView.setNotifyListener(new i(aVar));
                }
            }
        }
    }

    private void a(Configuration configuration, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null && (mBridgeBaseView instanceof MBridgeClickMiniCardView)) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            } else if (mBridgeBaseView != null && mBridgeBaseView.getVisibility() == 0 && mBridgeBaseView.getParent() != null && !isLast()) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            }
        }
    }

    private void a(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0) {
                mBridgeH5EndCardView.orientation(getResources().getConfiguration());
            }
        }
    }
}
