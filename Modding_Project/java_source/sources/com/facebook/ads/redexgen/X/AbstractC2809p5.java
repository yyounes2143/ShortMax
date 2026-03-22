package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.p5  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2809p5 {
    public static byte[] A00;
    public static final C2808p4 A01;
    public static final InterfaceC12339t[] A02;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 12);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{79, 75, 80, 72, 77, 74, 10, 86, 65, 66, 72, 65, 71, 80, 10, 78, 82, 73, 10, 77, 74, 80, 65, 86, 74, 69, 72, 10, 118, 65, 66, 72, 65, 71, 80, 77, 75, 74, 98, 69, 71, 80, 75, 86, 93, 109, 73, 84, 72};
    }

    static {
        C2808p4 impl;
        try {
            A02();
            Class<?> implClass = Class.forName(A00(0, 49, 40));
            impl = (C2808p4) implClass.newInstance();
        } catch (ClassCastException unused) {
            impl = null;
        } catch (ClassNotFoundException unused2) {
            impl = null;
        } catch (IllegalAccessException unused3) {
            impl = null;
        } catch (InstantiationException unused4) {
            impl = null;
        }
        if (impl == null) {
            impl = new C2808p4();
        }
        A01 = impl;
        A02 = new InterfaceC12339t[0];
    }

    public static String A01(C1C c1c) {
        return A01.A03(c1c);
    }
}
