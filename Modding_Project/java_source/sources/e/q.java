package e;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class q extends AdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k0 f50679a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.d f50680b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ca.f f50681c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AdView f50682d;

    public q(k0 k0Var, ca.d dVar, ca.f fVar, AdView adView) {
        this.f50679a = k0Var;
        this.f50680b = dVar;
        this.f50681c = fVar;
        this.f50682d = adView;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        ca.d dVar = this.f50680b;
        ca.f fVar = this.f50681c;
        ((d.a) this.f50679a.f50659b.getValue()).getClass();
        d.a.h(dVar, fVar);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdImpression() {
        super.onAdImpression();
        ((d.a) this.f50679a.f50659b.getValue()).i(this.f50680b, this.f50681c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        t tVar = this.f50679a.f50658a;
        ca.d dVar = this.f50680b;
        int i10 = t.f50688q;
        tVar.J(dVar, -1L, d.a(this.f50682d.getResponseInfo()), true);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
    }
}
