package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.oC  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2757oC implements C1S {
    public final C2762oH A00;
    public final AbstractC1252Am<Integer> A01;
    public static final String A04 = AbstractC10974a.A0h(0);
    public static final String A03 = AbstractC10974a.A0h(1);
    public static final C1R<C2757oC> A02 = new C1R() { // from class: com.facebook.ads.redexgen.X.oD
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            return C2757oC.A00(bundle);
        }
    };

    public C2757oC(C2762oH c2762oH, List<Integer> trackIndices) {
        if (trackIndices.isEmpty() || (((Integer) Collections.min(trackIndices)).intValue() >= 0 && ((Integer) Collections.max(trackIndices)).intValue() < c2762oH.A01)) {
            this.A00 = c2762oH;
            this.A01 = AbstractC1252Am.A05(trackIndices);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public static /* synthetic */ C2757oC A00(Bundle bundle) {
        return new C2757oC(C2762oH.A06.A6X((Bundle) C3M.A01(bundle.getBundle(A04))), AD.A0A((int[]) C3M.A01(bundle.getIntArray(A03))));
    }

    public final int A01() {
        return this.A00.A02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2757oC c2757oC = (C2757oC) obj;
        return this.A00.equals(c2757oC.A00) && this.A01.equals(c2757oC.A01);
    }

    public final int hashCode() {
        return this.A00.hashCode() + (this.A01.hashCode() * 31);
    }
}
