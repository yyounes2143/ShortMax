package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.jH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2468jH {
    public final int A00;
    public final BZ A01;
    public final InterfaceC2467jG A02;
    public final boolean A03;

    public C2468jH(InterfaceC2467jG strategy) {
        this(strategy, false, BZ.A03(), Integer.MAX_VALUE);
    }

    public C2468jH(InterfaceC2467jG strategy, boolean omitEmptyStrings, BZ trimmer, int limit) {
        this.A02 = strategy;
        this.A03 = omitEmptyStrings;
        this.A01 = trimmer;
        this.A00 = limit;
    }

    public static C2468jH A02(char separator) {
        return A03(BZ.A02(separator));
    }

    public static C2468jH A03(final BZ separatorMatcher) {
        AbstractC2461jA.A04(separatorMatcher);
        return new C2468jH(new BK(separatorMatcher));
    }

    private Iterator<String> A04(CharSequence sequence) {
        return this.A02.AAc(this, sequence);
    }

    public final List<String> A06(CharSequence sequence) {
        AbstractC2461jA.A04(sequence);
        Iterator<String> A04 = A04(sequence);
        List<String> result = new ArrayList<>();
        while (A04.hasNext()) {
            result.add(A04.next());
        }
        return Collections.unmodifiableList(result);
    }
}
