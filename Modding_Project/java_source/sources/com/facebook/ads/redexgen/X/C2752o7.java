package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.o7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2752o7 implements C1S {
    public final int A00;
    public final C2762oH A01;
    public final boolean A02;
    public final int[] A03;
    public final boolean[] A04;
    public static final String A07 = AbstractC10974a.A0h(0);
    public static final String A09 = AbstractC10974a.A0h(1);
    public static final String A08 = AbstractC10974a.A0h(3);
    public static final String A06 = AbstractC10974a.A0h(4);
    public static final C1R<C2752o7> A05 = new C1R() { // from class: com.facebook.ads.redexgen.X.o8
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            return C2752o7.A00(bundle);
        }
    };

    public C2752o7(C2762oH c2762oH, boolean z10, int[] iArr, boolean[] zArr) {
        this.A00 = c2762oH.A01;
        boolean z11 = false;
        C3M.A07(this.A00 == iArr.length && this.A00 == zArr.length);
        this.A01 = c2762oH;
        if (z10 && this.A00 > 1) {
            z11 = true;
        }
        this.A02 = z11;
        this.A03 = (int[]) iArr.clone();
        this.A04 = (boolean[]) zArr.clone();
    }

    public static /* synthetic */ C2752o7 A00(Bundle bundle) {
        C2762oH A6X = C2762oH.A06.A6X((Bundle) C3M.A01(bundle.getBundle(A07)));
        boolean[] selected = (boolean[]) AbstractC2453j1.A00(bundle.getBooleanArray(A08), new boolean[A6X.A01]);
        return new C2752o7(A6X, bundle.getBoolean(A06, false), (int[]) AbstractC2453j1.A00(bundle.getIntArray(A09), new int[A6X.A01]), selected);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2752o7 c2752o7 = (C2752o7) obj;
        if (this.A02 == c2752o7.A02 && this.A01.equals(c2752o7.A01) && Arrays.equals(this.A03, c2752o7.A03) && Arrays.equals(this.A04, c2752o7.A04)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A01.hashCode();
        int i10 = result * 31;
        int result2 = this.A02 ? 1 : 0;
        int result3 = Arrays.hashCode(this.A04);
        return ((((i10 + result2) * 31) + Arrays.hashCode(this.A03)) * 31) + result3;
    }
}
