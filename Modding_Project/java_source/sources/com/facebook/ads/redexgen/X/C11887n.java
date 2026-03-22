package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.7n  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11887n implements InterfaceC2558kk {
    public static byte[] A06;
    public static String[] A07 = {"QubeI9WU03qBZcNvE4IUkWvlw0NRrBK6", "F1d068LLA73yClDAGmhas6o", "9YpbVeLOd0f6m", "7Ycu3nAZXESMUbUrutcG9271koISuOhT", "QjcyZL4t35rbWMpE5hp6oYgD7sVhkS0D", "M48I8dHdEQTg0rHaHaNT6qI1", "cVfJzOsNywAlxLknvQSr1dDTMZn5TIAU", "kJeh17rnzHgOQ2HfO7oDpw4wPPnH7lFe"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long[] A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C11887n A01(long j10, long j11, C1405Gl c1405Gl, C4J c4j) {
        int A0L;
        int i10 = c1405Gl.A04;
        int i11 = c1405Gl.A03;
        int A0C = c4j.A0C();
        if ((A0C & 1) != 1 || (A0L = c4j.A0L()) == 0) {
            return null;
        }
        long A0U = AbstractC10974a.A0U(A0L, i10 * 1000000, i11);
        if ((A0C & 6) != 6) {
            return new C11887n(j11, c1405Gl.A02, A0U);
        }
        long A0Q = c4j.A0Q();
        long[] jArr = new long[100];
        for (int i12 = 0; i12 < 100; i12++) {
            jArr[i12] = c4j.A0I();
        }
        if (j10 != -1 && j10 != j11 + A0Q) {
            AnonymousClass44.A07(A02(27, 10, 78), A02(2, 25, 105) + j10 + A02(0, 2, 40) + (j11 + A0Q));
        }
        return new C11887n(j11, c1405Gl.A02, A0U, A0Q, jArr);
    }

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A07;
            if (strArr[1].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A07[2] = "La6";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 30);
            i13++;
        }
    }

    public static void A03() {
        A06 = new byte[]{114, 102, -33, -48, -43, -50, -89, -21, -24, -5, -24, -89, -6, -16, 1, -20, -89, -12, -16, -6, -12, -24, -5, -22, -17, -63, -89, -60, -43, -38, -45, -65, -47, -47, -41, -47, -34};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final C1415Gv A8t(long j10) {
        long[] jArr;
        double d10;
        if (AAa()) {
            long A0T = AbstractC10974a.A0T(j10, 0L, this.A04);
            double d11 = (A0T * 100.0d) / this.A04;
            if (d11 <= 0.0d) {
                d10 = 0.0d;
            } else if (d11 >= 100.0d) {
                d10 = 256.0d;
            } else {
                int i10 = (int) d11;
                double d12 = ((long[]) C3M.A02(this.A05))[i10];
                d10 = (((i10 == 99 ? 256.0d : jArr[i10 + 1]) - d12) * (d11 - i10)) + d12;
            }
            return new C1415Gv(new C1417Gx(A0T, this.A03 + AbstractC10974a.A0T(Math.round((d10 / 256.0d) * this.A02), this.A00, this.A02 - 1)));
        }
        return new C1415Gv(new C1417Gx(0L, this.A03 + this.A00));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2558kk
    public final long A99(long j10) {
        long j11 = j10 - this.A03;
        if (!AAa() || j11 <= this.A00) {
            return 0L;
        }
        long[] jArr = (long[]) C3M.A02(this.A05);
        double d10 = (j11 * 256.0d) / this.A02;
        int A0L = AbstractC10974a.A0L(jArr, (long) d10, true, true);
        long A00 = A00(A0L);
        long j12 = jArr[A0L];
        long A002 = A00(A0L + 1);
        long j13 = A0L == 99 ? 256L : jArr[A0L + 1];
        int i10 = (j12 > j13 ? 1 : (j12 == j13 ? 0 : -1));
        String[] strArr = A07;
        if (strArr[0].charAt(4) != strArr[4].charAt(4)) {
            A07[6] = "PlWtaQzxKmV3LAe12cSeUsJTirSwbfkK";
            return Math.round((A002 - A00) * (i10 == 0 ? 0.0d : (d10 - j12) / (j13 - j12))) + A00;
        }
        throw new RuntimeException();
    }

    static {
        A03();
    }

    public C11887n(long j10, int i10, long j11) {
        this(j10, i10, j11, -1L, null);
    }

    public C11887n(long j10, int i10, long j11, long j12, long[] jArr) {
        this.A03 = j10;
        this.A00 = i10;
        this.A04 = j11;
        this.A05 = jArr;
        this.A02 = j12;
        this.A01 = j12 != -1 ? j10 + j12 : -1L;
    }

    private long A00(int i10) {
        return (this.A04 * i10) / 100;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2558kk
    public final long A7b() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final long A7l() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1416Gw
    public final boolean AAa() {
        return this.A05 != null;
    }
}
