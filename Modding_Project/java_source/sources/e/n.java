package e;

import ca.f;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class n extends AdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f50667a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.e f50668b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g.a f50669c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f50670d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ca.d f50671e;

    public n(t tVar, ca.e eVar, g.a aVar, String str, ca.d dVar) {
        this.f50667a = tVar;
        this.f50668b = eVar;
        this.f50669c = aVar;
        this.f50670d = str;
        this.f50671e = dVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        d.e u10;
        ca.d adInfo = this.f50671e;
        if (adInfo != null && (u10 = this.f50667a.u(this.f50670d)) != null) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            ga.a aVar = ga.a.f52235a;
            aVar.d("AdEventHandler", "AdmobNativeAd -> onAdClicked " + adInfo);
            f.b g10 = ((w) u10).f50700b.g();
            if (g10 != null) {
                g10.a(adInfo);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        t.X(this.f50667a, this.f50668b, this.f50669c, this.f50670d, error);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdImpression() {
        d.e u10;
        ca.d adInfo = this.f50671e;
        if (adInfo != null && (u10 = this.f50667a.u(this.f50670d)) != null) {
            w wVar = (w) u10;
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            ga.a aVar = ga.a.f52235a;
            aVar.d("AdEventHandler", "AdmobNativeAd -> onAdImpression " + adInfo);
            ((d.a) wVar.f50699a.f50659b.getValue()).i(adInfo, wVar.f50700b);
            wVar.f50699a.h(adInfo);
        }
    }
}
