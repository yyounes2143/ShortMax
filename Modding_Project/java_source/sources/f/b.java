package f;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class b implements MaxAdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f51568a;

    public b(e eVar) {
        this.f51568a = eVar;
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdClicked(MaxAd maxAd) {
        Intrinsics.checkNotNullParameter(maxAd, "maxAd");
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxAdListener:onAdClicked");
        e eVar = this.f51568a;
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
    public final void onAdDisplayFailed(MaxAd maxAd, MaxError error) {
        Intrinsics.checkNotNullParameter(maxAd, "maxAd");
        Intrinsics.checkNotNullParameter(error, "error");
        ga.a.f52235a.d(d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxAdListener:onAdDisplayFailed");
        e.e(this.f51568a, error);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdDisplayed(MaxAd maxAd) {
        Intrinsics.checkNotNullParameter(maxAd, "maxAd");
        ga.a.f52235a.d(d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxAdListener:onAdDisplayed");
        e.c(this.f51568a);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public final void onAdHidden(MaxAd maxAd) {
        Intrinsics.checkNotNullParameter(maxAd, "maxAd");
        ga.a aVar = ga.a.f52235a;
        aVar.d(d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener"), "toMaxAdListener:onAdHidden");
        e eVar = this.f51568a;
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
    public final void onAdLoadFailed(String adUnitId, MaxError error) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(error, "error");
        long requestLatencyMillis = error.getRequestLatencyMillis();
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.d(b10, "toMaxAdListener:onAdLoadFailed:" + requestLatencyMillis + "ms");
        e eVar = this.f51568a;
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
        String b10 = d.h.b(this.f51568a.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.d(b10, "toMaxAdListener:onAdLoaded:" + requestLatencyMillis + "ms");
        e eVar = this.f51568a;
        fa.c cVar = eVar.f51571a;
        String str = eVar.f51572b;
        Object obj = eVar.f51574d;
        if (obj == null) {
            obj = maxAd;
        }
        cVar.b0(str, obj, eVar.f51577g, maxAd.getNetworkName());
    }
}
