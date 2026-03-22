package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
/* compiled from: GAMInterstitialAd.java */
/* loaded from: classes7.dex */
class n extends l {
    @Nullable
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    y f53797c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GAMInterstitialAd.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static final class a extends m<hm.p> implements y {
        a(@NonNull xq.i iVar, @NonNull l lVar) {
            super(iVar, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public n(@NonNull o oVar) {
        super(oVar);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.l, xq.b
    public void d() {
        this.f53797c = null;
        super.d();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.l
    @Nullable
    protected hm.o l() {
        return this.f53797c;
    }

    @Override // xq.b
    /* renamed from: m */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @NonNull xq.j jVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        a aVar = new a(iVar, this);
        this.f53797c = aVar;
        this.f53790a.e(networkAdUnit, aVar);
    }
}
