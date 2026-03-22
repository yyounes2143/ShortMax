package f;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class c implements MaxRewardedAdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f51569a;

    public c(e eVar) {
        this.f51569a = eVar;
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdClicked(MaxAd p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxRewardedAdListener:onAdClicked");
        e eVar = this.f51569a;
        if (eVar.f51576f == null) {
            aVar.d(d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener"), "err:adRequestParam is null");
        }
        ca.f fVar = eVar.f51576f;
        if (fVar != null) {
            d.a r10 = eVar.f51571a.r();
            ca.d dVar = eVar.f51573c;
            r10.getClass();
            d.a.h(dVar, fVar);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdDisplayFailed(MaxAd p02, MaxError p12) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        ga.a.f52235a.d(d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxRewardedAdListener:onAdDisplayFailed");
        e.e(this.f51569a, p12);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdDisplayed(MaxAd p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        ga.a.f52235a.d(d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxRewardedAdListener:onAdDisplayed");
        e.c(this.f51569a);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdHidden(MaxAd p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxRewardedAdListener:onAdHidden");
        e eVar = this.f51569a;
        Boolean valueOf = Boolean.valueOf(eVar.f51578h);
        if (eVar.f51576f == null) {
            aVar.d(d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener"), "err:adRequestParam is null");
        }
        ca.f fVar = eVar.f51576f;
        if (fVar != null) {
            eVar.f51573c.v(null);
            eVar.f51571a.M(eVar.f51572b);
            d.a r10 = eVar.f51571a.r();
            ca.d dVar = eVar.f51573c;
            r10.getClass();
            d.a.e(dVar, fVar, valueOf);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdLoadFailed(String p02, MaxError error) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(error, "error");
        long requestLatencyMillis = error.getRequestLatencyMillis();
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.d(b10, "toMaxRewardedAdListener:onAdLoadFailed" + requestLatencyMillis);
        e eVar = this.f51569a;
        fa.c cVar = eVar.f51571a;
        ca.e eVar2 = eVar.f51575e;
        g.a aVar2 = eVar.f51577g;
        String str = eVar.f51572b;
        int code = error.getCode();
        String message = error.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "error.message");
        cVar.a0(eVar2, aVar2, str, code, message, "");
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdLoaded(MaxAd maxAd) {
        Intrinsics.checkNotNullParameter(maxAd, "maxAd");
        long requestLatencyMillis = maxAd.getRequestLatencyMillis();
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.d(b10, "toMaxRewardedAdListener:onAdLoaded" + requestLatencyMillis + "ms");
        e eVar = this.f51569a;
        fa.c cVar = eVar.f51571a;
        String str = eVar.f51572b;
        Object obj = eVar.f51574d;
        if (obj == null) {
            obj = maxAd;
        }
        cVar.b0(str, obj, eVar.f51577g, maxAd.getNetworkName());
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public final void onUserRewarded(MaxAd p02, MaxReward reward) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(reward, "reward");
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(this.f51569a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxRewardedAdListener:onUserRewarded");
        e eVar = this.f51569a;
        eVar.f51578h = true;
        String b10 = d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.d(b10, "Rewarded user: " + reward.getAmount() + ' ' + reward.getLabel());
    }
}
