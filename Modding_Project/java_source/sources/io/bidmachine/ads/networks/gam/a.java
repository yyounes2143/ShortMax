package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.VisibilitySource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMBanner.java */
/* loaded from: classes7.dex */
public class a extends xq.e {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final o f53648a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private f0 f53649b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private e0 f53650c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GAMBanner.java */
    /* loaded from: classes7.dex */
    public static final class b extends io.bidmachine.ads.networks.gam.b<e0, xq.f> implements f0 {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final a f53651b;

        @Override // io.bidmachine.ads.networks.gam.c0
        /* renamed from: d */
        public void a(@NonNull e0 e0Var) {
            this.f53651b.f53650c = e0Var;
            c().onAdLoaded(e0Var.H());
        }

        private b(@NonNull a aVar, @NonNull xq.f fVar) {
            super(fVar);
            this.f53651b = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(@NonNull o oVar) {
        this.f53648a = oVar;
    }

    @Override // xq.b
    public void d() {
        this.f53649b = null;
        e0 e0Var = this.f53650c;
        if (e0Var != null) {
            e0Var.h();
            this.f53650c = null;
        }
    }

    @Override // xq.b
    public void h() {
        super.h();
        e0 e0Var = this.f53650c;
        if (e0Var != null) {
            e0Var.D();
        }
    }

    @Override // xq.b
    /* renamed from: k */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.f fVar, @NonNull xq.g gVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        if (!new p(kVar).a(fVar)) {
            return;
        }
        if (!this.f53648a.i()) {
            fVar.setVisibilitySource(VisibilitySource.BidMachine);
        }
        b bVar = new b(fVar);
        this.f53649b = bVar;
        this.f53648a.m(networkAdUnit, bVar);
    }
}
