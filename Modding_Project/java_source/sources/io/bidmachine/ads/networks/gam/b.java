package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import xq.c;
/* compiled from: GAMBaseAdListener.java */
/* loaded from: classes7.dex */
abstract class b<GAMAdType extends InternalGAMAd, UnifiedAdCallbackType extends xq.c> implements c0<GAMAdType>, d0 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedAdCallbackType f53653a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull UnifiedAdCallbackType unifiedadcallbacktype) {
        this.f53653a = unifiedadcallbacktype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public UnifiedAdCallbackType c() {
        return this.f53653a;
    }

    @Override // io.bidmachine.ads.networks.gam.d0
    public void onAdClicked() {
        this.f53653a.onAdClicked();
    }

    @Override // io.bidmachine.ads.networks.gam.d0
    public void onAdExpired() {
        this.f53653a.onAdExpired();
    }

    @Override // io.bidmachine.ads.networks.gam.c0
    public void onAdLoadFailed(@NonNull fr.a aVar) {
        this.f53653a.onAdLoadFailed(aVar);
    }

    @Override // io.bidmachine.ads.networks.gam.d0
    public void onAdShowFailed(@NonNull fr.a aVar) {
        this.f53653a.onAdShowFailed(aVar);
    }

    @Override // io.bidmachine.ads.networks.gam.d0
    public void onAdShown() {
        this.f53653a.onAdShown();
    }
}
