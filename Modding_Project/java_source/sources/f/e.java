package f;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.sdk.AppLovinSdk;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final fa.c f51571a;

    /* renamed from: b  reason: collision with root package name */
    public final String f51572b;

    /* renamed from: c  reason: collision with root package name */
    public final ca.d f51573c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f51574d;

    /* renamed from: e  reason: collision with root package name */
    public final ca.e f51575e;

    /* renamed from: f  reason: collision with root package name */
    public ca.f f51576f;

    /* renamed from: g  reason: collision with root package name */
    public final g.a f51577g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f51578h;

    public e(fa.c loader, String cacheKey, ca.d adInfo, Object obj, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(loader, "loader");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        this.f51571a = loader;
        this.f51572b = cacheKey;
        this.f51573c = adInfo;
        this.f51574d = obj;
        this.f51575e = adLoadParam;
        g.a aVar = new g.a();
        aVar.f52132a = System.currentTimeMillis();
        aVar.f52133b = 0L;
        this.f51577g = aVar;
        adInfo.v(this);
        ga.a aVar2 = ga.a.f52235a;
        String b10 = d.h.b(adLoadParam, "AdManager:ApplovinMax:Listener");
        aVar2.b(b10, "toMaxAdListener:init this" + adInfo);
    }

    public static final void c(e eVar) {
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.b(b10, "toMaxAdListener:adDisplayed" + eVar.f51573c);
        if (eVar.f51576f == null) {
            aVar.d(d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener"), "err:adRequestParam is null");
        }
        ca.f fVar = eVar.f51576f;
        if (fVar != null) {
            eVar.f51571a.r().i(eVar.f51573c, fVar);
        }
    }

    public static final void d(e eVar, MaxAd ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        double d10 = 1000;
        long revenue = (long) (ad2.getRevenue() * d10 * d10);
        String precision = ad2.getRevenuePrecision();
        String countryCode = AppLovinSdk.getInstance(eVar.f51571a.t()).getConfiguration().getCountryCode();
        String networkName = ad2.getNetworkName();
        String adUnitId = ad2.getAdUnitId();
        MaxAdFormat format = ad2.getFormat();
        ad2.getPlacement();
        ad2.getNetworkPlacement();
        ga.a.f52235a.d(d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener"), "RevenueListener:adUnitId(" + adUnitId + ") revenue(" + ad2.getRevenue() + ") precision(" + precision + ") countryCode(" + countryCode + ") adFormat(" + format + ") networkName(" + networkName + ')');
        ca.f fVar = eVar.f51576f;
        if (fVar != null) {
            d.a r10 = eVar.f51571a.r();
            ca.d dVar = eVar.f51573c;
            Intrinsics.checkNotNullExpressionValue(precision, "precision");
            Intrinsics.checkNotNullExpressionValue(countryCode, "countryCode");
            r10.d(dVar, fVar, new ca.h(precision, revenue, countryCode));
        }
    }

    public static final void e(e eVar, MaxError maxError) {
        if (eVar.f51576f == null) {
            ga.a.f52235a.d(d.h.b(eVar.f51575e, "AdManager:ApplovinMax:Listener"), "err:adRequestParam is null");
        }
        eVar.f51573c.v(null);
        ca.f fVar = eVar.f51576f;
        if (fVar != null) {
            eVar.f51571a.M(eVar.f51572b);
            d.a r10 = eVar.f51571a.r();
            ca.d dVar = eVar.f51573c;
            String message = maxError.getMessage();
            if (message == null) {
                message = "unknow";
            } else {
                Intrinsics.checkNotNullExpressionValue(message, "error.message ?: \"unknow\"");
            }
            r10.getClass();
            d.a.f(dVar, message, fVar);
        }
    }

    public final MaxAdRevenueListener a() {
        return new MaxAdRevenueListener() { // from class: f.d
            @Override // com.applovin.mediation.MaxAdRevenueListener
            public final void onAdRevenuePaid(MaxAd maxAd) {
                e.d(e.this, maxAd);
            }
        };
    }

    public final void b(ca.f reqp) {
        Intrinsics.checkNotNullParameter(reqp, "reqp");
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(this.f51575e, "AdManager:ApplovinMax:Listener");
        aVar.b(b10, "toMaxAdListener:setShowParam" + this.f51573c);
        this.f51576f = reqp;
    }

    public final void f(Object ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        if (ad2 instanceof MaxAppOpenAd) {
            MaxAppOpenAd maxAppOpenAd = (MaxAppOpenAd) ad2;
            maxAppOpenAd.setListener(new b(this));
            maxAppOpenAd.setRevenueListener(a());
        } else if (ad2 instanceof MaxInterstitialAd) {
            MaxInterstitialAd maxInterstitialAd = (MaxInterstitialAd) ad2;
            maxInterstitialAd.setListener(new b(this));
            maxInterstitialAd.setRevenueListener(a());
        } else if (ad2 instanceof MaxRewardedAd) {
            MaxRewardedAd maxRewardedAd = (MaxRewardedAd) ad2;
            maxRewardedAd.setListener(new c(this));
            maxRewardedAd.setRevenueListener(a());
        } else {
            throw new Exception("not implement Listener of this type ad");
        }
    }
}
