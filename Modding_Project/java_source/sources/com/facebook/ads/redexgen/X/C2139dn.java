package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.dn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2139dn extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public final /* synthetic */ C2138dm A00;
    public final /* synthetic */ AtomicBoolean A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{14, 44, 46, 51, 48, -21, 49, 44, 52, 55, -7, -110, -80, -78, -73, -76, 111, -62, -60, -78, -78, -76, -62, -62, 125};
    }

    public C2139dn(C2138dm c2138dm, AtomicBoolean atomicBoolean) {
        this.A00 = c2138dm;
        this.A01 = atomicBoolean;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        SQ sq2;
        long j10;
        SQ sq3;
        long j11;
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(UZ.A0H);
                sq3 = this.A00.A02.A04;
                S8 s82 = this.A00.A01;
                int i10 = SI.A00;
                j11 = this.A00.A02.A00;
                SI.A02(sq3, s82, i10, A00(11, 14, 1), j11);
                this.A00.A02.A0U();
                this.A00.A00.ACq();
                return;
            }
            this.A00.A02.A0I(UZ.A0G);
            sq2 = this.A00.A02.A04;
            S8 s83 = this.A00.A01;
            int i11 = SI.A04;
            j10 = this.A00.A02.A00;
            SI.A02(sq2, s83, i11, A00(0, 11, 125), j10);
            this.A00.A02.A0V();
            this.A00.A00.ACh();
        }
    }
}
