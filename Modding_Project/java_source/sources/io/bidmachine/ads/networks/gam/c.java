package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam.h0;
/* compiled from: GAMFullscreenAdListener.java */
/* loaded from: classes7.dex */
class c<GAMAdType extends h0> extends b<GAMAdType, xq.i> implements c0<GAMAdType>, i0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull xq.i iVar) {
        super(iVar);
    }

    @Override // io.bidmachine.ads.networks.gam.i0
    public void b() {
        c().b();
    }

    public void d(@NonNull GAMAdType gamadtype) {
        c().onAdLoaded();
    }

    @Override // io.bidmachine.ads.networks.gam.i0
    public void onAdClosed() {
        c().onAdClosed();
    }
}
