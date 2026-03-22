package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam_dynamic.x;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMFullscreenAdListener.java */
/* loaded from: classes7.dex */
public class m<InternalAdType extends x> extends i<InternalAdType, xq.i> implements u<InternalAdType>, hm.o {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final l f53794b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(@NonNull xq.i iVar, @NonNull l lVar) {
        super(iVar);
        this.f53794b = lVar;
    }

    @Override // hm.o
    public void b() {
        c().b();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.u
    /* renamed from: d */
    public void a(@NonNull InternalAdType internaladtype) {
        this.f53794b.f53791b = internaladtype;
        c().onAdLoaded();
    }

    @Override // hm.o
    public void onAdClosed() {
        c().onAdClosed();
    }
}
