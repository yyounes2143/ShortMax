package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.9s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C12329s extends AbstractC2774oU {
    public final boolean A00;
    public final boolean A01;
    public static final String A04 = AbstractC10974a.A0h(1);
    public static final String A03 = AbstractC10974a.A0h(2);
    public static final C1R<C12329s> A02 = new C1R() { // from class: com.facebook.ads.redexgen.X.op
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C12329s A00;
            A00 = C12329s.A00(bundle);
            return A00;
        }
    };

    public C12329s() {
        this.A01 = false;
        this.A00 = false;
    }

    public C12329s(boolean z10) {
        this.A01 = true;
        this.A00 = z10;
    }

    public static C12329s A00(Bundle bundle) {
        boolean isRated = bundle.getInt(AbstractC2774oU.A02, -1) == 0;
        C3M.A07(isRated);
        boolean isRated2 = bundle.getBoolean(A04, false);
        if (isRated2) {
            return new C12329s(bundle.getBoolean(A03, false));
        }
        return new C12329s();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C12329s) {
            C12329s c12329s = (C12329s) obj;
            return this.A00 == c12329s.A00 && this.A01 == c12329s.A01;
        }
        return false;
    }

    public final int hashCode() {
        return BX.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}
