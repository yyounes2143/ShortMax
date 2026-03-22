package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Tc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1729Tc implements InterfaceC1762Uk {
    public WeakReference<C1652Qc> A00;

    public C1729Tc(C1652Qc c1652Qc) {
        this.A00 = new WeakReference<>(c1652Qc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1762Uk
    public final void AEW(boolean z10) {
        if (this.A00.get() != null) {
            this.A00.get().A1f(z10, false);
        }
    }
}
