package e;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.appopen.AppOpenAd;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class p extends FullScreenContentCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k0 f50675a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.d f50676b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ca.f f50677c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AppOpenAd f50678d;

    public p(k0 k0Var, ca.d dVar, ca.f fVar, AppOpenAd appOpenAd) {
        this.f50675a = k0Var;
        this.f50676b = dVar;
        this.f50677c = fVar;
        this.f50678d = appOpenAd;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdClicked() {
        ca.d dVar = this.f50676b;
        ca.f fVar = this.f50677c;
        ((d.a) this.f50675a.f50659b.getValue()).getClass();
        d.a.h(dVar, fVar);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        this.f50678d.setFullScreenContentCallback(null);
        this.f50675a.h(this.f50676b);
        ca.d dVar = this.f50676b;
        ca.f fVar = this.f50677c;
        ((d.a) this.f50675a.f50659b.getValue()).getClass();
        d.a.e(dVar, fVar, null);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdFailedToShowFullScreenContent(AdError e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f50678d.setFullScreenContentCallback(null);
        this.f50675a.h(this.f50676b);
        ca.d dVar = this.f50676b;
        String message = e10.getMessage();
        ca.f fVar = this.f50677c;
        ((d.a) this.f50675a.f50659b.getValue()).getClass();
        d.a.f(dVar, message, fVar);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        ((d.a) this.f50675a.f50659b.getValue()).i(this.f50676b, this.f50677c);
    }
}
