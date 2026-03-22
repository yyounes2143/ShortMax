package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.BlockingQueue;
/* renamed from: com.facebook.ads.redexgen.X.dj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2135dj implements InterfaceC2169eI {
    public static byte[] A04;
    public static String[] A05 = {"5xwnqBcSwQdKZIKpCxhEhIB1ehz5rbXz", "SVnny4sMHrVxDT0mCWgznsGyNwA0K29Q", "WSedDxIDZVsWQqxlis9Ww20KqcWIyEnI", "k4ruqDXMLqmQWww9EukWiXBxmglEjOwQ", "qeuUn3ZO1g9cCLbTYKy8rfCeNqsjP", "lwrAvEwGJvKZaAaN19YZU8UxJCWRUSKU", "KAMWqSOuX5oAD", "9nA6fjXGqk7Q6o3drz3rA7fb0omaCvC"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ SA A02;
    public final /* synthetic */ SB A03;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 48);
            if (A05[5].charAt(12) == 'F') {
                throw new RuntimeException();
            }
            A05[5] = "k7DX94ZUmS6mjbqg2Uqpnt5MM6ksEeAZ";
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        if (A05[5].charAt(12) == 'F') {
            throw new RuntimeException();
        }
        A05[4] = "84A19LE3N5skcLW3UxwckiEcHwoNq";
        A04 = new byte[]{18, 11, 8, 11, 12, 20, 11, -9, -22, -27, -26, -16};
    }

    static {
        A01();
    }

    public C2135dj(SA sa2, SB sb2, long j10, long j11) {
        this.A02 = sa2;
        this.A03 = sb2;
        this.A00 = j10;
        this.A01 = j11;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2169eI
    public final void AD5(boolean z10) {
        SQ sq2;
        BlockingQueue blockingQueue;
        SQ sq3;
        SQ sq4;
        sq2 = this.A02.A01.A04;
        if (SI.A06(sq2)) {
            SH sh2 = new SH(this.A03.A06, this.A03.A07, A00(7, 5, 81), this.A03.A02, this.A03.A08);
            sq3 = this.A02.A01.A04;
            SI.A04(sq3, sh2, z10);
            if (!z10) {
                sq4 = this.A02.A01.A04;
                SI.A05(sq4, this.A03.A06, this.A03.A07, this.A03.A08, A00(7, 5, 81), this.A03.A02, 2112, null, Long.valueOf(this.A00), Long.valueOf(System.currentTimeMillis() - this.A01), null);
            }
            SF.A0A().put(sh2.A04, sh2);
        }
        try {
            blockingQueue = this.A02.A00;
            blockingQueue.put(true);
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2169eI
    public final void ADD(Throwable th2) {
        SQ sq2;
        BlockingQueue blockingQueue;
        SQ sq3;
        sq2 = this.A02.A01.A04;
        if (SI.A06(sq2)) {
            sq3 = this.A02.A01.A04;
            SI.A05(sq3, this.A03.A06, this.A03.A07, this.A03.A08, A00(7, 5, 81), this.A03.A02, 2119, th2 != null ? th2.toString() : A00(0, 7, 109), null, Long.valueOf(System.currentTimeMillis() - this.A01), null);
        }
        try {
            blockingQueue = this.A02.A00;
            blockingQueue.put(false);
        } catch (InterruptedException unused) {
        }
    }
}
