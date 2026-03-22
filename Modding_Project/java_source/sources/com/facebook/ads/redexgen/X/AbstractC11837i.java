package com.facebook.ads.redexgen.X;

import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.7i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC11837i extends AbstractC2717nX implements J7 {
    public long A00;
    public J7 A01;

    @Override // com.facebook.ads.redexgen.X.AbstractC2717nX
    public abstract void A0B();

    @Override // com.facebook.ads.redexgen.X.C5I
    public final void A0A() {
        super.A0A();
        this.A01 = null;
    }

    public final void A0C(long j10, J7 j72, long j11) {
        super.A01 = j10;
        this.A01 = j72;
        if (j11 == Long.MAX_VALUE) {
            j11 = super.A01;
        }
        this.A00 = j11;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2747o2> A7P(long j10) {
        return ((J7) C3M.A01(this.A01)).A7P(j10 - this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i10) {
        return ((J7) C3M.A01(this.A01)).A7v(i10) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return ((J7) C3M.A01(this.A01)).A7w();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j10) {
        return ((J7) C3M.A01(this.A01)).A8S(j10 - this.A00);
    }
}
