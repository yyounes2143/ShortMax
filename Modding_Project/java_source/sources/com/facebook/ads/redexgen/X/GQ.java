package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class GQ {
    public static byte[] A04;
    public static String[] A05 = {"uP2VmRjmPrkQ", "gRGWgf4lLYF9Rif8PQPDNbGokb9BUMtV", "bSjOyzwe8Lqn79dPeHIi8kfJVgfNJaEZ", "7R1XMZQjg8S2TiXm1wE8kLqT1leJFKD3", "sD", "qKJRf3b", "Q40N8hoONMcQBFaHNU", "iAP6W7CwppN1UlUQVXHbR"};
    public GK A00;
    public final int A01;
    public final C2592lV A02;
    public final GP A03;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 35);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 45, 47, 61, 43};
    }

    static {
        A03();
    }

    public GQ(GL gl2, GP gp2, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.A03 = gp2;
        this.A01 = i10;
        this.A02 = new C2592lV(gl2, j10, j11, j12, j13, j14, j15);
    }

    private final int A00(InterfaceC2585lN interfaceC2585lN, long j10, C1413Gt c1413Gt) {
        if (j10 != interfaceC2585lN.A8f()) {
            c1413Gt.A00 = j10;
            return 1;
        } else if (A05[5].length() != 7) {
            throw new RuntimeException();
        } else {
            A05[4] = "eb0wJDSKJb6zWnRAqReB9UTGfXv";
            return 0;
        }
    }

    private final GK A01(long j10) {
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long A052 = this.A02.A05(j10);
        j11 = this.A02.A05;
        j12 = this.A02.A02;
        j13 = this.A02.A04;
        j14 = this.A02.A01;
        j15 = this.A02.A00;
        return new GK(j10, A052, j11, j12, j13, j14, j15);
    }

    private final void A04(boolean z10, long j10) {
        this.A00 = null;
        this.A03.AFA();
    }

    private final boolean A05(InterfaceC2585lN interfaceC2585lN, long j10) throws IOException {
        long A8f = j10 - interfaceC2585lN.A8f();
        if (A8f >= 0 && A8f <= 262144) {
            interfaceC2585lN.AJJ((int) A8f);
            return true;
        }
        return false;
    }

    public final int A06(InterfaceC2585lN interfaceC2585lN, C1413Gt c1413Gt) throws IOException {
        long A01;
        long A00;
        long A02;
        long A042;
        int i10;
        long j10;
        long j11;
        long j12;
        long floorPosition;
        long j13;
        long j14;
        long j15;
        while (true) {
            GK gk2 = (GK) C3M.A02(this.A00);
            A01 = gk2.A01();
            A00 = gk2.A00();
            A02 = gk2.A02();
            if (A00 - A01 <= this.A01) {
                A04(false, A01);
                String[] strArr = A05;
                if (strArr[3].charAt(1) != strArr[1].charAt(1)) {
                    throw new RuntimeException();
                }
                A05[5] = "cjf3Phs";
                return A00(interfaceC2585lN, A01, c1413Gt);
            } else if (!A05(interfaceC2585lN, A02)) {
                return A00(interfaceC2585lN, A02, c1413Gt);
            } else {
                interfaceC2585lN.AI1();
                GP gp2 = this.A03;
                A042 = gk2.A04();
                GN AIC = gp2.AIC(interfaceC2585lN, A042);
                i10 = AIC.A00;
                switch (i10) {
                    case -3:
                        A04(false, A02);
                        return A00(interfaceC2585lN, A02, c1413Gt);
                    case -2:
                        j14 = AIC.A02;
                        j15 = AIC.A01;
                        gk2.A0D(j14, j15);
                        break;
                    case -1:
                        j10 = AIC.A02;
                        j11 = AIC.A01;
                        gk2.A0C(j10, j11);
                        break;
                    case 0:
                        j12 = AIC.A01;
                        A05(interfaceC2585lN, j12);
                        floorPosition = AIC.A01;
                        A04(true, floorPosition);
                        j13 = AIC.A01;
                        return A00(interfaceC2585lN, j13, c1413Gt);
                    default:
                        throw new IllegalStateException(A02(0, 12, 109));
                }
            }
        }
    }

    public final C2592lV A07() {
        return this.A02;
    }

    public final void A08(long j10) {
        long A03;
        if (this.A00 != null) {
            A03 = this.A00.A03();
            if (A03 == j10) {
                return;
            }
        }
        this.A00 = A01(j10);
    }

    public final boolean A09() {
        return this.A00 != null;
    }
}
