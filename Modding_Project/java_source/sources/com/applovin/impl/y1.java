package com.applovin.impl;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.impl.a1;
import com.applovin.impl.l7;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class y1 extends z1 {

    /* renamed from: p0  reason: collision with root package name */
    private final l7 f10599p0;

    /* renamed from: q0  reason: collision with root package name */
    private final Set f10600q0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements a1.b {
        a() {
        }

        @Override // com.applovin.impl.a1.b
        public void a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(y1.this.f10674g0 - (y1.this.P.getDuration() - y1.this.P.getCurrentPosition()));
            int B = y1.this.B();
            HashSet hashSet = new HashSet();
            for (v7 v7Var : new HashSet(y1.this.f10600q0)) {
                if (v7Var.a(seconds, B)) {
                    hashSet.add(v7Var);
                    y1.this.f10600q0.remove(v7Var);
                }
            }
            y1.this.a(hashSet);
            if (B >= 25 && B < 50) {
                y1.this.f10599p0.getAdEventTracker().x();
            } else if (B >= 50 && B < 75) {
                y1.this.f10599p0.getAdEventTracker().y();
            } else if (B >= 75) {
                y1.this.f10599p0.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.a1.b
        public boolean b() {
            return !y1.this.f10677j0;
        }
    }

    public y1(com.applovin.impl.sdk.ad.b bVar, final Activity activity, Map map, final com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.f10600q0 = hashSet;
        l7 l7Var = (l7) bVar;
        this.f10599p0 = l7Var;
        if (l7Var.D1()) {
            ImageView a10 = r7.a(l7Var.x1().e(), activity, kVar);
            this.X = a10;
            a10.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.bg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    y1.this.a(activity, kVar, view);
                }
            });
        }
        l7.d dVar = l7.d.VIDEO;
        hashSet.addAll(l7Var.a(dVar, w7.f10479a));
        a(l7.d.IMPRESSION);
        a(dVar, "creativeView");
        l7Var.getAdEventTracker().g();
    }

    private void V() {
        if (F() && !this.f10600q0.isEmpty()) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f10155c;
                oVar.k("AppLovinFullscreenActivity", "Firing " + this.f10600q0.size() + " un-fired video progress trackers when video was completed.");
            }
            a(this.f10600q0);
        }
    }

    @Override // com.applovin.impl.z1
    public void C() {
        a(l7.d.VIDEO, "skip");
        this.f10599p0.getAdEventTracker().B();
        super.C();
    }

    @Override // com.applovin.impl.z1
    protected void D() {
        super.D();
        l7 l7Var = this.f10599p0;
        if (l7Var != null) {
            l7Var.getAdEventTracker().i();
        }
    }

    @Override // com.applovin.impl.z1
    protected void N() {
        long Z;
        int s10;
        long j10 = 0;
        if (this.f10599p0.Y() >= 0 || this.f10599p0.Z() >= 0) {
            if (this.f10599p0.Y() >= 0) {
                Z = this.f10599p0.Y();
            } else {
                l7 l7Var = this.f10599p0;
                y7 B1 = l7Var.B1();
                if (B1 != null && B1.d() > 0) {
                    j10 = TimeUnit.SECONDS.toMillis(B1.d());
                } else {
                    long j11 = this.f10674g0;
                    if (j11 > 0) {
                        j10 = j11;
                    }
                }
                if (l7Var.j1() && (s10 = (int) l7Var.s()) > 0) {
                    j10 += TimeUnit.SECONDS.toMillis(s10);
                }
                Z = (long) (j10 * (this.f10599p0.Z() / 100.0d));
            }
            c(Z);
        }
    }

    @Override // com.applovin.impl.z1
    protected void Q() {
        super.Q();
        l7 l7Var = this.f10599p0;
        if (l7Var != null) {
            l7Var.getAdEventTracker().j();
        }
    }

    @Override // com.applovin.impl.z1
    public void R() {
        V();
        if (x7.a(this.f10599p0)) {
            if (!this.f10677j0) {
                a(l7.d.COMPANION, "creativeView");
                this.f10599p0.getAdEventTracker().w();
                super.R();
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f10155c.a("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
        }
        a("no_valid_companion_ad");
    }

    @Override // com.applovin.impl.z1
    public void T() {
        String str;
        super.T();
        l7.d dVar = l7.d.VIDEO;
        if (this.f10673f0) {
            str = "mute";
        } else {
            str = CampaignEx.JSON_NATIVE_VIDEO_UNMUTE;
        }
        a(dVar, str);
        this.f10599p0.getAdEventTracker().b(this.f10673f0);
    }

    @Override // com.applovin.impl.z1
    protected void d(long j10) {
        super.d(j10);
        this.f10599p0.getAdEventTracker().b((float) TimeUnit.MILLISECONDS.toSeconds(j10), k7.e(this.f10154b));
    }

    @Override // com.applovin.impl.z1
    public void g(String str) {
        a(l7.d.ERROR, q7.MEDIA_FILE_ERROR);
        this.f10599p0.getAdEventTracker().b(str);
        super.g(str);
    }

    @Override // com.applovin.impl.v1
    public void r() {
        l7.d dVar;
        super.r();
        if (this.f10677j0) {
            dVar = l7.d.COMPANION;
        } else {
            dVar = l7.d.VIDEO;
        }
        a(dVar, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.f10599p0.getAdEventTracker().z();
    }

    @Override // com.applovin.impl.v1
    public void s() {
        l7.d dVar;
        super.s();
        if (this.f10677j0) {
            dVar = l7.d.COMPANION;
        } else {
            dVar = l7.d.VIDEO;
        }
        a(dVar, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        this.f10599p0.getAdEventTracker().A();
    }

    @Override // com.applovin.impl.z1, com.applovin.impl.v1
    public void u() {
        this.f10670c0.c();
        super.u();
    }

    @Override // com.applovin.impl.z1, com.applovin.impl.v1
    public void v() {
        a((ViewGroup) null);
    }

    private boolean U() {
        return this.X != null && this.f10599p0.D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, com.applovin.impl.sdk.k kVar, View view) {
        Uri c10 = this.f10599p0.x1().c();
        if (c10 != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f10155c;
                oVar.a("AppLovinFullscreenActivity", "Industry Icon clicked, opening URL: " + c10);
            }
            a(l7.d.INDUSTRY_ICON_CLICK);
            h7.a(c10, activity, kVar);
        }
    }

    @Override // com.applovin.impl.z1, com.applovin.impl.v1
    public void a(String str) {
        if (this.f10599p0 != null) {
            a(l7.d.VIDEO, "close");
            a(l7.d.COMPANION, "close");
        }
        super.a(str);
    }

    @Override // com.applovin.impl.z1, com.applovin.impl.v1
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        if (U()) {
            a(l7.d.INDUSTRY_ICON_IMPRESSION);
            this.X.setVisibility(0);
        }
        this.f10670c0.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new a());
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.a aVar = this.Q;
        if (aVar != null) {
            arrayList.add(new e4(aVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.g gVar = this.R;
        if (gVar != null) {
            arrayList.add(new e4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        i0 i0Var = this.S;
        if (i0Var != null) {
            arrayList.add(new e4(i0Var, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.V;
        if (progressBar != null) {
            arrayList.add(new e4(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.W;
        if (progressBar2 != null) {
            arrayList.add(new e4(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.T;
        if (imageView != null) {
            arrayList.add(new e4(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.l lVar = this.U;
        if (lVar != null) {
            arrayList.add(new e4(lVar, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        com.applovin.impl.adview.k kVar = this.f10162j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.f10162j;
            arrayList.add(new e4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.f10599p0.getAdEventTracker().b(this.P, arrayList);
    }

    @Override // com.applovin.impl.z1
    public void a(MotionEvent motionEvent, Bundle bundle) {
        a(l7.d.VIDEO_CLICK);
        this.f10599p0.getAdEventTracker().v();
        super.a(motionEvent, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set set) {
        a(set, q7.UNSPECIFIED);
    }

    private void a(l7.d dVar) {
        a(dVar, q7.UNSPECIFIED);
    }

    private void a(l7.d dVar, String str) {
        a(dVar, str, q7.UNSPECIFIED);
    }

    private void a(l7.d dVar, q7 q7Var) {
        a(dVar, "", q7Var);
    }

    private void a(l7.d dVar, String str, q7 q7Var) {
        a(this.f10599p0.a(dVar, str), q7Var);
    }

    private void a(Set set, q7 q7Var) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.P.getCurrentPosition());
        z7 C1 = this.f10599p0.C1();
        Uri d10 = C1 != null ? C1.d() : null;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10155c;
            oVar.a("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        x7.a(set, seconds, d10, q7Var, this.f10154b);
    }
}
