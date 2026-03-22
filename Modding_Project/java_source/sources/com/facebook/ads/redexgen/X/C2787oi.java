package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.oi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2787oi implements C1S {
    public final C2791om A00;
    @Deprecated
    public final C12319r A01;
    public final C2789ok A02;
    public final C2Q A03;
    @Deprecated
    public final C2788oj A04;
    public final C2785og A05;
    public final String A06;
    public static String[] A07 = {"wAM8vtdO0lmHfSdh0aX8JSKdnwpCp9D2", "", "J6SB4ddL0FfEeVIHYuGnUGetWM2QRdUO", "0HTq7SjPEUFdYYph8tikUta3pLjb69Rn", "wGA6vSFg01QHk42FD2L8p637KRkqAXcn", "9eG6h6QaFREs2gWO0", "Z5vutuZNVsi2rK7c87KXUNl8wBJYnGEL", "V2BGt2aUfGoyLxnwwGFsOMeTNor3H3xe"};
    public static final C2787oi A09 = new C2I().A05();
    public static final C1R<C2787oi> A08 = new C1R() { // from class: com.facebook.ads.redexgen.X.oo
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C2787oi A00;
            A00 = C2787oi.A00(bundle);
            return A00;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2787oi A00(Bundle bundle) {
        String str = (String) C3M.A01(bundle.getString(A02(0), ""));
        Bundle bundle2 = bundle.getBundle(A02(1));
        C2789ok A6X = bundle2 == null ? C2789ok.A07 : C2789ok.A06.A6X(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        C2785og A6X2 = bundle3 == null ? C2785og.A0Z : C2785og.A0Y.A6X(bundle3);
        Bundle bundle4 = bundle.getBundle(A02(3));
        return new C2787oi(str, bundle4 == null ? C12319r.A00 : C2791om.A05.A6X(bundle4), null, A6X, A6X2);
    }

    public C2787oi(String str, C12319r c12319r, C2788oj c2788oj, C2789ok c2789ok, C2785og c2785og) {
        this.A06 = str;
        this.A03 = c2788oj;
        this.A04 = c2788oj;
        this.A02 = c2789ok;
        this.A05 = c2785og;
        this.A00 = c12319r;
        this.A01 = c12319r;
    }

    public static String A02(int i10) {
        return Integer.toString(i10, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2787oi) {
            C2787oi c2787oi = (C2787oi) obj;
            if (AbstractC10974a.A1E(this.A06, c2787oi.A06)) {
                C2791om c2791om = this.A00;
                C2791om c2791om2 = c2787oi.A00;
                String[] strArr = A07;
                if (strArr[7].charAt(22) != strArr[2].charAt(22)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A07;
                strArr2[7] = "WE1TlvFnuMEFfhCqOSZQGPel0cAOxnij";
                strArr2[2] = "QIjSvgjDyRqWUwkha5pDZVewjWBdao8T";
                if (c2791om.equals(c2791om2) && AbstractC10974a.A1E(this.A03, c2787oi.A03) && AbstractC10974a.A1E(this.A02, c2787oi.A02) && AbstractC10974a.A1E(this.A05, c2787oi.A05)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A06.hashCode();
        int i10 = result * 31;
        int result2 = this.A03 != null ? this.A03.hashCode() : 0;
        int hashCode = (((i10 + result2) * 31) + this.A02.hashCode()) * 31;
        C2791om c2791om = this.A00;
        String[] strArr = A07;
        String str = strArr[4];
        String str2 = strArr[3];
        int charAt = str.charAt(31);
        int result3 = str2.charAt(31);
        if (charAt != result3) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "oKnJE1KY80M0C2djBAWfSHeSjkObNKTB";
        strArr2[2] = "bdrBBUaZbF1SVnsIGw0ZL6eMFfyDgZAn";
        int result4 = c2791om.hashCode();
        return ((hashCode + result4) * 31) + this.A05.hashCode();
    }
}
