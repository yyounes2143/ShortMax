package com.mbridge.msdk.splash.middle;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.e1;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.ZoomOutTypeEnum;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.manager.e;
import com.mbridge.msdk.splash.manager.f;
import com.mbridge.msdk.splash.view.BaseSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashView;
/* compiled from: SplashProvider.java */
/* loaded from: classes6.dex */
public class c {
    private static String D = "SplashProvider";
    private CampaignEx A;
    private MBSplashPopView B;

    /* renamed from: a  reason: collision with root package name */
    private String f29235a;

    /* renamed from: b  reason: collision with root package name */
    private String f29236b;

    /* renamed from: c  reason: collision with root package name */
    private MBridgeIds f29237c;

    /* renamed from: e  reason: collision with root package name */
    private long f29239e;

    /* renamed from: f  reason: collision with root package name */
    private e f29240f;

    /* renamed from: g  reason: collision with root package name */
    private f f29241g;

    /* renamed from: h  reason: collision with root package name */
    private b f29242h;

    /* renamed from: i  reason: collision with root package name */
    private MBSplashShowListener f29243i;

    /* renamed from: j  reason: collision with root package name */
    private d f29244j;

    /* renamed from: k  reason: collision with root package name */
    private MBSplashView f29245k;

    /* renamed from: l  reason: collision with root package name */
    private ViewGroup f29246l;

    /* renamed from: m  reason: collision with root package name */
    private View f29247m;

    /* renamed from: n  reason: collision with root package name */
    private l f29248n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29249o;

    /* renamed from: p  reason: collision with root package name */
    private ViewGroup f29250p;

    /* renamed from: q  reason: collision with root package name */
    private j f29251q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f29252r;

    /* renamed from: y  reason: collision with root package name */
    private Activity f29259y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f29260z;

    /* renamed from: d  reason: collision with root package name */
    private int f29238d = 5;

    /* renamed from: s  reason: collision with root package name */
    private int f29253s = 1;

    /* renamed from: t  reason: collision with root package name */
    private int f29254t = l0.n(com.mbridge.msdk.foundation.controller.c.m().d());

    /* renamed from: u  reason: collision with root package name */
    private int f29255u = l0.m(com.mbridge.msdk.foundation.controller.c.m().d());

    /* renamed from: v  reason: collision with root package name */
    private Object f29256v = new Object();

    /* renamed from: w  reason: collision with root package name */
    private Object f29257w = new Object();

    /* renamed from: x  reason: collision with root package name */
    public boolean f29258x = false;
    private boolean C = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashProvider.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29261a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29262b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f29263c;

        a(CampaignEx campaignEx, int i10, boolean z10) {
            this.f29261a = campaignEx;
            this.f29262b = i10;
            this.f29263c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.a(this.f29261a, this.f29262b - 1, this.f29263c);
        }
    }

    public c(Activity activity, String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
        }
        this.f29236b = str3;
        this.f29235a = str2;
        this.f29237c = new MBridgeIds(str, str2);
        this.f29259y = activity;
        b(activity);
    }

    public void b(boolean z10) {
        this.f29249o = z10;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.f29242h != null) {
                this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
                return;
            }
            return;
        }
        b(str);
    }

    public int d() {
        return this.f29238d;
    }

    public long e() {
        return this.f29239e;
    }

    public boolean f() {
        return this.f29252r;
    }

    public boolean g() {
        return this.f29249o;
    }

    public void h() {
        f fVar = this.f29241g;
        if (fVar != null) {
            fVar.f();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null && this.C) {
            mBSplashPopView.pauseCountDown();
        }
    }

    public void i() {
        f fVar = this.f29241g;
        if (fVar != null) {
            fVar.g();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null && this.C) {
            mBSplashPopView.reStartCountDown();
        }
    }

    public void j() {
        this.C = true;
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.startCountDown();
        }
    }

    public void k() {
        this.C = false;
        MBSplashShowListener mBSplashShowListener = this.f29243i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onZoomOutPlayFinish(new MBridgeIds(this.f29236b, this.f29235a));
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.release();
        }
    }

    public void a(ViewGroup viewGroup) {
        this.f29250p = viewGroup;
    }

    public void b(String str) {
        a(str, 1);
    }

    public void d(String str, Activity activity) {
        ViewGroup a10 = a(activity);
        if (a10 == null) {
            MBSplashShowListener mBSplashShowListener = this.f29243i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f29237c, "activity is except,please check it");
                return;
            }
            return;
        }
        d(str, a10);
    }

    public void a(int i10) {
        this.f29253s = i10;
    }

    public void b(String str, Activity activity) {
        ViewGroup a10 = a(activity);
        if (a10 == null) {
            if (this.f29242h != null) {
                this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
                return;
            }
            return;
        }
        b(str, a10);
    }

    public void a(long j10) {
        this.f29239e = j10;
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        if (this.f29242h == null) {
            this.f29242h = new b(this, this.f29237c);
        }
        this.f29242h.a(mBSplashLoadListener);
    }

    public void c(boolean z10) {
        this.f29252r = z10;
    }

    public void d(String str, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            MBSplashShowListener mBSplashShowListener = this.f29243i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f29237c, "token is null or empty");
                return;
            }
            return;
        }
        c(str, viewGroup);
    }

    public String c() {
        if (!this.f29258x) {
            e eVar = this.f29240f;
            if (eVar != null) {
                return eVar.d();
            }
            return "";
        }
        f fVar = this.f29241g;
        if (fVar != null) {
            return fVar.d();
        }
        return "";
    }

    public void a(MBSplashShowListener mBSplashShowListener) {
        this.f29243i = mBSplashShowListener;
    }

    public void b(String str, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            if (this.f29242h != null) {
                this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
                return;
            }
            return;
        }
        a(str, viewGroup);
    }

    public void a(String str, Activity activity) {
        ViewGroup a10 = a(activity);
        if (a10 == null) {
            if (this.f29242h != null) {
                this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
                return;
            }
            return;
        }
        a(str, a10);
    }

    public void d(boolean z10) {
        this.f29260z = z10;
    }

    public void b(int i10) {
        this.f29238d = i10;
    }

    public void c(String str, Activity activity) {
        ViewGroup a10 = a(activity);
        if (a10 == null) {
            MBSplashShowListener mBSplashShowListener = this.f29243i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f29237c, "activity is except,please check it");
                return;
            }
            return;
        }
        c(str, a10);
    }

    public void a(String str, ViewGroup viewGroup) {
        this.f29246l = viewGroup;
        MBSplashView mBSplashView = this.f29245k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        a(str, 2);
    }

    public void b(int i10, int i11) {
        a(i11, i10);
    }

    public String b() {
        if (!this.f29258x) {
            e eVar = this.f29240f;
            if (eVar != null) {
                return eVar.c();
            }
            return "";
        }
        f fVar = this.f29241g;
        if (fVar != null) {
            return fVar.c();
        }
        return "";
    }

    public void c(String str, ViewGroup viewGroup) {
        this.f29246l = viewGroup;
        MBSplashView mBSplashView = this.f29245k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        CampaignEx a10 = com.mbridge.msdk.splash.manager.d.a(this.f29245k, this.f29236b, this.f29235a, str, this.f29252r, this.f29238d, true, false);
        if (a10 != null) {
            if (this.f29248n == null) {
                this.f29248n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f29235a);
            }
            d dVar = new d(this, this.f29243i, a10);
            this.f29244j = dVar;
            if (this.f29254t != 0 && this.f29255u != 0) {
                int i10 = this.f29238d;
                if (i10 >= 2 && i10 <= 10) {
                    b(a10, this.f29248n.E(), false);
                    return;
                }
                MBridgeIds mBridgeIds = this.f29237c;
                dVar.a(mBridgeIds, "countDownTime must in 2 - 10 ,but now is " + this.f29238d);
                return;
            }
            dVar.a(this.f29237c, "width or height is 0  or width or height is too small");
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f29243i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f29237c, "campaignEx is vali");
        }
    }

    public boolean a(String str) {
        return com.mbridge.msdk.splash.manager.d.a(this.f29245k, this.f29236b, this.f29235a, str, this.f29252r, this.f29238d, false, true) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, int i10, boolean z10) {
        if (!com.mbridge.msdk.splash.manager.d.a(this.f29245k, campaignEx)) {
            if (i10 > 0) {
                this.f29241g.f29136y.postDelayed(new a(campaignEx, i10, z10), 1L);
                return;
            }
            d dVar = this.f29244j;
            if (dVar != null) {
                dVar.a(this.f29237c, "campaignEx is not ready");
                return;
            }
            return;
        }
        a(true);
        ViewGroup.LayoutParams layoutParams = this.f29246l.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
        this.f29246l.setLayoutParams(layoutParams);
        this.f29246l.removeAllViews();
        this.f29241g.c(this.f29238d);
        this.f29241g.a(this.f29250p);
        this.f29241g.a(this.f29244j);
        p0.b(D, "start show process");
        ViewGroup viewGroup = this.f29246l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            e1.a(this.f29245k);
            this.f29246l.addView(this.f29245k);
        }
        this.f29241g.a(this.f29252r);
        this.f29241g.a(campaignEx, this.f29245k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CampaignEx campaignEx, int i10, boolean z10) {
        if (campaignEx != null && z10) {
            if (this.f29248n == null) {
                this.f29248n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f29235a);
            }
            this.f29244j = new d(this, this.f29243i, campaignEx);
        }
        ViewGroup viewGroup = this.f29246l;
        if (viewGroup == null) {
            d dVar = this.f29244j;
            if (dVar != null) {
                dVar.a(this.f29237c, "container is null");
                return;
            }
            return;
        }
        if (this.f29241g == null) {
            this.f29241g = new f(viewGroup.getContext(), this.f29236b, this.f29235a);
        }
        this.A = campaignEx;
        a(campaignEx, i10, z10);
    }

    private void b(Activity activity) {
        if (this.f29241g == null) {
            if (activity != null) {
                this.f29241g = new f(activity, this.f29236b, this.f29235a);
            } else {
                this.f29241g = new f(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29236b, this.f29235a);
            }
        }
        if (this.f29245k == null) {
            if (activity != null) {
                this.f29245k = new MBSplashView(activity);
            } else {
                this.f29245k = new MBSplashView(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        }
        if (this.f29251q == null) {
            this.f29251q = new j();
        }
        this.f29251q.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f29235a);
    }

    private void a(String str, int i10) {
        boolean z10;
        synchronized (this.f29256v) {
            try {
                if (this.f29249o) {
                    if (this.f29242h != null) {
                        this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i10);
                        this.f29249o = true;
                    }
                    return;
                }
                this.f29249o = true;
                int i11 = this.f29238d;
                if (i11 >= 2 && i11 <= 10) {
                    if (this.f29254t != 0 && this.f29255u != 0) {
                        try {
                            z10 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                        } catch (Exception unused) {
                            z10 = false;
                        }
                        if (!z10) {
                            if (this.f29242h != null) {
                                this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880029), i10);
                                return;
                            }
                            return;
                        }
                        this.f29245k.clearResState();
                        this.f29248n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f29235a);
                        if (this.f29240f == null) {
                            this.f29240f = new e(this.f29236b, this.f29235a, this.f29239e * 1000);
                        }
                        b bVar = this.f29242h;
                        if (bVar != null) {
                            bVar.a(str);
                            this.f29240f.a(this.f29242h);
                        }
                        this.f29245k.resetLoadState();
                        this.f29240f.a(this.f29238d);
                        this.f29240f.a(this.f29245k);
                        this.f29240f.a(this.f29248n);
                        this.f29240f.a(this.f29254t, this.f29255u);
                        this.f29240f.a(this.f29252r);
                        this.f29240f.b(this.f29253s);
                        this.f29240f.a(str, i10);
                    } else if (this.f29242h != null) {
                        this.f29242h.a(new com.mbridge.msdk.foundation.error.b(880028), i10);
                    }
                } else if (this.f29242h != null) {
                    com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880037);
                    bVar2.c("countDownTime must in 2 - 10");
                    this.f29242h.a(bVar2, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f29247m = view;
        if (view != null) {
            a(layoutParams.width, layoutParams.height);
            MBSplashView mBSplashView = this.f29245k;
            if (mBSplashView != null) {
                mBSplashView.setIconVg(view, layoutParams);
            }
        }
    }

    public ViewGroup a(ZoomOutTypeEnum zoomOutTypeEnum) {
        MBSplashPopView mBSplashPopView = new MBSplashPopView(com.mbridge.msdk.foundation.controller.c.m().d(), new BaseSplashPopView.i(this.f29236b, this.f29235a, zoomOutTypeEnum.getIndex(), this.A), this.f29244j);
        this.B = mBSplashPopView;
        return mBSplashPopView;
    }

    private void a(int i10, int i11) {
        int n10 = l0.n(com.mbridge.msdk.foundation.controller.c.m().d());
        int m10 = l0.m(com.mbridge.msdk.foundation.controller.c.m().d());
        int i12 = this.f29253s;
        if (i12 == 1) {
            if (m10 >= i11 * 4) {
                this.f29255u = m10 - i11;
                this.f29254t = n10;
                return;
            }
            this.f29255u = 0;
            this.f29254t = 0;
        } else if (i12 == 2) {
            if (n10 >= i10 * 4) {
                this.f29254t = n10 - i10;
                this.f29255u = m10;
                return;
            }
            this.f29255u = 0;
            this.f29254t = 0;
        }
    }

    public void a(boolean z10) {
        MBSplashView mBSplashView = this.f29245k;
        if (mBSplashView != null) {
            mBSplashView.setAllowClickSplash(z10);
        }
    }

    private ViewGroup a(Activity activity) {
        Throwable th2;
        ViewGroup viewGroup;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (activity == null) {
            p0.d(D, "splash can't show because, activity is null or activity is finishing");
            return null;
        }
        try {
            viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290);
        } catch (Throwable th3) {
            th2 = th3;
            viewGroup = null;
        }
        try {
            try {
                return (ViewGroup) viewGroup.getChildAt(0);
            } catch (Exception e10) {
                e10.printStackTrace();
                return viewGroup;
            }
        } catch (Throwable th4) {
            th2 = th4;
            th2.printStackTrace();
            return viewGroup;
        }
    }

    public void a(int i10, int i11, int i12, int i13) {
        try {
            MBSplashView mBSplashView = this.f29245k;
            if (mBSplashView != null) {
                mBSplashView.setNotchPadding(i10, i11, i12, i13);
            }
        } catch (Throwable th2) {
            p0.b(D, th2.getMessage());
        }
    }

    public void a() {
        this.A = null;
        if (this.f29243i != null) {
            this.f29243i = null;
        }
        if (this.f29242h != null) {
            this.f29242h = null;
        }
        if (this.f29244j != null) {
            this.f29244j = null;
        }
        e eVar = this.f29240f;
        if (eVar != null) {
            eVar.e();
        }
        f fVar = this.f29241g;
        if (fVar != null) {
            fVar.h();
        }
        if (this.f29259y != null) {
            this.f29259y = null;
        }
    }
}
