package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import xq.c;
/* compiled from: GAMBaseAdListener.java */
/* loaded from: classes7.dex */
abstract class i<InternalAdType extends InternalAd, UnifiedAdCallbackType extends xq.c> implements u<InternalAdType>, hm.m {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedAdCallbackType f53761a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@NonNull UnifiedAdCallbackType unifiedadcallbacktype) {
        this.f53761a = unifiedadcallbacktype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public UnifiedAdCallbackType c() {
        return this.f53761a;
    }

    @Override // hm.m
    public void onAdClicked() {
        this.f53761a.onAdClicked();
    }

    @Override // hm.m
    public void onAdExpired() {
        this.f53761a.onAdExpired();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.u
    public void onAdLoadFailed(@NonNull fr.a aVar) {
        this.f53761a.onAdLoadFailed(aVar);
    }

    @Override // hm.m
    public void onAdShowFailed(@NonNull fr.a aVar) {
        this.f53761a.onAdShowFailed(aVar);
    }

    @Override // hm.m
    public void onAdShown() {
        this.f53761a.onAdShown();
    }
}
