package io.bidmachine.ads.networks.gam;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMInterstitial.java */
/* loaded from: classes7.dex */
public class d extends xq.h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final o f53655a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f53656b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private j0 f53657c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GAMInterstitial.java */
    /* loaded from: classes7.dex */
    public static final class b extends c<j0> implements k0 {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final d f53658b;

        @Override // io.bidmachine.ads.networks.gam.c0
        /* renamed from: e */
        public void a(@NonNull j0 j0Var) {
            this.f53658b.f53657c = j0Var;
            super.d(j0Var);
        }

        private b(@NonNull xq.i iVar, @NonNull d dVar) {
            super(iVar);
            this.f53658b = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(@NonNull o oVar) {
        this.f53655a = oVar;
    }

    @Override // xq.b
    public void d() {
        this.f53656b = null;
        j0 j0Var = this.f53657c;
        if (j0Var != null) {
            j0Var.h();
            this.f53657c = null;
        }
    }

    @Override // xq.b
    public void h() {
        super.h();
        j0 j0Var = this.f53657c;
        if (j0Var != null) {
            j0Var.D();
        }
    }

    @Override // xq.h
    public void k(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            iVar.onAdShowFailed(fr.a.i("Activity is null"));
            return;
        }
        j0 j0Var = this.f53657c;
        if (j0Var == null) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM interstitial object is null"));
        } else if (j0Var.q()) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM interstitial object is expired"));
        } else if (!this.f53657c.r()) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM interstitial object not loaded"));
        } else {
            b bVar = this.f53656b;
            if (bVar == null) {
                iVar.onAdShowFailed(fr.a.i("InternalGAM interstitial listener is null"));
            } else {
                this.f53657c.J(activity, bVar);
            }
        }
    }

    @Override // xq.b
    /* renamed from: m */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @NonNull xq.j jVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        if (!new p(kVar).a(iVar)) {
            return;
        }
        b bVar = new b(iVar, this);
        this.f53656b = bVar;
        this.f53655a.n(networkAdUnit, bVar);
    }
}
