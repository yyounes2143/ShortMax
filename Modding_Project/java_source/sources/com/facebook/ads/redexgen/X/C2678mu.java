package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.mu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2678mu implements C8J {
    public static byte[] A01;
    public static String[] A02 = {"", "W3zKx7uimPBnuqB79eRuk71Lq6Q9Tdtq", "pdw5IcOEDsyx", "PznYxCtiabQ1XXQUVp9BfEAYIGk6ZsUE", "E1k4hPJKfb0MvebzJOZYusmHHBWvORO7", "bmueFxdYYt0nqn8p", "GRfRtgnBgmJZB0Qq", "VS7ML1wDeymmTLeKFRcttz7uEm3bVRGQ"};
    public final /* synthetic */ C0Q A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A02;
            if (strArr[5].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A02[4] = "fuFs1gweK6T0kCx4bj1F2DHsk5QuVwMS";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 8);
            i13++;
        }
    }

    public static void A01() {
        A01 = new byte[]{47, 27, 10, 7, 1, 78, 29, 7, 0, 5, 78, 11, 28, 28, 1, 28, 32, 8, 9, 4, 12, 46, 2, 9, 8, 14, 44, 24, 9, 4, 2, 63, 8, 3, 9, 8, 31, 8, 31, 55, 54, 11, 52, 61, 61, 40, 24, 25, 32, 22, 28, 18, 2, 7};
    }

    static {
        A01();
    }

    public C2678mu(C0Q c0q) {
        this.A00 = c0q;
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void ACV(Exception exc) {
        AnonymousClass44.A08(A00(16, 23, 101), A00(0, 16, 102), exc);
        C0Q.A06(this.A00).A0D(exc);
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void ACW(C8F c8f) {
        C0Q.A06(this.A00).A0B(c8f);
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void ACX(C8F c8f) {
        C0Q.A06(this.A00).A0C(c8f);
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AEN() {
        C0Q.A05(this.A00);
        if (0 != 0) {
            C0Q.A05(this.A00);
            throw new NullPointerException(A00(46, 8, 127));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AEO() {
        C0Q.A05(this.A00);
        if (0 != 0) {
            C0Q.A05(this.A00);
            throw new NullPointerException(A00(39, 7, 80));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AEg(long j10) {
        C0Q.A06(this.A00).A03(j10);
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AEh() {
        this.A00.A26();
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AFF(boolean z10) {
        C0Q.A06(this.A00).A0I(z10);
    }

    @Override // com.facebook.ads.redexgen.X.C8J
    public final void AFZ(int i10, long j10, long j11) {
        C0Q.A06(this.A00).A01(i10, j10, j11);
    }
}
