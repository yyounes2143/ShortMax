package com.applovin.impl;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.impl.b6;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class w1 extends v1 {
    private final x1 M;
    private g0 N;
    private long O;
    private final AtomicBoolean P;

    public w1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.M = new x1(this.f10153a, this.f10156d, this.f10154b);
        this.P = new AtomicBoolean();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "Marking ad as fully watched");
        }
        this.P.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.f10169q = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = this.f10163k;
        if (gVar != null) {
            arrayList.add(new e4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = this.f10162j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.f10162j;
            arrayList.add(new e4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.f10153a.getAdEventTracker().b(this.f10161i, arrayList);
    }

    protected void H() {
        long Z;
        long j10 = 0;
        if (this.f10153a.Y() >= 0 || this.f10153a.Z() >= 0) {
            if (this.f10153a.Y() >= 0) {
                Z = this.f10153a.Y();
            } else {
                if (this.f10153a.j1()) {
                    int t12 = (int) ((com.applovin.impl.sdk.ad.a) this.f10153a).t1();
                    if (t12 > 0) {
                        j10 = TimeUnit.SECONDS.toMillis(t12);
                    } else {
                        int s10 = (int) this.f10153a.s();
                        if (s10 > 0) {
                            j10 = TimeUnit.SECONDS.toMillis(s10);
                        }
                    }
                }
                Z = (long) (j10 * (this.f10153a.Z() / 100.0d));
            }
            c(Z);
        }
    }

    @Override // com.applovin.impl.v1
    public void a(ViewGroup viewGroup) {
        this.M.a(this.f10163k, this.f10162j, this.f10161i, viewGroup);
        if (((Boolean) this.f10154b.a(v4.L5)).booleanValue() || !a(false)) {
            com.applovin.impl.adview.k kVar = this.f10162j;
            if (kVar != null) {
                kVar.b();
            }
            this.f10161i.renderAd(this.f10153a);
            a("javascript:al_onPoststitialShow();", this.f10153a.H());
            if (g()) {
                long B = B();
                this.O = B;
                if (B > 0) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f10155c;
                        oVar.a("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.O + "ms...");
                    }
                    this.N = g0.a(this.O, this.f10154b, new Runnable() { // from class: com.applovin.impl.wf
                        @Override // java.lang.Runnable
                        public final void run() {
                            w1.this.E();
                        }
                    });
                }
            }
            if (this.f10163k != null) {
                if (this.f10153a.s() >= 0) {
                    a(this.f10163k, this.f10153a.s(), new Runnable() { // from class: com.applovin.impl.xf
                        @Override // java.lang.Runnable
                        public final void run() {
                            w1.this.F();
                        }
                    });
                } else {
                    this.f10163k.setVisibility(0);
                }
            }
            H();
            this.f10154b.r0().a(new p6(this.f10154b, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.yf
                @Override // java.lang.Runnable
                public final void run() {
                    w1.this.G();
                }
            }), b6.b.OTHER, TimeUnit.SECONDS.toMillis(1L));
            o();
            super.c(k7.e(this.f10154b));
        }
    }

    @Override // com.applovin.impl.v1
    public void d() {
        super.d();
        z();
    }

    @Override // com.applovin.impl.v1
    public void e() {
        super.e();
        z();
    }

    @Override // com.applovin.impl.v1
    protected void l() {
        super.a(C(), false, D(), -2L);
    }

    @Override // com.applovin.impl.v1
    public void v() {
        a((ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.v1
    public void w() {
        super.w();
        this.P.set(true);
    }

    @Override // com.applovin.impl.v1
    protected void z() {
        this.M.a(this.f10164l);
        this.f10169q = SystemClock.elapsedRealtime();
        this.P.set(true);
    }

    private long B() {
        com.applovin.impl.sdk.ad.b bVar = this.f10153a;
        if (bVar instanceof com.applovin.impl.sdk.ad.a) {
            float t12 = ((com.applovin.impl.sdk.ad.a) bVar).t1();
            if (t12 <= 0.0f) {
                t12 = (float) this.f10153a.s();
            }
            return (long) (k7.c(t12) * (this.f10153a.I() / 100.0d));
        }
        return 0L;
    }

    private int C() {
        g0 g0Var;
        int i10 = 100;
        if (g()) {
            if (!D() && (g0Var = this.N) != null) {
                i10 = (int) Math.min(100.0d, ((this.O - g0Var.b()) / this.O) * 100.0d);
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f10155c;
                oVar.a("AppLovinFullscreenActivity", "Ad engaged at " + i10 + "%");
            }
        }
        return i10;
    }

    protected boolean D() {
        if (!(this.J && this.f10153a.n1()) && g()) {
            return this.P.get();
        }
        return true;
    }

    @Override // com.applovin.impl.v1
    public void u() {
    }

    @Override // com.applovin.impl.v1
    public void a(String str) {
        if (!((Boolean) this.f10154b.a(v4.D6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar = this.f10153a;
            if (bVar != null) {
                bVar.a(str);
            }
            l();
        }
        g0 g0Var = this.N;
        if (g0Var != null) {
            g0Var.a();
            this.N = null;
        }
        super.a(str);
    }

    @Override // com.applovin.impl.v1
    public void b(long j10) {
    }
}
