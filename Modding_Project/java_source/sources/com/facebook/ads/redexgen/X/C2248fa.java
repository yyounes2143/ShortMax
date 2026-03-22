package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.fa  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2248fa implements NX {
    public static byte[] A03;
    public static String[] A04 = {"2TNZv5rtJTplZyjTIrSAFwUR6QP", "UjegX20Mk8HUIHIT", "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1", "WKFIsio5", "sT4eIPa9", "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO", "iH11Sl", "erLbaj7N4o7d5mJ3hEM6"};
    public RO A00;
    public C2111dL A01;
    public final NativeAdBase.MediaCacheFlag A02;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[6].length() == 1) {
                throw new RuntimeException();
            }
            A04[0] = "MdmGKNh4C3mG92xgGyorPLR3SXO";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 88);
            i13++;
        }
    }

    public static void A03() {
        A03 = new byte[]{-26, -39, -20, -31, -18, -35, -28, -35, -38, -35, -34, -26, -35};
    }

    static {
        A03();
    }

    public C2248fa(RO ro2, C2111dL c2111dL, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = ro2;
        this.A01 = c2111dL;
        this.A02 = mediaCacheFlag;
    }

    @Override // com.facebook.ads.redexgen.X.NX
    public final void ADB(V1 v12) {
        AbstractC1787Vk.A00(new C2251fd(this, v12));
    }

    @Override // com.facebook.ads.redexgen.X.NX
    public final void AEJ(List<C2415iN> list) {
        SF manager = new SF(this.A01);
        String firstRequestId = A02(6, 7, 23);
        for (C2415iN c2415iN : list) {
            if (A02(6, 7, 23).equals(firstRequestId)) {
                firstRequestId = c2415iN.A0G();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c2415iN.A0E().A0F() != null) {
                    manager.A0c(new SD(c2415iN.A0E().A0F().getUrl(), c2415iN.A0E().A0F().getHeight(), c2415iN.A0E().A0F().getWidth(), c2415iN.A0G(), A02(0, 6, 32)));
                }
                if (c2415iN.A0E().A0E() != null) {
                    manager.A0c(new SD(c2415iN.A0E().A0E().getUrl(), c2415iN.A0E().A0E().getHeight(), c2415iN.A0E().A0E().getWidth(), c2415iN.A0G(), A02(0, 6, 32)));
                }
                if (!TextUtils.isEmpty(c2415iN.A0E().A0b())) {
                    manager.A0b(new SB(c2415iN.A0E().A0b(), c2415iN.A0G(), A02(0, 6, 32), c2415iN.A0E().A0A()));
                }
            }
        }
        manager.A0X(new C2249fb(this, list), new S8(firstRequestId, A02(0, 6, 32)));
    }
}
