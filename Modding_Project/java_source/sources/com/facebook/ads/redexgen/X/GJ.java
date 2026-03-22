package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class GJ {
    public static byte[] A06;
    public static String[] A07 = {"f", "7N0kip4m3flPJ4wRylUb66l3ycty4bLO", "ZrqOCWQk631j6sxAoqisBRdwge9gr5QF", "2DRaKiCosA9Zs551XHqRbpaUmywwD6L7", "dzNr4lbarI8PqRX9M2ICRMrM1SnLdD", "nBYqh81NM1tC", "zWHuac", "46iX5XNzwkY5yhjGLtKEm3XHMbBVctSm"};
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final String A04;
    public final List<byte[]> A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static GJ A00(C4J c4j) throws C10532i {
        try {
            c4j.A0g(4);
            int A0I = (c4j.A0I() & 3) + 1;
            if (A0I != 3) {
                ArrayList arrayList = new ArrayList();
                int A0I2 = c4j.A0I() & 31;
                for (int i10 = 0; i10 < A0I2; i10++) {
                    arrayList.add(A03(c4j));
                }
                int A0I3 = c4j.A0I();
                String[] strArr = A07;
                if (strArr[4].length() != strArr[5].length()) {
                    A07[1] = "rQ6g8gs4UtzNEdd6WIb5nHQ3c92ce055";
                    for (int i11 = 0; i11 < A0I3; i11++) {
                        arrayList.add(A03(c4j));
                    }
                    int i12 = -1;
                    int i13 = -1;
                    float f10 = 1.0f;
                    String str = null;
                    if (A0I2 > 0) {
                        C1409Gp A09 = AbstractC1410Gq.A09((byte[]) arrayList.get(0), A0I, ((byte[]) arrayList.get(0)).length);
                        i12 = A09.A0A;
                        i13 = A09.A03;
                        f10 = A09.A00;
                        str = C3U.A01(A09.A08, A09.A01, A09.A04);
                    }
                    return new GJ(arrayList, A0I, i12, i13, f10, str);
                }
                throw new RuntimeException();
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw C10532i.A01(A01(0, 24, 51), e10);
        }
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 30);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-106, -61, -61, -64, -61, 113, -63, -78, -61, -60, -70, -65, -72, 113, -110, -89, -108, 113, -76, -64, -65, -73, -70, -72};
    }

    static {
        A02();
    }

    public GJ(List<byte[]> initializationData, int i10, int i11, int i12, float f10, String str) {
        this.A05 = initializationData;
        this.A02 = i10;
        this.A03 = i11;
        this.A01 = i12;
        this.A00 = f10;
        this.A04 = str;
    }

    public static byte[] A03(C4J c4j) {
        int A0M = c4j.A0M();
        int offset = c4j.A09();
        c4j.A0g(A0M);
        return C3U.A07(c4j.A0l(), offset, A0M);
    }
}
