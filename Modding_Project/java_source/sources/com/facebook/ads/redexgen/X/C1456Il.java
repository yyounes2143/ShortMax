package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Il  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1456Il implements InterfaceC1893Zo {
    public final WeakReference<C5Q> A00;

    public C1456Il(C5Q c5q) {
        this.A00 = new WeakReference<>(c5q);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1893Zo
    public final void ADT(C1892Zn c1892Zn) {
        C5Q c5q = this.A00.get();
        if (c5q != null) {
            c5q.A06 = c1892Zn.A00() != null;
            c5q.A02();
        }
    }
}
