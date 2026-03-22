package io.bidmachine.ads.networks.vast;

import androidx.annotation.NonNull;
import xq.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastFullScreenAdLoadListener.java */
/* loaded from: classes7.dex */
public class b implements tm.e {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final i f53894a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull i iVar) {
        this.f53894a = iVar;
    }

    @Override // tm.e
    public void a(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
        if (aVar2.c() == 6) {
            this.f53894a.onAdExpired();
        } else {
            this.f53894a.onAdLoadFailed(fr.d.a(aVar2));
        }
    }

    @Override // tm.e
    public void b(@NonNull io.bidmachine.iab.vast.a aVar) {
        this.f53894a.onAdLoaded();
    }
}
