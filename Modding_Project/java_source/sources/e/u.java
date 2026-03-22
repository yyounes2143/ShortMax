package e;

import ca.f;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class u extends FullScreenContentCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k0 f50693a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.d f50694b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ca.f f50695c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ InterstitialAd f50696d;

    public u(k0 k0Var, ca.d dVar, ca.f fVar, InterstitialAd interstitialAd) {
        this.f50693a = k0Var;
        this.f50694b = dVar;
        this.f50695c = fVar;
        this.f50696d = interstitialAd;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdClicked() {
        ga.a.f52235a.d("AdManagerAdmobShower", "AdmobInterstitialAd -> onAdClicked");
        f.b g10 = this.f50695c.g();
        if (g10 != null) {
            g10.a(this.f50694b);
        }
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        ga.a.f52235a.d("AdManagerAdmobShower", "AdmobInterstitialAd -> onAdDismissedFullScreenContent");
        this.f50696d.setFullScreenContentCallback(null);
        this.f50693a.h(this.f50694b);
        ca.d dVar = this.f50694b;
        ca.f fVar = this.f50695c;
        ((d.a) this.f50693a.f50659b.getValue()).getClass();
        d.a.e(dVar, fVar, null);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdFailedToShowFullScreenContent(AdError e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        ga.a aVar = ga.a.f52235a;
        aVar.c("AdManagerAdmobShower", "AdmobInterstitialAd -> onAdFailedToShowFullScreenContent(" + e10 + ')');
        this.f50696d.setFullScreenContentCallback(null);
        this.f50693a.h(this.f50694b);
        ca.d dVar = this.f50694b;
        String message = e10.getMessage();
        ca.f fVar = this.f50695c;
        ((d.a) this.f50693a.f50659b.getValue()).getClass();
        d.a.f(dVar, message, fVar);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        ga.a.f52235a.d("AdManagerAdmobShower", "AdmobInterstitialAd -> onAdShowedFullScreenContent");
        ((d.a) this.f50693a.f50659b.getValue()).i(this.f50694b, this.f50695c);
    }
}
