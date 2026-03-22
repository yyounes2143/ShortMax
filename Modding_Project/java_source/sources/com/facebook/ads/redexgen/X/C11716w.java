package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.6w  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11716w extends AbstractC2358hQ {
    public static byte[] A00;
    public static String[] A01 = {"5V5lzA70kRKZvNcqBnXwT00Z041t6ONl", "kRuh8LYE7MIIox", "vbi5lrus1TtIcXopJBSqGum5Kl452Sg0", "JcNQ6WafPgnmx1aBDePIhrwzaceROyrU", "60x4BO5hhvvMWgz", "65jgyaanPJJ2TdYJaJc79ygQBnrUrWFq", "zOX7nuTxFizV3LeqTcyyEc2wd", "PvIxiwPRiyIOar7lINjn4bFuW"};

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 124);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{42, 47, 107, 34, 56, 107, 37, 36, 63, 107, 57, 46, 42, 47, 50, 107, 36, 57, 107, 42, 39, 57, 46, 42, 47, 50, 107, 47, 34, 56, 59, 39, 42, 50, 46, 47, 20, 21, 28, 17, 9};
    }

    static {
        A03();
    }

    public C11716w(C2111dL c2111dL, NT nt2) {
        super(c2111dL, nt2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01(long j10) {
        HashMap hashMap = new HashMap();
        hashMap.put(A00(36, 5, 12), String.valueOf(System.currentTimeMillis() - j10));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(List<String> trackingUrls, Map<String, String> extraData) {
        if (trackingUrls != null) {
            boolean isEmpty = trackingUrls.isEmpty();
            if (A01[3].charAt(25) != 'c') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[6] = "86KHDrV9NKgfIZAVdUdv4tP2w";
            strArr[7] = "hnWt117Y9rLxZfnYOmFuZ36IL";
            if (isEmpty) {
                return;
            }
            for (String str : trackingUrls) {
                new AsyncTaskC2210ex(this.A0B, extraData).execute(str);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0P() {
        C2415iN c2415iN = (C2415iN) this.A01;
        if (c2415iN.A0R()) {
            MQ mq2 = this.A07;
            if (A01[3].charAt(25) != 'c') {
                throw new RuntimeException();
            }
            A01[4] = "SmlVqZ";
            if (mq2 != null) {
                this.A07.A0B(c2415iN);
                return;
            }
            return;
        }
        throw new IllegalStateException(A00(0, 36, 55));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2358hQ
    public final void A0R(MP mp2, TE te2, TC tc2, NU nu2) {
        C2415iN c2415iN = (C2415iN) mp2;
        long currentTimeMillis = System.currentTimeMillis();
        C2355hN c2355hN = new C2355hN(this, nu2, c2415iN, currentTimeMillis, tc2);
        A0H().postDelayed(c2355hN, te2.A05().A05());
        c2415iN.A0L(this.A0B, new C2354hM(this, c2355hN, currentTimeMillis, tc2), this.A09, nu2, C1652Qc.A0K());
    }
}
