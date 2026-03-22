package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.TrafficStats;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: assets/audience_network.dex */
public class SE implements Callable<Boolean> {
    public static byte[] A02;
    public final SD A00;
    public final /* synthetic */ SF A01;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 2);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-35, -31, -43, -37, -39};
    }

    public SE(SF sf2, SD sd2) {
        this.A01 = sf2;
        this.A00 = sd2;
    }

    private final Boolean A00() {
        SQ sq2;
        boolean z10;
        SG sg2;
        boolean z11;
        boolean z12;
        SQ sq3;
        InterfaceC1512Kp A03;
        Map map;
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            C1518Kv c1518Kv = new C1518Kv(this.A00.A08, this.A00.A07, this.A00.A06, A01(0, 5, 114), this.A00.A02, this.A00.A03);
            c1518Kv.A01 = this.A00.A05;
            c1518Kv.A00 = this.A00.A04;
            sq2 = this.A01.A04;
            if (SI.A06(sq2)) {
                map = SF.A0F;
                map.put(this.A00.A08, c1518Kv);
            }
            z10 = this.A01.A08;
            boolean precacheResult = false;
            if (!z10) {
                sg2 = this.A01.A03;
                if (sg2.A0F(this.A00) != null) {
                    precacheResult = true;
                }
            } else {
                sq3 = this.A01.A04;
                A03 = SF.A03(sq3.A02());
                precacheResult = A03.AHu(c1518Kv, false).A01();
            }
            SL sl2 = this.A00.A01;
            if (sl2 != null && sl2.A02()) {
                int A00 = sl2.A00();
                int A01 = sl2.A01();
                if (A00 <= 0 || A01 <= 0) {
                    z11 = this.A01.A08;
                    if (z11) {
                        A04(this.A00.A08, c1518Kv);
                    } else {
                        A03(this.A00.A04, this.A00.A05);
                    }
                } else {
                    z12 = this.A01.A08;
                    if (z12) {
                        c1518Kv.A00 = A00;
                        c1518Kv.A01 = A01;
                        A04(this.A00.A08, c1518Kv);
                    } else {
                        A03(A00, A01);
                    }
                }
            }
            return Boolean.valueOf(precacheResult);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
    }

    private void A03(int i10, int i11) {
        SG sg2;
        SQ sq2;
        Map map;
        sg2 = this.A01.A03;
        sq2 = this.A01.A04;
        Bitmap A0G = sg2.A0G(sq2, this.A00.A08, i10, i11, this.A00.A02);
        if (A0G == null) {
            return;
        }
        map = this.A01.A07;
        map.put(this.A00.A08, A0G);
    }

    private void A04(String str, C1518Kv c1518Kv) {
        SQ sq2;
        InterfaceC1512Kp A03;
        Map map;
        sq2 = this.A01.A04;
        A03 = SF.A03(sq2.A02());
        Bitmap A00 = A03.AHu(c1518Kv, true).A00();
        if (A00 == null) {
            return;
        }
        map = this.A01.A07;
        map.put(str, A00);
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
    }
}
