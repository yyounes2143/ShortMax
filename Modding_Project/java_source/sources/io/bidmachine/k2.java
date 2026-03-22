package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: BidMachineSessionTracker.java */
/* loaded from: classes7.dex */
class k2 extends wq.g {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final a2 f55040c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k2(@NonNull wq.b bVar) {
        super(bVar);
        this.f55040c = new a2();
    }

    @Override // wq.g, wq.b
    public void a(@NonNull wq.k kVar, @NonNull TrackEventType trackEventType, @Nullable wq.j jVar, @Nullable AdsType adsType, @Nullable fr.a aVar, @Nullable wq.a aVar2) {
        super.a(kVar, trackEventType, jVar, adsType, aVar, aVar2);
        this.f55040c.a(kVar, trackEventType, jVar, adsType, aVar, aVar2);
    }
}
