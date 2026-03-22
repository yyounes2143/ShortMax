package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Gj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1403Gj {
    public static byte[] A09;
    public static String[] A0A = {"EsB1Svc2O0r", "neXgiGAVZF2hPSW", "e5UrGC6TzR", "xWVfqfZ1XD25z1nFBwMIBfHnywy3RQhb", "m9mgew9TdIxun9z0pjAF4NJPGlbJBstI", "nE", "RVA0jPrNpk", "4CgUEtTVWe3Kq65nNHH5xBV3YKPxdnIZ"};
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final String A07;
    public final List<byte[]> A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1403Gj A00(C4J c4j) throws C10532i {
        try {
            c4j.A0g(21);
            int A0I = c4j.A0I() & 3;
            int A0I2 = c4j.A0I();
            int i10 = 0;
            int A092 = c4j.A09();
            for (int i11 = 0; i11 < A0I2; i11++) {
                c4j.A0g(1);
                int A0M = c4j.A0M();
                for (int i12 = 0; i12 < A0M; i12++) {
                    int A0M2 = c4j.A0M();
                    i10 += A0M2 + 4;
                    c4j.A0g(A0M2);
                }
            }
            c4j.A0f(A092);
            byte[] bArr = new byte[i10];
            int i13 = 0;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            float f10 = 1.0f;
            String str = null;
            for (int i19 = 0; i19 < A0I2; i19++) {
                int A0I3 = c4j.A0I() & 63;
                int A0M3 = c4j.A0M();
                for (int i20 = 0; i20 < A0M3; i20++) {
                    int A0M4 = c4j.A0M();
                    System.arraycopy(AbstractC1410Gq.A03, 0, bArr, i13, AbstractC1410Gq.A03.length);
                    int length = i13 + AbstractC1410Gq.A03.length;
                    System.arraycopy(c4j.A0l(), c4j.A09(), bArr, length, A0M4);
                    if (A0I3 == 33 && i20 == 0) {
                        C1407Gn A05 = AbstractC1410Gq.A05(bArr, length, length + A0M4);
                        i14 = A05.A0A;
                        i15 = A05.A08;
                        i16 = A05.A02;
                        i17 = A05.A01;
                        i18 = A05.A03;
                        f10 = A05.A00;
                        str = C3U.A03(A05.A07, A05.A0B, A05.A06, A05.A05, A05.A0C, A05.A04);
                    }
                    i13 = length + A0M4;
                    c4j.A0g(A0M4);
                }
            }
            return new C1403Gj(i10 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), A0I + 1, i14, i15, f10, str, i16, i17, i18);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw C10532i.A01(A01(0, 25, 126), e10);
        }
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0A[5].length() == 29) {
                throw new RuntimeException();
            }
            A0A[5] = "YyBlh7kREcvGfk8zeLahZrRMr2fR36";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 68);
            i13++;
        }
    }

    public static void A02() {
        A09 = new byte[]{ByteCompanionObject.MAX_VALUE, 72, 72, 85, 72, 26, 74, 91, 72, 73, 83, 84, 93, 26, 114, ByteCompanionObject.MAX_VALUE, 108, 121, 26, 89, 85, 84, 92, 83, 93};
    }

    static {
        A02();
    }

    public C1403Gj(List<byte[]> initializationData, int i10, int i11, int i12, float f10, String str, int i13, int i14, int i15) {
        this.A08 = initializationData;
        this.A05 = i10;
        this.A06 = i11;
        this.A04 = i12;
        this.A00 = f10;
        this.A07 = str;
        this.A02 = i13;
        this.A01 = i14;
        this.A03 = i15;
    }
}
