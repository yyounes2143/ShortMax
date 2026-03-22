package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Fz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1393Fz implements InterfaceC1838Xl {
    public static byte[] A01;
    public static String[] A02 = {"csDJTKMsYdQDTZ6oaAKl5T8I2UfElmlw", "ZPoBWwRbmlxJW4JBXeHiCznpgduRwX0R", "YnHNxwrcL4VP2rzDabEPBpSRhKQlF70O", "ZXjFBdL6N8QRVPocRq4T6yjW", "DvDV4BG5U2fSuPxyYCt3atNQBem4gb3r", "Lz5NxPzXDVZYAcKGP0xvxFjIAyYktO5Y", "USLnjf5V4FwfzNcoOXwUO87ZM5qcDzRn", "2jpbWPspWwKCP4YD7vZxOkEv1N6M1MwD"};
    public final /* synthetic */ C1392Fy A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 89);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        if (A02[0].charAt(1) == '2') {
            throw new RuntimeException();
        }
        A02[3] = "dLINtRlzHu";
        A01 = new byte[]{117, 109, 111, 118};
    }

    static {
        A01();
    }

    public C1393Fz(C1392Fy c1392Fy) {
        this.A00 = c1392Fy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1838Xl
    public final void ACC(AbstractC1839Xm abstractC1839Xm) {
        AbstractC1436Hr abstractC1436Hr;
        C1752Ua c1752Ua;
        AbstractC1436Hr abstractC1436Hr2;
        if (abstractC1839Xm.getToolbarActionMode() == 8) {
            abstractC1436Hr = this.A00.A04;
            if (abstractC1436Hr != null) {
                c1752Ua = this.A00.A0F;
                c1752Ua.A04(UZ.A0Y, null);
                abstractC1436Hr2 = this.A00.A04;
                abstractC1436Hr2.A1A(A00(0, 4, 95));
                this.A00.A0E();
                return;
            }
        }
        this.A00.A0C();
    }
}
