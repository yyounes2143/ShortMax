package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public class K0 implements InterfaceC1893Zo {
    public final WeakReference<C11305h> A00;

    public K0(C11305h c11305h) {
        this.A00 = new WeakReference<>(c11305h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1893Zo
    public final void ADT(C1892Zn c1892Zn) {
        C11305h c11305h = this.A00.get();
        if (c11305h != null) {
            c11305h.A04 = c1892Zn.A00() != null;
            c11305h.A02();
        }
    }
}
