package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.9o  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C12289o extends AbstractC2774oU {
    public final boolean A00;
    public final boolean A01;
    public static final String A04 = AbstractC10974a.A0h(1);
    public static final String A03 = AbstractC10974a.A0h(2);
    public static final C1R<C12289o> A02 = new C1R() { // from class: com.facebook.ads.redexgen.X.oS
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C12289o A00;
            A00 = C12289o.A00(bundle);
            return A00;
        }
    };

    public C12289o() {
        this.A01 = false;
        this.A00 = false;
    }

    public C12289o(boolean z10) {
        this.A01 = true;
        this.A00 = z10;
    }

    public static C12289o A00(Bundle bundle) {
        boolean rated = bundle.getInt(AbstractC2774oU.A02, -1) == 3;
        C3M.A07(rated);
        boolean rated2 = bundle.getBoolean(A04, false);
        if (rated2) {
            return new C12289o(bundle.getBoolean(A03, false));
        }
        return new C12289o();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C12289o) {
            C12289o c12289o = (C12289o) obj;
            return this.A00 == c12289o.A00 && this.A01 == c12289o.A01;
        }
        return false;
    }

    public final int hashCode() {
        return BX.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}
