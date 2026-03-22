package e;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class l extends InterstitialAdLoadCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f50660a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f50661b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g.a f50662c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ca.e f50663d;

    public l(t tVar, String str, g.a aVar, ca.e eVar) {
        this.f50660a = tVar;
        this.f50661b = str;
        this.f50662c = aVar;
        this.f50663d = eVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        t.X(this.f50660a, this.f50663d, this.f50662c, this.f50661b, error);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdLoaded(InterstitialAd interstitialAd) {
        InterstitialAd ad2 = interstitialAd;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.f50660a.Z(this.f50661b, ad2, this.f50662c, ad2.getResponseInfo());
    }
}
