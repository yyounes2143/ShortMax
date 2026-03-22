package e;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewarded.RewardedAd;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
/* loaded from: classes.dex */
public final class b0 extends FullScreenContentCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k0 f50615a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.d f50616b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ca.f f50617c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RewardedAd f50618d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Ref.BooleanRef f50619e;

    public b0(k0 k0Var, ca.d dVar, ca.f fVar, RewardedAd rewardedAd, Ref.BooleanRef booleanRef) {
        this.f50615a = k0Var;
        this.f50616b = dVar;
        this.f50617c = fVar;
        this.f50618d = rewardedAd;
        this.f50619e = booleanRef;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdClicked() {
        ca.d dVar = this.f50616b;
        ca.f fVar = this.f50617c;
        ((d.a) this.f50615a.f50659b.getValue()).getClass();
        d.a.h(dVar, fVar);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        this.f50618d.setFullScreenContentCallback(null);
        this.f50615a.h(this.f50616b);
        ca.d dVar = this.f50616b;
        ca.f fVar = this.f50617c;
        Boolean valueOf = Boolean.valueOf(this.f50619e.element);
        ((d.a) this.f50615a.f50659b.getValue()).getClass();
        d.a.e(dVar, fVar, valueOf);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdFailedToShowFullScreenContent(AdError e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f50618d.setFullScreenContentCallback(null);
        this.f50615a.h(this.f50616b);
        ca.d dVar = this.f50616b;
        String message = e10.getMessage();
        ca.f fVar = this.f50617c;
        ((d.a) this.f50615a.f50659b.getValue()).getClass();
        d.a.f(dVar, message, fVar);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        ((d.a) this.f50615a.f50659b.getValue()).i(this.f50616b, this.f50617c);
    }
}
