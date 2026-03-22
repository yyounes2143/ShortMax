package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.36  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass36 {
    public static byte[] A04;
    public static final AnonymousClass36 A05;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-23, -35, 32, 37, 30, 43, 43, 34, 41, 0, 44, 50, 43, 49, -6, 14, 2, 71, 80, 69, 81, 70, 75, 80, 73, 31, -33, 19, 2, 7, 13, -28, 13, 16, 11, -1, 18, -7, 17, -1, 11, 14, 10, 3, -16, -1, 18, 3, -37};
    }

    static {
        A01();
        A05 = new AnonymousClass36(-1, -1, -1);
    }

    public AnonymousClass36(int i10, int i11, int i12) {
        int i13;
        this.A03 = i10;
        this.A01 = i11;
        this.A02 = i12;
        if (AbstractC10974a.A15(i12)) {
            i13 = AbstractC10974a.A06(i12, i11);
        } else {
            i13 = -1;
        }
        this.A00 = i13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AnonymousClass36) {
            AnonymousClass36 anonymousClass36 = (AnonymousClass36) obj;
            return this.A03 == anonymousClass36.A03 && this.A01 == anonymousClass36.A01 && this.A02 == anonymousClass36.A02;
        }
        return false;
    }

    public final int hashCode() {
        return BX.A00(Integer.valueOf(this.A03), Integer.valueOf(this.A01), Integer.valueOf(this.A02));
    }

    public final String toString() {
        return A00(26, 23, 59) + this.A03 + A00(0, 15, 90) + this.A01 + A00(15, 11, 127) + this.A02 + ']';
    }
}
