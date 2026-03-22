package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
/* compiled from: GAMRewardedAd.java */
/* loaded from: classes7.dex */
class t extends l {
    @Nullable
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    z f53828c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GAMRewardedAd.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static final class a extends m<hm.r> implements z {
        a(@NonNull xq.i iVar, @NonNull l lVar) {
            super(iVar, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public t(@NonNull o oVar) {
        super(oVar);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.l, xq.b
    public void d() {
        this.f53828c = null;
        super.d();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.l
    @Nullable
    protected hm.o l() {
        return this.f53828c;
    }

    @Override // xq.b
    /* renamed from: m */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @NonNull xq.j jVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        a aVar = new a(iVar, this);
        this.f53828c = aVar;
        this.f53790a.c(networkAdUnit, aVar);
    }
}
