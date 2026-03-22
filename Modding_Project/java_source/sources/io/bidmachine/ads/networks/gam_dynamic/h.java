package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.VisibilitySource;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMBannerAd.java */
/* loaded from: classes7.dex */
public class h extends xq.e {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final o f53755a;
    @Nullable
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    w f53756b;
    @Nullable
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    v f53757c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GAMBannerAd.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static final class a extends i<v, xq.f> implements w {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final h f53758b;

        a(@NonNull xq.f fVar, @NonNull h hVar) {
            super(fVar);
            this.f53758b = hVar;
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.u
        /* renamed from: d */
        public void a(@NonNull v vVar) {
            this.f53758b.f53757c = vVar;
            if (vVar.m().getOverrideCallbacks()) {
                c().setVisibilitySource(VisibilitySource.BidMachine);
            }
            c().onAdLoaded(vVar.K());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(@NonNull o oVar) {
        this.f53755a = oVar;
    }

    @Override // xq.b
    @Nullable
    public Map<String, Object> a() {
        v vVar = this.f53757c;
        if (vVar != null) {
            return vVar.getCustomParamsMap();
        }
        return null;
    }

    @Override // xq.b
    public void d() {
        this.f53756b = null;
        v vVar = this.f53757c;
        if (vVar != null) {
            vVar.i();
            this.f53757c = null;
        }
    }

    @Override // xq.b
    public void h() {
        super.h();
        v vVar = this.f53757c;
        if (vVar != null) {
            vVar.D();
        }
    }

    @Override // xq.b
    /* renamed from: j */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.f fVar, @NonNull xq.g gVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        a aVar = new a(fVar, this);
        this.f53756b = aVar;
        this.f53755a.g(networkAdUnit, aVar);
    }
}
