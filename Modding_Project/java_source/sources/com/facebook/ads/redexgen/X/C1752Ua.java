package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Ua  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1752Ua {
    public static byte[] A02;
    public final US A00;
    public final String A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 45);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-15, -13, -32, -14, -9, -18, -29};
    }

    public C1752Ua(String str, US us2) {
        this.A01 = str;
        this.A00 = us2;
    }

    public static void A02(UZ uz, Map<String, String> map, String str, US us2) {
        A03(uz.A03(), map, str, us2);
    }

    public static void A03(String str, Map<String, String> map, String str2, US us2) {
        if (!AbstractC1754Uc.A0B(str2, str)) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(A00(0, 7, 81), str);
        us2.AB1(str2, map);
    }

    public final void A04(UZ uz, Map<String, String> data) {
        A05(uz.A03(), data);
    }

    public final void A05(String str, Map<String, String> data) {
        A03(str, data, this.A01, this.A00);
    }
}
