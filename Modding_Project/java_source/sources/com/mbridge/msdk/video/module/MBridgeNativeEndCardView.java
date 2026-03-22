package com.mbridge.msdk.video.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeNativeEndCardView extends MBridgeNativeEndCardViewDiff {
    private LinearLayout A;
    private Runnable B;
    private Runnable C;
    private RelativeLayout D;
    private com.mbridge.msdk.video.signal.factory.b E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private AlphaAnimation K;
    private int L;
    private int M;
    private int N;
    private int O;
    private Bitmap P;
    private View Q;
    private FeedBackButton R;
    private String S;
    private CampaignUnit T;
    private MBShakeView U;
    private com.mbridge.msdk.shake.b V;
    private MBridgeBaitClickView W;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f31005a0;

    /* renamed from: b0  reason: collision with root package name */
    private int f31006b0;

    /* renamed from: c0  reason: collision with root package name */
    private String f31007c0;

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f31008m;

    /* renamed from: n  reason: collision with root package name */
    private ViewGroup f31009n;

    /* renamed from: o  reason: collision with root package name */
    private RelativeLayout f31010o;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f31011p;

    /* renamed from: q  reason: collision with root package name */
    private ImageView f31012q;

    /* renamed from: r  reason: collision with root package name */
    private ImageView f31013r;

    /* renamed from: s  reason: collision with root package name */
    private ImageView f31014s;

    /* renamed from: t  reason: collision with root package name */
    private TextView f31015t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f31016u;

    /* renamed from: v  reason: collision with root package name */
    private ImageView f31017v;

    /* renamed from: w  reason: collision with root package name */
    private TextView f31018w;

    /* renamed from: x  reason: collision with root package name */
    private TextView f31019x;

    /* renamed from: y  reason: collision with root package name */
    private TextView f31020y;

    /* renamed from: z  reason: collision with root package name */
    private LinearLayout f31021z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.widget.a {
        a() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                        MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
                        MBridgeNativeEndCardView.this.c(0);
                        return;
                    }
                    return;
                }
                MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeNativeEndCardView.this.D != null) {
                CampaignEx campaignEx = MBridgeNativeEndCardView.this.f30926b;
                if (campaignEx != null && !campaignEx.isDynamicView() && MBridgeNativeEndCardView.this.f30926b.getAdSpaceT() != 2) {
                    MBridgeNativeEndCardView.this.D.setPadding(MBridgeNativeEndCardView.this.L, MBridgeNativeEndCardView.this.N, MBridgeNativeEndCardView.this.M, MBridgeNativeEndCardView.this.O);
                    MBridgeNativeEndCardView.this.D.startAnimation(MBridgeNativeEndCardView.this.K);
                }
                MBridgeNativeEndCardView.this.D.setVisibility(0);
            }
            if (MBridgeNativeEndCardView.this.Q != null && MBridgeNativeEndCardView.this.Q.getVisibility() != 0 && MBridgeNativeEndCardView.this.G) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
            MBridgeNativeEndCardView.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e extends com.mbridge.msdk.shake.b {
        e(int i10, int i11) {
            super(i10, i11);
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            if ((com.mbridge.msdk.util.b.a() && MBridgeNativeEndCardView.this.checkChinaShakeState()) || MBridgeNativeEndCardView.this.I || !MBridgeNativeEndCardView.this.H) {
                return;
            }
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.f30930f = 0.0f;
            mBridgeNativeEndCardView.f30931g = 0.0f;
            mBridgeNativeEndCardView.f30926b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f30926b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f30926b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    /* loaded from: classes6.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.G = true;
            if (MBridgeNativeEndCardView.this.Q != null) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class l implements com.mbridge.msdk.foundation.feedback.a {
        l() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f31034a;

        /* loaded from: classes6.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                if (mBridgeNativeEndCardView.f30932h) {
                    mBridgeNativeEndCardView.f31011p.setBackground(null);
                }
                p0.b("async", "执行异步加载图");
                MBridgeNativeEndCardView.this.f31011p.setImageBitmap(MBridgeNativeEndCardView.this.P);
            }
        }

        m(Bitmap bitmap) {
            this.f31034a = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.P = mBridgeNativeEndCardView.blurBitmap(this.f31034a);
            if (MBridgeNativeEndCardView.this.P != null && !MBridgeNativeEndCardView.this.P.isRecycled() && MBridgeNativeEndCardView.this.f31011p != null) {
                MBridgeNativeEndCardView.this.f31011p.post(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.F) {
                MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(1);
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
            if (MBridgeNativeEndCardView.this.f30932h) {
                try {
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                } catch (Exception e10) {
                    p0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
                try {
                    CampaignEx campaignEx = MBridgeNativeEndCardView.this.f30926b;
                    if (campaignEx != null) {
                        String a10 = b1.a(campaignEx.getendcard_url(), "ecid");
                        String a11 = b1.a(MBridgeNativeEndCardView.this.f30926b.getendcard_url(), "mof");
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("type", "choseFromTwoClose");
                        eVar.a("endcard_id", a10);
                        eVar.a("mof", a11);
                        com.mbridge.msdk.video.module.report.a.a("2000103", MBridgeNativeEndCardView.this.f30926b, eVar);
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                    }
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a("type", 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", MBridgeNativeEndCardView.this.f30926b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
            MBridgeNativeEndCardView.this.notifyListener.a(104, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class p extends com.mbridge.msdk.widget.a {
        p() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(1);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class q extends com.mbridge.msdk.widget.a {
        q() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                        MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
                        MBridgeNativeEndCardView.this.c(0);
                        return;
                    }
                    return;
                }
                MBridgeNativeEndCardView.this.f30926b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(0);
            }
        }
    }

    public MBridgeNativeEndCardView(Context context) {
        super(context);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f31005a0 = false;
        this.f31006b0 = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBannerBackGroundBlurBimap(Bitmap bitmap) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new m(bitmap));
        } catch (Exception e10) {
            p0.a(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript create = RenderScript.create(this.f30925a.getApplicationContext());
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, bitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(25.0f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            create.destroy();
            return createBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean canBackPress() {
        View view = this.Q;
        if (view != null && view.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public void clearMoreOfferBitmap() {
        CampaignUnit campaignUnit;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView() && (campaignUnit = this.T) != null && campaignUnit.getAds() != null && this.T.getAds().size() > 0) {
            Iterator<CampaignEx> it = this.T.getAds().iterator();
            while (it.hasNext()) {
                CampaignEx next = it.next();
                if (!TextUtils.isEmpty(next.getIconUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(next.getIconUrl());
                }
            }
        }
    }

    public boolean isDyXmlSuccess() {
        return this.f31005a0;
    }

    public void notifyShowListener() {
        this.notifyListener.a(110, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B == null) {
            this.B = new i();
        }
        Runnable runnable = this.B;
        if (runnable != null) {
            postDelayed(runnable, this.J * 1000);
            if (!this.H) {
                this.H = true;
            }
            m();
        }
        e();
        g();
        n();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.B;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.C;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        if (this.V != null) {
            com.mbridge.msdk.shake.a.a().b(this.V);
            this.V = null;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            return;
        }
        RelativeLayout relativeLayout = this.D;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(4);
        }
        int i10 = configuration.orientation;
        this.f30928d = i10;
        if (i10 == 2) {
            removeView(this.f31008m);
            b(this.f31009n);
            return;
        }
        removeView(this.f31009n);
        b(this.f31008m);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeNativeEndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.E = bVar;
        try {
            if (this.f30926b != null && this.f30929e) {
                h();
            }
        } catch (Throwable th2) {
            p0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.K;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.B = null;
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setCloseBtnDelay(int i10) {
        this.J = i10;
    }

    public void setLayout() {
        if (this.f30932h) {
            i();
        } else {
            j();
        }
    }

    public void setMoreOfferCampaignUnit(CampaignUnit campaignUnit) {
        MBShakeView mBShakeView;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            this.T = campaignUnit;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.T.getAds().size() > 5 && (mBShakeView = this.U) != null) {
                mBShakeView.setPadding(0, 0, 0, u0.a(getContext(), 5.0f));
            }
        }
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        p0.b(MBridgeBaseView.TAG, "NOTCH NativeEndCard " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
        this.L = i10;
        this.M = i11;
        this.N = i12;
        this.O = i13;
        o();
    }

    public void setOnPause() {
        this.H = false;
    }

    public void setOnResume() {
        this.H = true;
    }

    public void setUnitId(String str) {
        this.S = str;
    }

    private void e() {
        MBridgeBaitClickView mBridgeBaitClickView;
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String str = this.f30926b.getendcard_url();
            if (TextUtils.isEmpty(str)) {
                str = this.f30926b.getEndScreenUrl();
            }
            String a10 = b1.a(str, "bait_click");
            int parseInt = Integer.parseInt(a10);
            if (TextUtils.isEmpty(a10) || parseInt == 0 || (mBridgeBaitClickView = this.W) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.W.init(1342177280, parseInt);
            if (this.f30926b.getEcTemplateId() == 1302) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setColor(1342177280);
                gradientDrawable.setStroke(0, SupportMenu.CATEGORY_MASK);
                gradientDrawable.setCornerRadius(25.0f);
                this.W.setBackground(gradientDrawable);
            }
            this.W.startAnimation();
            a1.a(this.W, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            this.W.setOnClickListener(new f());
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.S);
            com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
            b10.a(this.S + "_2", this.f30926b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
            b11.a(this.S + "_2", new c());
            com.mbridge.msdk.foundation.feedback.b b12 = com.mbridge.msdk.foundation.feedback.b.b();
            b12.d(this.S + "_1");
            if (this.R != null) {
                com.mbridge.msdk.foundation.feedback.b b13 = com.mbridge.msdk.foundation.feedback.b.b();
                b13.a(this.S + "_2", this.R);
                return;
            }
            return;
        }
        FeedBackButton feedBackButton = this.R;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    private void g() {
        int parseInt;
        int parseInt2;
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String str = this.f30926b.getendcard_url();
            if (TextUtils.isEmpty(str)) {
                str = this.f30926b.getEndScreenUrl();
            }
            String a10 = b1.a(str, "shake_show");
            String a11 = b1.a(str, "shake_strength");
            String a12 = b1.a(str, "shake_time");
            if (!TextUtils.isEmpty(a10) && a10.equals("1") && this.U == null) {
                MBridgeBaitClickView mBridgeBaitClickView = this.W;
                if (mBridgeBaitClickView != null) {
                    mBridgeBaitClickView.setVisibility(8);
                }
                MBShakeView mBShakeView = new MBShakeView(getContext());
                this.U = mBShakeView;
                mBShakeView.initView(this.f30926b.getAdCall(), true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (!isLandscape()) {
                    layoutParams.addRule(2, filterFindViewId(this.f31005a0, "mbridge_iv_logo"));
                    layoutParams.addRule(14);
                    this.U.setPadding(0, 0, 0, u0.a(getContext(), 20.0f));
                } else {
                    layoutParams.addRule(13);
                }
                this.U.setLayoutParams(layoutParams);
                RelativeLayout relativeLayout = this.f31010o;
                if (relativeLayout != null && relativeLayout.isShown()) {
                    this.f31010o.addView(this.U);
                    TextView textView = this.ctaView;
                    if (textView != null) {
                        textView.setVisibility(4);
                    }
                    a1.a(this.U, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
                    this.U.setOnClickListener(new d());
                    int i10 = 10;
                    if (!TextUtils.isEmpty(a11) && (parseInt2 = Integer.parseInt(a11)) > 0) {
                        i10 = parseInt2;
                    }
                    int i11 = 5000;
                    if (!TextUtils.isEmpty(a12) && (parseInt = Integer.parseInt(a12)) > 0) {
                        i11 = parseInt * 1000;
                    }
                    this.V = new e(i10, i11);
                    com.mbridge.msdk.shake.a.a().a(this.V);
                }
            }
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void h() {
        com.mbridge.msdk.foundation.same.image.b.a(this.f30925a.getApplicationContext()).a(this.f30926b.getImageUrl(), new k());
        com.mbridge.msdk.foundation.same.image.b.a(this.f30925a.getApplicationContext()).a(this.f30926b.getIconUrl(), new com.mbridge.msdk.video.module.listener.impl.j(this.f31013r, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
        this.f31018w.setText(this.f30926b.getAppName());
        TextView textView = this.ctaView;
        if (textView != null) {
            textView.setText(this.f30926b.getAdCall());
        }
        TextView textView2 = this.f31019x;
        if (textView2 != null) {
            textView2.setText(this.f30926b.getAppDesc());
        }
        TextView textView3 = this.f31020y;
        if (textView3 != null) {
            textView3.setText(this.f30926b.getNumberRating() + ")");
        }
        this.f31021z.removeAllViews();
        double rating = this.f30926b.getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        LinearLayout linearLayout = this.f31021z;
        if (linearLayout instanceof StarLevelView) {
            ((StarLevelView) linearLayout).initScore(rating);
        }
        LinearLayout linearLayout2 = this.f31021z;
        if (linearLayout2 instanceof MBridgeLevelLayoutView) {
            ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, this.f30926b.getNumberRating());
        }
        LinearLayout linearLayout3 = this.f31021z;
        if (linearLayout3 instanceof MBStarLevelLayoutView) {
            ((MBStarLevelLayoutView) linearLayout3).setRating((int) rating);
        }
        LinearLayout linearLayout4 = this.A;
        if (linearLayout4 != null && (linearLayout4 instanceof MBHeatLevelLayoutView)) {
            ((MBHeatLevelLayoutView) linearLayout4).setHeatCount(this.f30926b.getNumberRating());
        }
        if (!TextUtils.isEmpty(this.f30926b.getendcard_url()) && this.f30926b.getendcard_url().contains("alecfc=1")) {
            this.F = true;
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            this.f31014s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f31007c0 = "广告";
        } else {
            this.f31014s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f31007c0 = "AD";
        }
        if (this.f31006b0 == 0) {
            ImageView imageView = this.f31014s;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
            ImageView imageView2 = this.f31016u;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
            TextView textView4 = this.f31015t;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.f31015t.setText(this.f31007c0);
            }
        }
        u0.a(2, this.f31017v, this.f30926b, this.f30925a, true, new l());
        if (this.G) {
            return;
        }
        this.Q.setVisibility(8);
    }

    private void i() {
        String str;
        if (com.mbridge.msdk.util.b.a()) {
            str = "cn_";
        } else {
            str = "en_";
        }
        com.mbridge.msdk.video.dynview.c a10 = new com.mbridge.msdk.video.dynview.wrapper.c().a(getContext(), this.f30926b, this.f30933i, str);
        this.f31006b0 = a10.o();
        com.mbridge.msdk.video.dynview.b.a().a(a10, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int k10 = k();
        if (h0.a(k10)) {
            this.f30929e = b(k10);
            l();
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null) {
                campaignEx.setECTemplateRenderSucc(false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r6.f30934j != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        r1 = "mbridge_reward_endcard_native_half_landscape";
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
        if (r6.f30934j != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k() {
        /*
            r6 = this;
            int r0 = r6.f30935k
            java.lang.String r1 = "mbridge_reward_endcard_native_land"
            java.lang.String r2 = "mbridge_reward_endcard_native_half_landscape"
            java.lang.String r3 = "mbridge_reward_endcard_native_hor"
            java.lang.String r4 = "mbridge_reward_endcard_native_half_portrait"
            if (r0 != 0) goto L1f
            boolean r0 = r6.f30934j
            if (r0 == 0) goto L11
            r3 = r4
        L11:
            boolean r0 = r6.isLandscape()
            if (r0 == 0) goto L1d
            boolean r0 = r6.f30934j
            if (r0 == 0) goto L32
        L1b:
            r1 = r2
            goto L32
        L1d:
            r1 = r3
            goto L32
        L1f:
            r5 = 1
            if (r0 != r5) goto L28
            boolean r5 = r6.f30934j
            if (r5 == 0) goto L2a
            r3 = r4
            goto L2a
        L28:
            java.lang.String r3 = ""
        L2a:
            r4 = 2
            if (r0 != r4) goto L1d
            boolean r0 = r6.f30934j
            if (r0 == 0) goto L32
            goto L1b
        L32:
            int r0 = r6.findLayout(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.k():int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        d();
        if (!this.f30929e) {
            this.notifyListener.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.K = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void m() {
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String str = this.f30926b.getendcard_url();
            if (TextUtils.isEmpty(str)) {
                str = this.f30926b.getEndScreenUrl();
            }
            String a10 = b1.a(str, "alac");
            if (TextUtils.isEmpty(a10) || !a10.equals("1") || this.f30926b.getAutoShowStoreMiniCard() == 1) {
                return;
            }
            postDelayed(new g(), 1000L);
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void n() {
        try {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx == null || campaignEx.getAutoShowStoreMiniCard() == 0 || TextUtils.isEmpty(this.f30926b.getDeepLinkURL())) {
                return;
            }
            long showStoreMiniCardDelayTime = this.f30926b.getShowStoreMiniCardDelayTime();
            if (showStoreMiniCardDelayTime == 0) {
                showStoreMiniCardDelayTime = 1;
            }
            if (this.C == null) {
                this.C = new h();
            }
            postDelayed(this.C, showStoreMiniCardDelayTime * 1000);
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void o() {
        RelativeLayout relativeLayout;
        if (!this.f30929e || (relativeLayout = this.D) == null) {
            return;
        }
        relativeLayout.postDelayed(new b(), 200L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        if (this.f30929e) {
            a1.a(this.f31010o, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            this.f31010o.setOnClickListener(new n());
            this.Q.setOnClickListener(new o());
            TextView textView = this.ctaView;
            if (textView != null) {
                a1.a(textView, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
                this.ctaView.setOnClickListener(new p());
            }
            a1.a(this.f31013r, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            this.f31013r.setOnClickListener(new q());
            a1.a(this.f31012q, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            this.f31012q.setOnClickListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10) {
        JSONObject jSONObject;
        CampaignEx.c rewardTemplateMode;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                String str = "";
                if (this.f30926b.getRewardTemplateMode() != null) {
                    str = rewardTemplateMode.f() + "";
                }
                com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "end_card_click", this.f30926b.getCampaignUnitId(), this.f30926b.isBidCampaign(), this.f30926b.getRequestId(), this.f30926b.getRequestIdNotice(), this.f30926b.getId(), str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, a(i10));
                if (this.f30926b.getDynamicTempCode() == 5) {
                    jSONObject.put("camp_position", 0);
                }
            } catch (JSONException e11) {
                e = e11;
                e.printStackTrace();
                this.f30926b.setClickTempSource(2);
                this.notifyListener.a(105, jSONObject);
            }
        } catch (JSONException e12) {
            e = e12;
            jSONObject = null;
        }
        this.f30926b.setClickTempSource(2);
        this.notifyListener.a(105, jSONObject);
    }

    private void b(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.E);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            a(view);
            d();
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view) {
        try {
            this.f31010o = (RelativeLayout) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_native_ec_layout"));
            this.f31012q = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_adbanner"));
            this.f31013r = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_icon"));
            this.f31014s = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_flag"));
            this.f31015t = (TextView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_tv_flag"));
            this.f31016u = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_logo"));
            this.f31017v = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_link"));
            this.f31018w = (TextView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_tv_apptitle"));
            this.f31021z = (LinearLayout) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_sv_starlevel"));
            this.A = (LinearLayout) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_sv_heat_count_level"));
            this.Q = view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_close"));
            this.ctaView = (TextView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_tv_cta"));
            this.R = (FeedBackButton) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_native_endcard_feed_btn"));
            this.D = (RelativeLayout) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_native_ec_controller"));
            this.f31011p = (ImageView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_iv_adbanner_bg"));
            this.W = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f31005a0, "mbridge_animation_click_view"));
            this.f31019x = (TextView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_tv_appdesc"));
            if (this.f30932h) {
                ImageView imageView = this.f31012q;
                if (imageView != null && (imageView instanceof RoundImageView)) {
                    ((RoundImageView) imageView).setBorderRadius(10);
                }
                ImageView imageView2 = this.f31013r;
                if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                    ((RoundImageView) imageView2).setBorderRadius(10);
                }
                return isNotNULL(this.f31012q, this.f31013r, this.f31018w, this.f31021z, this.Q, this.ctaView);
            }
            TextView textView = (TextView) view.findViewById(filterFindViewId(this.f31005a0, "mbridge_tv_number"));
            this.f31020y = textView;
            return isNotNULL(this.f31012q, this.f31013r, this.f31018w, this.f31019x, textView, this.f31021z, this.Q, this.ctaView);
        } catch (Throwable th2) {
            p0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f31005a0 = false;
        this.f31006b0 = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class j implements com.mbridge.msdk.video.dynview.listener.h {
        j() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                MBridgeNativeEndCardView.this.addView(aVar.b());
                MBridgeNativeEndCardView.this.f31005a0 = aVar.c();
                if (!MBridgeNativeEndCardView.this.ctaViewCanGet(aVar.b(), MBridgeNativeEndCardView.this.f31005a0)) {
                    MBridgeNativeEndCardView.this.f31005a0 = false;
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView.f30932h = false;
                    mBridgeNativeEndCardView.j();
                } else {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView2 = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView2.f30929e = mBridgeNativeEndCardView2.a(aVar.b());
                    MBridgeNativeEndCardView.this.l();
                }
                MBridgeNativeEndCardView mBridgeNativeEndCardView3 = MBridgeNativeEndCardView.this;
                CampaignEx campaignEx = mBridgeNativeEndCardView3.f30926b;
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(mBridgeNativeEndCardView3.f31005a0);
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            p0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.b());
        }
    }

    private boolean b(int i10) {
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.f30927c.inflate(i10, (ViewGroup) null);
            this.f31009n = viewGroup;
            addView(viewGroup);
            return a(this.f31009n);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f30927c.inflate(i10, (ViewGroup) null);
        this.f31008m = viewGroup2;
        addView(viewGroup2);
        return a(this.f31008m);
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet, boolean z10, int i10, boolean z11, int i11, int i12) {
        super(context, attributeSet, z10, i10, z11, i11, i12);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f31005a0 = false;
        this.f31006b0 = 1;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class k implements com.mbridge.msdk.foundation.same.image.c {
        k() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    if (MBridgeNativeEndCardView.this.f31012q != null) {
                        MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                        if (mBridgeNativeEndCardView.f30932h) {
                            mBridgeNativeEndCardView.f31012q.setBackground(null);
                        }
                        MBridgeNativeEndCardView.this.f31012q.setImageBitmap(bitmap);
                    }
                    MBridgeNativeEndCardView.this.setBannerBackGroundBlurBimap(bitmap);
                } catch (Throwable unused) {
                    if (MBridgeNativeEndCardView.this.f31011p != null) {
                        MBridgeNativeEndCardView.this.f31011p.setVisibility(4);
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
