package com.applovin.impl.mediation;

import com.applovin.impl.mediation.a;
import com.applovin.impl.mediation.c;
import com.applovin.impl.q2;
import com.applovin.impl.z2;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes2.dex */
public class b implements a.InterfaceC0112a, c.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8696a;

    /* renamed from: b  reason: collision with root package name */
    private final a f8697b;

    /* renamed from: c  reason: collision with root package name */
    private final c f8698c;

    public b(com.applovin.impl.sdk.k kVar) {
        this.f8696a = kVar;
        this.f8697b = new a(kVar);
        this.f8698c = new c(kVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void c(z2 z2Var) {
        h A;
        if (z2Var != null && (A = z2Var.A()) != null && z2Var.w().compareAndSet(false, true)) {
            q2.e(A.c(), z2Var);
        }
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0112a
    public void b(final z2 z2Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.r
            @Override // java.lang.Runnable
            public final void run() {
                b.this.c(z2Var);
            }
        }, z2Var.g0());
    }

    public void e(z2 z2Var) {
        long h02 = z2Var.h0();
        if (h02 >= 0) {
            this.f8698c.a(z2Var, h02);
        }
        if (z2Var.r0() || z2Var.s0()) {
            this.f8697b.a(z2Var, this);
        }
    }

    public void a() {
        this.f8698c.a();
        this.f8697b.a();
    }

    @Override // com.applovin.impl.mediation.c.a
    public void a(z2 z2Var) {
        c(z2Var);
    }
}
