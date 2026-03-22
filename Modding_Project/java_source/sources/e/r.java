package e;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class r extends RewardedAdLoadCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f50683a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f50684b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g.a f50685c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ca.e f50686d;

    public r(t tVar, String str, g.a aVar, ca.e eVar) {
        this.f50683a = tVar;
        this.f50684b = str;
        this.f50685c = aVar;
        this.f50686d = eVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        t.X(this.f50683a, this.f50686d, this.f50685c, this.f50684b, error);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdLoaded(RewardedAd rewardedAd) {
        RewardedAd ad2 = rewardedAd;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.f50683a.Z(this.f50684b, ad2, this.f50685c, ad2.getResponseInfo());
    }
}
