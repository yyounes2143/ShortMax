package f;

import android.app.Activity;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import kotlin.jvm.internal.Intrinsics;
import p000admanager.e.z;
/* loaded from: classes.dex */
public final class a implements d.g {

    /* renamed from: a  reason: collision with root package name */
    public final fa.c f51566a;

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f51567b;

    public a(fa.c adLoader) {
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.f51566a = adLoader;
        this.f51567b = kotlin.c.b(new z(this));
    }

    @Override // d.g
    public final void a(ca.d adInfo, ca.f adRequestParam) {
        e eVar;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a.f52235a.d(d.h.b(adInfo, "AdManager:ApplovinMax:Shower"), "showInterstitialAd");
        MaxInterstitialAd maxInterstitialAd = (MaxInterstitialAd) g(adInfo, MaxInterstitialAd.class, adRequestParam);
        if (maxInterstitialAd == null) {
            return;
        }
        ((d.a) this.f51567b.getValue()).getClass();
        Activity a10 = d.a.a(adInfo, adRequestParam);
        if (a10 == null) {
            return;
        }
        Object g10 = adInfo.g();
        if (g10 instanceof e) {
            eVar = (e) g10;
        } else {
            eVar = null;
        }
        if (eVar != null) {
            eVar.b(adRequestParam);
        }
        maxInterstitialAd.showAd(a10);
    }

    @Override // d.g
    public final void b(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
    }

    @Override // d.g
    public final void c(ca.d adInfo, ca.f adRequestParam) {
        e eVar;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a.f52235a.d(d.h.b(adInfo, "AdManager:ApplovinMax:Shower"), "showAppOpenAd");
        MaxAppOpenAd maxAppOpenAd = (MaxAppOpenAd) g(adInfo, MaxAppOpenAd.class, adRequestParam);
        if (maxAppOpenAd == null) {
            return;
        }
        Object g10 = adInfo.g();
        if (g10 instanceof e) {
            eVar = (e) g10;
        } else {
            eVar = null;
        }
        if (eVar != null) {
            eVar.b(adRequestParam);
        }
        maxAppOpenAd.showAd();
    }

    @Override // d.g
    public final void d(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
    }

    @Override // d.g
    public final void e(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
    }

    @Override // d.g
    public final void f(ca.d adInfo, ca.f adRequestParam) {
        e eVar;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a.f52235a.d(d.h.b(adInfo, "AdManager:ApplovinMax:Shower"), "showRewardVideoAd");
        MaxRewardedAd maxRewardedAd = (MaxRewardedAd) g(adInfo, MaxRewardedAd.class, adRequestParam);
        if (maxRewardedAd == null) {
            return;
        }
        ((d.a) this.f51567b.getValue()).getClass();
        Activity a10 = d.a.a(adInfo, adRequestParam);
        if (a10 == null) {
            return;
        }
        Object g10 = adInfo.g();
        if (g10 instanceof e) {
            eVar = (e) g10;
        } else {
            eVar = null;
        }
        if (eVar != null) {
            eVar.b(adRequestParam);
        }
        maxRewardedAd.showAd(a10);
    }

    public final Object g(ca.d dVar, Class cls, ca.f fVar) {
        if (cls.isInstance(dVar.m())) {
            return cls.cast(dVar.m());
        }
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(dVar, "AdManager:ApplovinMax:Shower"), "removeAd Ad case errType");
        String b10 = d.h.b(dVar, "AdManager:ApplovinMax:Shower");
        aVar.d(b10, "removeAd from AdCachePools -> adInfo=" + dVar);
        this.f51566a.M(dVar.i());
        ((d.a) this.f51567b.getValue()).getClass();
        d.a.f(dVar, "realAd is null", fVar);
        return null;
    }
}
