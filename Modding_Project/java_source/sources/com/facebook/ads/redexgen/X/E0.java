package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class E0 implements Comparable<E0> {
    public final boolean A00;
    public final boolean A01;

    public E0(C2796or c2796or, int i10) {
        this.A00 = (c2796or.A0H & 1) != 0;
        this.A01 = AnonymousClass92.A0S(i10, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(E0 e02) {
        return AbstractC2627m4.A01().A09(this.A01, e02.A01).A09(this.A00, e02.A00).A05();
    }
}
