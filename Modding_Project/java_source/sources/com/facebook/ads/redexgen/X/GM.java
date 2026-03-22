package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class GM extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public static String[] A03 = {"MrnT4Eks85vPuqQr37JMtu4NfaYgfi6f", "zfkVjNlCcNBydFIcz2mD", "Bee43nRREoDmuohWbk", "LYOPzNoZy5N5VpEZxT", "78Vp0AX9Eb5UezJBTqKvLg5S66jER", "qnB2IM", "Ag3pKfa1yi0C6RoVnqVP", "pygY9b2"};
    public final /* synthetic */ C4K A00;
    public final /* synthetic */ C3Q A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = copyOfRange[i13];
            if (A03[4].length() != 29) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[2] = "zTo8qTO106BkbxhANT";
            strArr[3] = "z1bPe1QyN1GViRGZCE";
            copyOfRange[i13] = (byte) ((b10 - i12) - 15);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{125, -80, -95, -95, -96, -83, -92, -87, -94, 91, -92, -87, -97, -96, -95, -92, -87, -92, -81, -96, -89, -76};
    }

    static {
        A01();
    }

    public GM(C4K c4k, C3Q c3q) {
        this.A00 = c4k;
        this.A01 = c3q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        E1 e12;
        E1 e13;
        InterfaceC2058cT interfaceC2058cT;
        e12 = this.A00.A0X;
        if (e12.getState() == EnumC2181eU.A02) {
            e13 = this.A00.A0X;
            String[] strArr = A03;
            if (strArr[7].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A03[1] = "EIUkH3ntVfUyNEjhHXbRpTHh";
            if (e13.getCurrentPositionInMillis() == A00()) {
                interfaceC2058cT = this.A00.A0V;
                interfaceC2058cT.AFg(A00(0, 22, 44));
            }
        }
    }
}
