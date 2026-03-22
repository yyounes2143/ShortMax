package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.ColorInfo;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Gq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1410Gq {
    public static byte[] A00;
    public static int[] A01;
    public static String[] A02 = {"unNLyNh5FR3GyMG68d", "fnHIAbwwkFQ1ZGNlnsc", "DMpYp1jOlcNpO4pJgPWh22Zerf91QM8t", "RZoQ8h3", "L8G6Aqwau6BJqNFKfla", "ElXYWWCxJdBggdMs0Hio0yCYqdZAyfAp", "A3sl", "vST53OIiICW6hrmD3wtDRemD3zmWyZSx"};
    public static final byte[] A03;
    public static final float[] A04;
    public static final Object A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1407Gn A06(byte[] bArr, int i10, int i11) {
        C1412Gs c1412Gs = new C1412Gs(bArr, i10, i11);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        c1412Gs.A07(4);
        int A052 = c1412Gs.A05(3);
        c1412Gs.A06();
        int A053 = c1412Gs.A05(2);
        boolean A0A = c1412Gs.A0A();
        int A054 = c1412Gs.A05(5);
        int i15 = 0;
        int i16 = 0;
        while (true) {
            if (A02[0].length() == 10) {
                break;
            }
            String[] strArr = A02;
            strArr[2] = "xkwe1O9uU2dqAY7xWUY4fbTlKQKyvcwL";
            strArr[7] = "HeYhRuPqM40BhEn67WYdTTzYcbU6v3bu";
            if (i16 < 32) {
                if (c1412Gs.A0A()) {
                    i15 |= 1 << i16;
                }
                i16++;
            } else {
                int[] iArr = new int[6];
                for (int i17 = 0; i17 < iArr.length; i17++) {
                    iArr[i17] = c1412Gs.A05(8);
                }
                int A055 = c1412Gs.A05(8);
                int i18 = 0;
                for (int i19 = 0; i19 < A052; i19++) {
                    if (c1412Gs.A0A()) {
                        i18 += 89;
                    }
                    if (c1412Gs.A0A()) {
                        i18 += 8;
                    }
                }
                c1412Gs.A07(i18);
                if (A052 > 0) {
                    c1412Gs.A07((8 - A052) * 2);
                }
                int A042 = c1412Gs.A04();
                int A043 = c1412Gs.A04();
                if (A043 == 3) {
                    c1412Gs.A06();
                }
                int A044 = c1412Gs.A04();
                int A045 = c1412Gs.A04();
                if (c1412Gs.A0A()) {
                    int A046 = c1412Gs.A04();
                    int A047 = c1412Gs.A04();
                    int A048 = c1412Gs.A04();
                    int A049 = c1412Gs.A04();
                    A044 -= (A046 + A047) * ((A043 == 1 || A043 == 2) ? 2 : 1);
                    int i20 = (A048 + A049) * (A043 == 1 ? 2 : 1);
                    String[] strArr2 = A02;
                    if (strArr2[4].length() != strArr2[1].length()) {
                        A02[6] = "Hn3sdMz19WVmWCBK";
                        A045 -= i20;
                    } else {
                        A02[3] = "Jz4JSkPN0248kFDgiRzzjLGO7q";
                        A045 -= i20;
                    }
                }
                c1412Gs.A04();
                c1412Gs.A04();
                int A0410 = c1412Gs.A04();
                for (int i21 = c1412Gs.A0A() ? 0 : A052; i21 <= A052; i21++) {
                    c1412Gs.A04();
                    c1412Gs.A04();
                    c1412Gs.A04();
                }
                c1412Gs.A04();
                c1412Gs.A04();
                c1412Gs.A04();
                c1412Gs.A04();
                c1412Gs.A04();
                c1412Gs.A04();
                if (c1412Gs.A0A() && c1412Gs.A0A()) {
                    A0D(c1412Gs);
                }
                c1412Gs.A07(2);
                if (c1412Gs.A0A()) {
                    c1412Gs.A07(8);
                    c1412Gs.A04();
                    c1412Gs.A04();
                    c1412Gs.A06();
                }
                A0E(c1412Gs);
                if (c1412Gs.A0A()) {
                    for (int i22 = 0; i22 < c1412Gs.A04(); i22++) {
                        c1412Gs.A07(A0410 + 4 + 1);
                    }
                }
                c1412Gs.A07(2);
                float f10 = 1.0f;
                boolean A0A2 = c1412Gs.A0A();
                if (A02[0].length() != 10) {
                    String[] strArr3 = A02;
                    strArr3[2] = "CMlgeA8zQVByZrA2VMXzsS0jeMyo18qQ";
                    strArr3[7] = "QAK33uwHUZwexufQvU3o8DPmyRQmvUMz";
                    if (A0A2) {
                        if (c1412Gs.A0A()) {
                            int A056 = c1412Gs.A05(8);
                            if (A056 == 255) {
                                int A057 = c1412Gs.A05(16);
                                int A058 = c1412Gs.A05(16);
                                if (A057 != 0 && A058 != 0) {
                                    f10 = A057 / A058;
                                }
                            } else if (A056 < A04.length) {
                                f10 = A04[A056];
                            } else {
                                AnonymousClass44.A07(A0B(0, 11, 63), A0B(11, 35, 126) + A056);
                            }
                        }
                        if (c1412Gs.A0A()) {
                            c1412Gs.A06();
                        }
                        if (c1412Gs.A0A()) {
                            c1412Gs.A07(3);
                            boolean A0A3 = c1412Gs.A0A();
                            if (c1412Gs.A0A()) {
                                int A059 = c1412Gs.A05(8);
                                int A0510 = c1412Gs.A05(8);
                                c1412Gs.A07(8);
                                i12 = ColorInfo.A00(A059);
                                i13 = A0A3 ? 1 : 2;
                                if (A02[6].length() != 3) {
                                    A02[0] = "HGrGkdvIc2AkT14Ejxxa4aXBUNVha";
                                    i14 = ColorInfo.A01(A0510);
                                } else {
                                    i14 = ColorInfo.A01(A0510);
                                }
                            }
                        }
                        if (c1412Gs.A0A()) {
                            c1412Gs.A04();
                            c1412Gs.A04();
                        }
                        c1412Gs.A06();
                        if (c1412Gs.A0A()) {
                            A045 *= 2;
                        }
                    }
                    return new C1407Gn(A053, A0A, A054, i15, iArr, A055, A042, A044, A045, f10, i12, i13, i14);
                }
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1409Gp A0A(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        C1412Gs c1412Gs = new C1412Gs(bArr, i10, i11);
        int A052 = c1412Gs.A05(8);
        int A053 = c1412Gs.A05(8);
        int A054 = c1412Gs.A05(8);
        int A042 = c1412Gs.A04();
        int i14 = 1;
        if (A052 == 100 || A052 == 110 || A052 == 122 || A052 == 244 || A052 == 44 || A052 == 83 || A052 == 86 || A052 == 118 || A052 == 128 || A052 == 138) {
            i14 = c1412Gs.A04();
            r20 = i14 == 3 ? c1412Gs.A0A() : false;
            c1412Gs.A04();
            c1412Gs.A04();
            c1412Gs.A06();
            boolean A0A = c1412Gs.A0A();
            if (A02[0].length() != 10) {
                A02[0] = "qzm7RlaVhvQtMB0zhtauZ";
                if (A0A) {
                    int i15 = i14 != 3 ? 8 : 12;
                    int i16 = 0;
                    while (i16 < i15) {
                        if (c1412Gs.A0A()) {
                            A0F(c1412Gs, i16 < 6 ? 16 : 64);
                        }
                        i16++;
                    }
                }
            }
            throw new RuntimeException();
        }
        int A043 = c1412Gs.A04() + 4;
        int A044 = c1412Gs.A04();
        int i17 = 0;
        boolean z10 = false;
        if (A044 == 0) {
            i17 = c1412Gs.A04() + 4;
            if (A02[5].charAt(3) != 'Y') {
                A02[3] = "2NWfLRVEjhOO9";
            } else {
                A02[5] = "fn7YpbzvxXlInri96XbQTTrdseuocXrx";
            }
        } else if (A044 == 1) {
            z10 = c1412Gs.A0A();
            c1412Gs.A03();
            c1412Gs.A03();
            long A045 = c1412Gs.A04();
            String[] strArr = A02;
            if (strArr[4].length() == strArr[1].length()) {
                String[] strArr2 = A02;
                strArr2[2] = "sL3yo27N596gnAOXUx3X3jVDrWZXEmHs";
                strArr2[7] = "EWRRgQnwInix360952oSCS5kmFFjSZxj";
                for (int i18 = 0; i18 < A045; i18++) {
                    c1412Gs.A04();
                }
            }
            throw new RuntimeException();
        } else {
            String[] strArr3 = A02;
            if (strArr3[4].length() != strArr3[1].length()) {
                throw new RuntimeException();
            }
            A02[3] = "4FZcyZVF6YdFmLSwekyzJ";
        }
        int A046 = c1412Gs.A04();
        c1412Gs.A06();
        int A047 = c1412Gs.A04() + 1;
        int A048 = c1412Gs.A04() + 1;
        boolean A0A2 = c1412Gs.A0A();
        int i19 = (2 - (A0A2 ? 1 : 0)) * A048;
        if (!A0A2) {
            c1412Gs.A06();
        }
        c1412Gs.A06();
        int i20 = A047 * 16;
        int i21 = i19 * 16;
        if (c1412Gs.A0A()) {
            int A049 = c1412Gs.A04();
            int A0410 = c1412Gs.A04();
            int A0411 = c1412Gs.A04();
            int A0412 = c1412Gs.A04();
            if (i14 == 0) {
                i12 = 1;
                i13 = 2 - (A0A2 ? 1 : 0);
            } else {
                i12 = i14 == 3 ? 1 : 2;
                i13 = (2 - (A0A2 ? 1 : 0)) * (i14 == 1 ? 2 : 1);
            }
            i20 -= (A049 + A0410) * i12;
            i21 -= (A0411 + A0412) * i13;
        }
        float f10 = 1.0f;
        if (c1412Gs.A0A() && c1412Gs.A0A()) {
            int A055 = c1412Gs.A05(8);
            if (A055 == 255) {
                int A056 = c1412Gs.A05(16);
                int A057 = c1412Gs.A05(16);
                if (A056 != 0 && A057 != 0) {
                    f10 = A056 / A057;
                }
            } else if (A055 < A04.length) {
                f10 = A04[A055];
            } else {
                AnonymousClass44.A07(A0B(0, 11, 63), A0B(11, 35, 126) + A055);
            }
        }
        return new C1409Gp(A052, A053, A054, A042, A046, i20, i21, f10, r20, A0A2, A043, A044, i17, z10);
    }

    public static String A0B(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 108);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A00 = new byte[]{-7, 12, 23, 0, 25, 20, 31, 0, 31, 20, 23, 63, 88, 79, 98, 90, 79, 77, 94, 79, 78, 10, 75, 93, 90, 79, 77, 94, 73, 92, 75, 94, 83, 89, 73, 83, 78, 77, 10, 96, 75, 86, 95, 79, 36, 10, 66, 53, 48, 49, 59, -5, 45, 66, 47, 23, 10, 5, 6, 16, -48, 9, 6, 23, 4};
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x010e, code lost:
        if (r13 != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0110, code lost:
        r7[r5] = r17;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0133, code lost:
        if (r13 != false) goto L79;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0E(com.facebook.ads.redexgen.X.C1412Gs r18) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1410Gq.A0E(com.facebook.ads.redexgen.X.Gs):void");
    }

    static {
        A0C();
        A03 = new byte[]{0, 0, 0, 1};
        A04 = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
        A05 = new Object();
        A01 = new int[10];
    }

    public static int A00(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int A01(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static int A02(byte[] bArr, int i10) {
        int i11;
        synchronized (A05) {
            int scratchEscapeCount = 0;
            int i12 = 0;
            while (scratchEscapeCount < i10) {
                scratchEscapeCount = A03(bArr, scratchEscapeCount, i10);
                if (scratchEscapeCount < i10) {
                    if (A01.length <= i12) {
                        A01 = Arrays.copyOf(A01, A01.length * 2);
                    }
                    A01[i12] = scratchEscapeCount;
                    scratchEscapeCount += 3;
                    i12++;
                }
            }
            i11 = i10 - i12;
            int unescapedPosition = 0;
            int escapedPosition = 0;
            for (int unescapedLength = 0; unescapedLength < i12; unescapedLength++) {
                int scratchEscapeCount2 = A01[unescapedLength];
                int scratchEscapeCount3 = scratchEscapeCount2 - unescapedPosition;
                System.arraycopy(bArr, unescapedPosition, bArr, escapedPosition, scratchEscapeCount3);
                int escapedPosition2 = escapedPosition + scratchEscapeCount3;
                int position = escapedPosition2 + 1;
                bArr[escapedPosition2] = 0;
                escapedPosition = position + 1;
                bArr[position] = 0;
                unescapedPosition += scratchEscapeCount3 + 3;
            }
            System.arraycopy(bArr, unescapedPosition, bArr, escapedPosition, i11 - escapedPosition);
        }
        return i11;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0002 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A03(byte[] r2, int r3, int r4) {
        /*
        L0:
            int r0 = r4 + (-2)
            if (r3 >= r0) goto L19
            r0 = r2[r3]
            if (r0 != 0) goto L16
            int r0 = r3 + 1
            r0 = r2[r0]
            if (r0 != 0) goto L16
            int r0 = r3 + 2
            r1 = r2[r0]
            r0 = 3
            if (r1 != r0) goto L16
            return r3
        L16:
            int r3 = r3 + 1
            goto L0
        L19:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1410Gq.A03(byte[], int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0136, code lost:
        if (r0 == 1) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0138, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0144, code lost:
        if (r0 == 1) goto L102;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A04(byte[] r8, int r9, int r10, boolean[] r11) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1410Gq.A04(byte[], int, int, boolean[]):int");
    }

    public static C1407Gn A05(byte[] bArr, int i10, int i11) {
        return A06(bArr, i10 + 2, i11);
    }

    public static C1408Go A07(byte[] bArr, int i10, int i11) {
        return A08(bArr, i10 + 1, i11);
    }

    public static C1408Go A08(byte[] bArr, int i10, int i11) {
        C1412Gs data = new C1412Gs(bArr, i10, i11);
        int A042 = data.A04();
        int seqParameterSetId = data.A04();
        data.A06();
        return new C1408Go(A042, seqParameterSetId, data.A0A());
    }

    public static C1409Gp A09(byte[] bArr, int i10, int i11) {
        return A0A(bArr, i10 + 1, i11);
    }

    public static void A0D(C1412Gs c1412Gs) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int matrixId = 1;
                if (!c1412Gs.A0A()) {
                    c1412Gs.A04();
                } else {
                    int sizeId = i10 << 1;
                    int min = Math.min(64, 1 << (sizeId + 4));
                    if (i10 > 1) {
                        c1412Gs.A03();
                    }
                    for (int sizeId2 = 0; sizeId2 < min; sizeId2++) {
                        c1412Gs.A03();
                    }
                }
                if (i10 == 3) {
                    matrixId = 3;
                }
                i11 += matrixId;
            }
        }
    }

    public static void A0F(C1412Gs c1412Gs, int i10) {
        int i11 = 8;
        int lastScale = 8;
        for (int nextScale = 0; nextScale < i10; nextScale++) {
            if (lastScale != 0) {
                int lastScale2 = c1412Gs.A03();
                lastScale = ((lastScale2 + i11) + 256) % 256;
            }
            if (lastScale != 0) {
                i11 = lastScale;
            }
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0G(java.nio.ByteBuffer r6) {
        /*
            int r5 = r6.position()
            r4 = 0
            r3 = 0
        L6:
            int r0 = r3 + 1
            if (r0 >= r5) goto L3f
            byte r0 = r6.get(r3)
            r2 = r0 & 255(0xff, float:3.57E-43)
            r0 = 3
            if (r4 != r0) goto L35
            r0 = 1
            if (r2 != r0) goto L39
            int r0 = r3 + 1
            byte r0 = r6.get(r0)
            r1 = r0 & 31
            r0 = 7
            if (r1 != r0) goto L39
            java.nio.ByteBuffer r1 = r6.duplicate()
            int r0 = r3 + (-3)
            r1.position(r0)
            r1.limit(r5)
            r0 = 0
            r6.position(r0)
            r6.put(r1)
            return
        L35:
            if (r2 != 0) goto L39
            int r4 = r4 + 1
        L39:
            if (r2 == 0) goto L3c
            r4 = 0
        L3c:
            int r3 = r3 + 1
            goto L6
        L3f:
            r6.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1410Gq.A0G(java.nio.ByteBuffer):void");
    }

    public static void A0H(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean A0I(String str, byte b10) {
        if (A0B(46, 9, 96).equals(str) && (b10 & 31) == 6) {
            return true;
        }
        return A0B(55, 10, 53).equals(str) && ((b10 & 126) >> 1) == 39;
    }
}
