package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public final class YN implements InterfaceC2188eb {
    public static byte[] A01;
    public final C2085cu A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 74);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{82, 39, 76, 72, 39, 90, 101, 101, 102, 39, 88, 101, ByteCompanionObject.MAX_VALUE, 126, 99, 100, 109, 39, 94, 101, 97, 111, 100, 12, 10, 28, 11, 84, 24, 30, 28, 23, 13};
    }

    public YN(C2085cu c2085cu) {
        this.A00 = c2085cu;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2188eb
    public final Map<String, String> A6Y(boolean z10) {
        HashMap hashMap = new HashMap();
        if (!AbstractC1693Rr.A00().A04()) {
            hashMap.put(A00(0, 23, 64), TY.A00().A01(this.A00, true).A04());
        }
        hashMap.put(A00(23, 10, 51), AbstractC1728Tb.A06(new T6(this.A00), this.A00, z10));
        return hashMap;
    }
}
