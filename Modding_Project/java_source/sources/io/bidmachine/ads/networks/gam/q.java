package io.bidmachine.ads.networks.gam;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMRewarded.java */
/* loaded from: classes7.dex */
public class q extends xq.h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final o f53703a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f53704b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private l0 f53705c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GAMRewarded.java */
    /* loaded from: classes7.dex */
    public static final class b extends c<l0> implements m0 {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f53706b;

        @Override // io.bidmachine.ads.networks.gam.c0
        /* renamed from: e */
        public void a(@NonNull l0 l0Var) {
            this.f53706b.f53705c = l0Var;
            super.d(l0Var);
        }

        private b(@NonNull xq.i iVar, @NonNull q qVar) {
            super(iVar);
            this.f53706b = qVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q(@NonNull o oVar) {
        this.f53703a = oVar;
    }

    @Override // xq.b
    public void d() {
        this.f53704b = null;
        l0 l0Var = this.f53705c;
        if (l0Var != null) {
            l0Var.h();
            this.f53705c = null;
        }
    }

    @Override // xq.b
    public void h() {
        super.h();
        l0 l0Var = this.f53705c;
        if (l0Var != null) {
            l0Var.D();
        }
    }

    @Override // xq.h
    public void k(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            iVar.onAdShowFailed(fr.a.i("Activity is null"));
            return;
        }
        l0 l0Var = this.f53705c;
        if (l0Var == null) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM rewarded object is null"));
        } else if (l0Var.q()) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM rewarded object is expired"));
        } else if (!this.f53705c.r()) {
            iVar.onAdShowFailed(fr.a.i("InternalGAM rewarded object not loaded"));
        } else {
            b bVar = this.f53704b;
            if (bVar == null) {
                iVar.onAdShowFailed(fr.a.i("InternalGAM rewarded listener is null"));
            } else {
                this.f53705c.J(activity, bVar);
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
        this.f53704b = bVar;
        this.f53703a.o(networkAdUnit, bVar);
    }
}
