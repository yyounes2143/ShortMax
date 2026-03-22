package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Comparator;
/* loaded from: assets/audience_network.dex */
public class B0 extends AbstractC2627m4 {
    public B0() {
        super(null);
    }

    private final AbstractC2627m4 A00(int result) {
        AbstractC2627m4 abstractC2627m4;
        AbstractC2627m4 abstractC2627m42;
        AbstractC2627m4 abstractC2627m43;
        if (result < 0) {
            abstractC2627m43 = AbstractC2627m4.A02;
            return abstractC2627m43;
        } else if (result > 0) {
            abstractC2627m42 = AbstractC2627m4.A01;
            return abstractC2627m42;
        } else {
            abstractC2627m4 = AbstractC2627m4.A00;
            return abstractC2627m4;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final int A05() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final AbstractC2627m4 A06(int left, int right) {
        return A00(AD.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final AbstractC2627m4 A07(long left, long right) {
        return A00(AbstractC2856q7.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final <T> AbstractC2627m4 A08(@ParametricNullness T left, @ParametricNullness T right, Comparator<T> comparator) {
        return A00(comparator.compare(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final AbstractC2627m4 A09(boolean left, boolean right) {
        return A00(PD.A00(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2627m4
    public final AbstractC2627m4 A0A(boolean left, boolean right) {
        return A00(PD.A00(right, left));
    }
}
