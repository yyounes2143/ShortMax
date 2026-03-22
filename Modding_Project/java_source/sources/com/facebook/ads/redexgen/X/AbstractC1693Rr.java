package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Rr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1693Rr {
    public static byte[] A00;
    public static String[] A01 = {"T8", "", "As3hIStO2xNa0GSSHrkEVjQu", "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC", "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN", "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb", "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC", "txdj"};
    public static final AtomicReference<C1691Rp> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[7].length() != 4) {
                throw new RuntimeException();
            }
            A01[6] = "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 86);
            i13++;
        }
    }

    public static void A05() {
        A00 = new byte[]{19, 27, 22, 17, 33, 40, 23, 36, 36, 27, 22, 23, 17, 15, 24, 15, 28, 19, 13, 43, 38, 40, 35, 33, 49, 56, 39, 52, 52, 43, 38, 39};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 12));
    }

    public static C1691Rp A00() {
        C1691Rp advertisingIdInfo = A02.get();
        if (advertisingIdInfo == null) {
            return C1691Rp.A00();
        }
        return advertisingIdInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C1691Rp A01(com.facebook.ads.redexgen.X.SQ r5, com.facebook.ads.redexgen.X.C1691Rp r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L29
        Lc:
            com.facebook.ads.redexgen.X.Rp r0 = com.facebook.ads.redexgen.X.AbstractC1698Rx.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.Su r5 = r5.A08()
            int r4 = com.facebook.ads.redexgen.X.AbstractC1722Sv.A1Q
            com.facebook.ads.redexgen.X.Sw r3 = new com.facebook.ads.redexgen.X.Sw
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 84
            java.lang.String r0 = A04(r2, r1, r0)
            r5.AAy(r0, r4, r3)
        L29:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1693Rr.A01(com.facebook.ads.redexgen.X.SQ, com.facebook.ads.redexgen.X.Rp):com.facebook.ads.redexgen.X.Rp");
    }

    public static C1691Rp A02(SQ sq2, C1691Rp c1691Rp, C1692Rq c1692Rq) {
        C1694Rs c1694Rs = null;
        try {
            if (U6.A06(sq2) && (c1691Rp == null || TextUtils.isEmpty(c1691Rp.A03()))) {
                c1694Rs = AbstractC1695Rt.A00(sq2.getContentResolver());
            }
        } catch (Throwable th2) {
            sq2.A08().AAy(A04(12, 7, 84), AbstractC1722Sv.A1S, new C1723Sw(th2));
        }
        if (c1694Rs != null && c1694Rs.A01 != null) {
            A03.set(c1694Rs.A01);
            c1692Rq.A05(c1694Rs.A01);
        }
        if (c1691Rp == null && c1694Rs != null && !TextUtils.isEmpty(c1694Rs.A00)) {
            return new C1691Rp(c1694Rs.A00, c1694Rs.A02, EnumC1690Ro.A04);
        }
        return c1691Rp;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 12);
        }
        return attributionId;
    }

    public static void A06(C1692Rq c1692Rq) {
        A02.set(c1692Rq.A02());
        A03.set(c1692Rq.A03());
    }

    public static void A07(SQ sq2) {
        long j10;
        C1691Rp advertisingIdInfo;
        try {
            C1692Rq c1692Rq = new C1692Rq(sq2);
            A06(c1692Rq);
            if (A08()) {
                return;
            }
            C1691Rp advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                j10 = advertisingIdInfo2.A01();
            } else {
                j10 = -1;
            }
            if (j10 > 0 && System.currentTimeMillis() - j10 < U6.A00(sq2)) {
                return;
            }
            if (U6.A07(sq2)) {
                advertisingIdInfo = A01(sq2, A02(sq2, null, c1692Rq));
            } else {
                advertisingIdInfo = A02(sq2, A01(sq2, null), c1692Rq);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c1692Rq.A04(advertisingIdInfo);
            }
        } catch (Throwable t10) {
            sq2.A08().AAy(A04(12, 7, 84), AbstractC1722Sv.A1R, new C1723Sw(t10));
        }
    }

    public static boolean A08() {
        boolean z10 = false;
        boolean updated = WS.A04();
        if (updated) {
            String A04 = A04(0, 12, 92);
            boolean updated2 = WS.A05(A04);
            if (updated2) {
                A03.set(WS.A01(A04));
                z10 = true;
            }
        }
        boolean A042 = WS.A04();
        if (A01[7].length() != 4) {
            throw new RuntimeException();
        }
        A01[6] = "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm";
        if (A042) {
            String A043 = A04(19, 13, 108);
            boolean updated3 = WS.A05(A043);
            if (updated3) {
                String A012 = WS.A01(A043);
                AtomicReference<C1691Rp> atomicReference = A02;
                if (A012 == null) {
                    if (A01[7].length() != 4) {
                        A01[7] = "Ywke";
                        A012 = A04(0, 0, 2);
                    } else {
                        A01[5] = "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB";
                        A012 = A04(0, 0, 12);
                    }
                }
                atomicReference.set(new C1691Rp(A012, false, EnumC1690Ro.A03));
                return true;
            }
            return z10;
        }
        return z10;
    }
}
