package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public final class S6 {
    public static byte[] A03;
    public static final AtomicBoolean A04;
    public C2085cu A00;
    public String A01;
    public final C1826Wz A02 = new C1826Wz(300000000000L, new C2143ds(this));

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 80);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{-56, -43, -56, -45, -42, -50, -86, -95, -80, -77, -85, -82, -89, -69, -80, -75, -84, -95, -64, -78, -64, -64, -74, -68, -69, -52, -63, -74, -70, -78};
    }

    static {
        A04();
        A04 = new AtomicBoolean(false);
    }

    public static TV A00(C2085cu c2085cu) {
        if (U7.A1A(c2085cu)) {
            return TW.A01(A01(0, 6, 55), A01(18, 12, 29), A01(6, 12, 12));
        }
        return TW.A00();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C2085cu c2085cu;
        synchronized (this) {
            c2085cu = this.A00;
        }
        if (c2085cu == null) {
            return;
        }
        String A05 = TY.A00().A01(c2085cu, true).A05(A00(c2085cu));
        synchronized (this) {
            this.A01 = A05;
        }
    }

    public static void A03() {
        A04.set(true);
    }

    public final synchronized String A06(C2085cu c2085cu) {
        this.A00 = c2085cu;
        this.A00.A08().ABq();
        this.A00.A04().ACe(c2085cu);
        if (this.A00.A07().AJC() || ((A04.get() && U7.A1w(this.A00)) || this.A01 == null)) {
            A02();
            this.A02.A04().A03();
            A04.set(false);
        }
        this.A02.A06();
        return this.A01;
    }

    public final void A07() {
        this.A02.A05();
    }
}
