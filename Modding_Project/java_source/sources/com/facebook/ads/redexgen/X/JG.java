package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class JG {
    public static byte[] A00;
    public static String[] A01 = {"igoOoy3NY4UMRHdpx9h3UlwGdvMc0fc9", "i1My3cIv2txc6hnpPF2N9ufK5yKqcDwp", "ZPKM82HH2UhiHuE6c", "N8bcPF6", "fP1uMJr9juYIT", "Q74KZy4WGIwm3", "kYmec6ZLKDIoPLbK3wnMb68OSlbBsX7E", "P2I33wOyCa7MBOFZieFJQqH5gMHCVrks"};

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 63);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-17, 17, 13, 1, 32, 21, 24, -41, -17, -19, -12, -12, -19, -14, -21, -92, -10, -23, -15, -27, -19, -14, -24, -23, -10, -92, -13, -22, -92, -15, -27, -16, -22, -13, -10, -15, -23, -24, -92, -41, -55, -51, -92, -46, -59, -48, -92, -7, -14, -19, -8, -78};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A04(long j10, C4J c4j, H1[] h1Arr) {
        int A0I = c4j.A0I();
        if ((A0I & 64) != 0) {
            c4j.A0g(1);
            int i10 = (A0I & 31) * 3;
            int A09 = c4j.A09();
            for (H1 h12 : h1Arr) {
                c4j.A0f(A09);
                h12.AI7(c4j, i10);
                h12.AIA(j10, 1, i10, 0, null);
            }
        }
    }

    static {
        A02();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A00(com.facebook.ads.redexgen.X.C4J r6) {
        /*
            r5 = 0
        L1:
            int r0 = r6.A07()
            if (r0 != 0) goto L9
            r0 = -1
            return r0
        L9:
            int r4 = r6.A0I()
            int r5 = r5 + r4
            r3 = 255(0xff, float:3.57E-43)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.JG.A01
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 4
            if (r1 == r0) goto L26
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.JG.A01
            java.lang.String r1 = "hfDUXVNQknc2urmlb"
            r0 = 2
            r2[r0] = r1
            if (r4 == r3) goto L1
            return r5
        L26:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.JG.A00(com.facebook.ads.redexgen.X.4J):int");
    }

    public static void A03(long j10, C4J c4j, H1[] h1Arr) {
        while (true) {
            if (c4j.A07() > 1) {
                int A002 = A00(c4j);
                int A003 = A00(c4j);
                int A09 = c4j.A09() + A003;
                if (A003 != -1) {
                    int payloadType = c4j.A07();
                    if (A003 <= payloadType) {
                        if (A002 == 4 && A003 >= 8) {
                            int userIdentifier = c4j.A0I();
                            int providerCode = c4j.A0M();
                            int countryCode = 0;
                            if (providerCode == 49) {
                                countryCode = c4j.A0C();
                            }
                            int A0I = c4j.A0I();
                            if (providerCode == 47) {
                                c4j.A0g(1);
                            }
                            int i10 = (userIdentifier == 181 && (providerCode == 49 || providerCode == 47) && A0I == 3) ? 1 : 0;
                            if (providerCode == 49) {
                                int userDataTypeCode = countryCode != 1195456820 ? 0 : 1;
                                i10 &= userDataTypeCode;
                            }
                            if (i10 != 0) {
                                A04(j10, c4j, h1Arr);
                            }
                        }
                        c4j.A0f(A09);
                    }
                }
                AnonymousClass44.A07(A01(0, 7, 109), A01(7, 45, 69));
                A09 = c4j.A0A();
                c4j.A0f(A09);
            } else {
                return;
            }
        }
    }
}
