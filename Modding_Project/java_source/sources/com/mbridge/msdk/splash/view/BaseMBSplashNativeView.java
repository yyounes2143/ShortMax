package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.splash.view.nativeview.MBNoRecycledCrashImageView;
import com.mbridge.msdk.splash.view.nativeview.MBSplashClickView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.ss.ttm.player.MediaPlayer;
/* loaded from: classes6.dex */
public class BaseMBSplashNativeView extends RelativeLayout {
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private boolean F;
    private boolean G;
    protected boolean H;
    protected boolean I;
    protected boolean J;
    protected String K;
    private String L;
    protected MBSplashView M;
    protected CampaignEx N;
    protected MBShakeView O;
    private String P;
    private String Q;
    private String R;
    protected com.mbridge.msdk.shake.b S;

    /* renamed from: a  reason: collision with root package name */
    private MBNoRecycledCrashImageView f29320a;

    /* renamed from: b  reason: collision with root package name */
    private MBNoRecycledCrashImageView f29321b;

    /* renamed from: c  reason: collision with root package name */
    private RelativeLayout f29322c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f29323d;

    /* renamed from: e  reason: collision with root package name */
    private FeedBackButton f29324e;

    /* renamed from: f  reason: collision with root package name */
    protected TextView f29325f;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f29326g;

    /* renamed from: h  reason: collision with root package name */
    private MBNoRecycledCrashImageView f29327h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f29328i;

    /* renamed from: j  reason: collision with root package name */
    private MBNoRecycledCrashImageView f29329j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f29330k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f29331l;

    /* renamed from: m  reason: collision with root package name */
    protected RelativeLayout f29332m;

    /* renamed from: n  reason: collision with root package name */
    protected TextView f29333n;

    /* renamed from: o  reason: collision with root package name */
    protected TextView f29334o;

    /* renamed from: p  reason: collision with root package name */
    protected TextView f29335p;

    /* renamed from: q  reason: collision with root package name */
    protected TextView f29336q;

    /* renamed from: r  reason: collision with root package name */
    protected MBSplashClickView f29337r;

    /* renamed from: s  reason: collision with root package name */
    protected int f29338s;

    /* renamed from: t  reason: collision with root package name */
    private int f29339t;

    /* renamed from: u  reason: collision with root package name */
    private int f29340u;

    /* renamed from: v  reason: collision with root package name */
    private int f29341v;

    /* renamed from: w  reason: collision with root package name */
    protected int f29342w;

    /* renamed from: x  reason: collision with root package name */
    protected int f29343x;

    /* renamed from: y  reason: collision with root package name */
    protected int f29344y;

    /* renamed from: z  reason: collision with root package name */
    protected int f29345z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.foundation.same.image.c {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            BaseMBSplashNativeView.this.f29327h.setVisibility(4);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            Bitmap a10;
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled() && BaseMBSplashNativeView.this.f29327h != null && (a10 = o0.a(bitmap, 1, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 40.0f))) != null && !a10.isRecycled()) {
                        BaseMBSplashNativeView.this.f29327h.setImageBitmap(a10);
                    }
                } catch (Throwable th2) {
                    p0.b("MBSplashNativeView", th2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            if (baseMBSplashNativeView.H) {
                if (baseMBSplashNativeView.M.getSplashSignalCommunicationImpl() != null && BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a() != null) {
                    BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a().close();
                }
                BaseMBSplashNativeView.this.f29325f.setVisibility(4);
                BaseMBSplashNativeView.this.f29325f.setEnabled(false);
            }
        }
    }

    public BaseMBSplashNativeView(Context context) {
        super(context);
        this.I = false;
        this.J = false;
    }

    private void i() {
        if (this.f29341v == 1) {
            this.f29337r.setVisibility(8);
        } else if (this.f29343x == 1) {
            this.f29337r.setVisibility(8);
        } else {
            this.f29337r.initView(this.N.getAdCall());
        }
    }

    private void j() {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT));
        if (!TextUtils.isEmpty(this.N.getBidToken())) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, this.N.getBidToken(), eVar, this.N, this.K);
        if (this.f29340u == 1) {
            a1.a(this, a10.o(), this.N.getLocalAllowTrackClick());
            setOnClickListener(new d());
        } else {
            a1.a(this.f29337r, a10.o(), this.N.getLocalAllowTrackClick());
            this.f29337r.setOnClickListener(new e());
        }
        this.f29325f.setOnClickListener(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountDownStatus(boolean z10) {
        int i10;
        if (this.M.getSplashSignalCommunicationImpl() != null && this.M.getSplashSignalCommunicationImpl().a() != null) {
            com.mbridge.msdk.splash.middle.a a10 = this.M.getSplashSignalCommunicationImpl().a();
            if (z10) {
                i10 = 2;
            } else {
                i10 = 1;
            }
            a10.a(i10, this.f29339t);
        }
    }

    protected void b() {
    }

    protected void e() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.f29343x == 1 && this.O != null && this.S != null) {
                com.mbridge.msdk.shake.a.a().a(this.S);
            }
        } catch (Throwable th2) {
            p0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.D = motionEvent.getRawX();
        this.E = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void release() {
        try {
            if (this.S != null) {
                com.mbridge.msdk.shake.a.a().b(this.S);
                this.S = null;
            }
            com.mbridge.msdk.foundation.feedback.b.b().d(this.K);
            detachAllViewsFromParent();
        } catch (Exception e10) {
            p0.b("MBSplashNativeView", e10.getMessage());
        }
    }

    public void setIsPause(boolean z10) {
        this.I = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        try {
            RelativeLayout relativeLayout = this.f29322c;
            if (relativeLayout == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            int i14 = this.C;
            layoutParams.leftMargin = i10 + i14;
            layoutParams.rightMargin = i11 + i14;
            layoutParams.topMargin = i12 + i14;
            layoutParams.bottomMargin = i14 + i13;
        } catch (Throwable th2) {
            p0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    public void updateCountDown(int i10) {
        String str;
        if (this.f29325f != null) {
            this.f29339t = i10;
            if (this.H) {
                str = this.Q + " " + i10 + this.P;
            } else {
                str = i10 + this.P + " " + this.R;
            }
            this.f29325f.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    private void c() {
        try {
            this.F = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            p0.b("MBSplashNativeView", th2.getMessage());
        }
        a();
        g();
        h();
        e();
        i();
        j();
        b();
        updateCountDown(this.f29338s);
    }

    private void d() {
        int a10;
        try {
            if (this.A == 1) {
                a10 = h0.a(getContext().getApplicationContext(), "mbridge_splash_portrait", TtmlNode.TAG_LAYOUT);
            } else {
                a10 = h0.a(getContext().getApplicationContext(), "mbridge_splash_landscape", TtmlNode.TAG_LAYOUT);
            }
            View inflate = LayoutInflater.from(getContext()).inflate(a10, (ViewGroup) null);
            addView(inflate);
            this.f29320a = (MBNoRecycledCrashImageView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image_bg", "id"));
            this.f29321b = (MBNoRecycledCrashImageView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image", "id"));
            this.f29322c = (RelativeLayout) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_topcontroller", "id"));
            this.f29323d = (ImageView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_iv_link", "id"));
            this.f29324e = (FeedBackButton) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_feedback", "id"));
            this.f29325f = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_skip", "id"));
            this.f29326g = (RelativeLayout) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_landscape_foreground", "id"));
            this.f29327h = (MBNoRecycledCrashImageView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_iv_icon", "id"));
            this.f29328i = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_title", "id"));
            this.f29329j = (MBNoRecycledCrashImageView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_iv_foregroundimage", "id"));
            this.f29330k = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adrect", "id"));
            this.f29332m = (RelativeLayout) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_layout_appinfo", "id"));
            this.f29333n = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_appinfo", "id"));
            this.f29334o = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_privacy", "id"));
            this.f29335p = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_permission", "id"));
            this.f29336q = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_app_desc", "id"));
            this.f29337r = (MBSplashClickView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_click", "id"));
            this.f29331l = (TextView) inflate.findViewById(h0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adcircle", "id"));
            int a11 = h0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip", TypedValues.Custom.S_STRING);
            int a12 = h0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_not", TypedValues.Custom.S_STRING);
            int a13 = h0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_s", TypedValues.Custom.S_STRING);
            this.Q = getContext().getResources().getString(a11);
            this.R = getContext().getResources().getString(a12);
            this.P = getContext().getResources().getString(a13);
            this.C = u0.a(getContext(), 9.0f);
        } catch (Throwable th2) {
            p0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (!TextUtils.isEmpty(this.N.getIconUrl())) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getIconUrl(), new b());
        } else {
            this.f29327h.setVisibility(4);
        }
    }

    private void g() {
        if (!TextUtils.isEmpty(this.N.getImageUrl())) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getImageUrl(), new a());
        } else {
            this.f29321b.setVisibility(4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h() {
        /*
            r7 = this;
            android.widget.ImageView r1 = r7.f29323d
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = r7.N
            android.content.Context r3 = r7.getContext()
            com.mbridge.msdk.splash.view.BaseMBSplashNativeView$c r5 = new com.mbridge.msdk.splash.view.BaseMBSplashNativeView$c
            r5.<init>()
            r0 = 3
            r4 = 1
            com.mbridge.msdk.foundation.tools.u0.a(r0, r1, r2, r3, r4, r5)
            android.content.Context r0 = r7.getContext()
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.String r1 = "mbridge_splash_m_circle"
            java.lang.String r2 = "drawable"
            int r0 = com.mbridge.msdk.foundation.tools.h0.a(r0, r1, r2)
            r1 = 0
            android.content.res.Resources r2 = r7.getResources()     // Catch: java.lang.Throwable -> L44
            android.graphics.drawable.Drawable r0 = r2.getDrawable(r0)     // Catch: java.lang.Throwable -> L44
            android.content.Context r2 = r7.getContext()     // Catch: java.lang.Throwable -> L42
            r3 = 1092616192(0x41200000, float:10.0)
            int r2 = com.mbridge.msdk.foundation.tools.u0.a(r2, r3)     // Catch: java.lang.Throwable -> L42
            android.content.Context r4 = r7.getContext()     // Catch: java.lang.Throwable -> L42
            int r3 = com.mbridge.msdk.foundation.tools.u0.a(r4, r3)     // Catch: java.lang.Throwable -> L42
            r4 = 0
            r0.setBounds(r4, r4, r2, r3)     // Catch: java.lang.Throwable -> L42
            goto L4f
        L42:
            r2 = move-exception
            goto L46
        L44:
            r2 = move-exception
            r0 = r1
        L46:
            java.lang.String r2 = r2.getMessage()
            java.lang.String r3 = "MBSplashNativeView"
            com.mbridge.msdk.foundation.tools.p0.b(r3, r2)
        L4f:
            int r2 = r7.A
            r3 = 1
            r4 = 4
            java.lang.String r5 = "AD"
            java.lang.String r6 = "广告"
            if (r2 != r3) goto L79
            boolean r2 = r7.G
            if (r2 == 0) goto L79
            int r2 = r7.B
            if (r2 == 0) goto L69
            if (r0 == 0) goto L69
            android.widget.TextView r2 = r7.f29331l
            r2.setCompoundDrawables(r0, r1, r1, r1)
        L69:
            android.widget.TextView r0 = r7.f29331l
            boolean r1 = r7.F
            if (r1 == 0) goto L70
            r5 = r6
        L70:
            r0.setText(r5)
            android.widget.TextView r0 = r7.f29330k
            r0.setVisibility(r4)
            goto L93
        L79:
            int r2 = r7.B
            if (r2 == 0) goto L84
            if (r0 == 0) goto L84
            android.widget.TextView r2 = r7.f29330k
            r2.setCompoundDrawables(r0, r1, r1, r1)
        L84:
            android.widget.TextView r0 = r7.f29330k
            boolean r1 = r7.F
            if (r1 == 0) goto L8b
            r5 = r6
        L8b:
            r0.setText(r5)
            android.widget.TextView r0 = r7.f29331l
            r0.setVisibility(r4)
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.view.BaseMBSplashNativeView.h():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        try {
            this.M.getSplashSignalCommunicationImpl().a().a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(i10, this.D, this.E), this.N));
        } catch (Throwable th2) {
            p0.b("MBSplashNativeView", th2.getMessage());
            this.M.getSplashSignalCommunicationImpl().a().a(this.N);
        }
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.I = false;
        this.J = false;
    }

    public BaseMBSplashNativeView(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar) {
        super(context);
        this.I = false;
        this.J = false;
        if (cVar != null) {
            this.K = cVar.l();
            this.L = cVar.h();
            this.N = cVar.b();
            this.M = mBSplashView;
            this.f29338s = cVar.d();
            this.f29341v = cVar.c();
            this.f29340u = cVar.f();
            this.f29342w = cVar.a();
            this.f29343x = cVar.i();
            this.f29344y = cVar.j();
            this.f29345z = cVar.k();
            this.A = cVar.g();
            this.H = cVar.m();
            this.B = cVar.e();
            d();
            c();
            return;
        }
        throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
    }

    private void a() {
        CampaignEx campaignEx = this.N;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.K);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, new g());
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.f29324e);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
            return;
        }
        FeedBackButton feedBackButton = this.f29324e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements com.mbridge.msdk.foundation.same.image.c {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        if (bitmap.getWidth() < bitmap.getHeight()) {
                            BaseMBSplashNativeView.this.G = true;
                            BaseMBSplashNativeView.this.f29326g.setVisibility(4);
                            BaseMBSplashNativeView.this.f29321b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            BaseMBSplashNativeView.this.f29321b.setImageBitmap(bitmap);
                        } else if (BaseMBSplashNativeView.this.A == 1) {
                            BaseMBSplashNativeView.this.f29326g.setVisibility(0);
                            Bitmap a10 = o0.a(bitmap, 1, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f));
                            if (a10 != null && !a10.isRecycled()) {
                                BaseMBSplashNativeView.this.f29329j.setScaleType(ImageView.ScaleType.FIT_XY);
                                BaseMBSplashNativeView.this.f29329j.setImageBitmap(a10);
                            }
                            BaseMBSplashNativeView.this.f29328i.setText(BaseMBSplashNativeView.this.N.getAppName());
                            BaseMBSplashNativeView.this.f();
                            try {
                                Bitmap a11 = o0.a(bitmap);
                                if (a11 != null && !a11.isRecycled()) {
                                    BaseMBSplashNativeView.this.f29321b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    BaseMBSplashNativeView.this.f29321b.setImageBitmap(a11);
                                }
                            } catch (Throwable unused) {
                                BaseMBSplashNativeView.this.f29321b.setImageBitmap(bitmap);
                            }
                        } else {
                            BaseMBSplashNativeView.this.f29326g.setVisibility(4);
                            BaseMBSplashNativeView.this.f29321b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            BaseMBSplashNativeView.this.f29321b.setImageBitmap(bitmap);
                        }
                        Bitmap a12 = o0.a(bitmap);
                        if (a12 != null && !a12.isRecycled()) {
                            BaseMBSplashNativeView.this.f29320a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            BaseMBSplashNativeView.this.f29320a.setImageBitmap(a12);
                        }
                    }
                } catch (Throwable th2) {
                    p0.b("MBSplashNativeView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
