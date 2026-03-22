package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: assets/audience_network.dex */
public class SC implements Callable<Boolean> {
    public static byte[] A02;
    public final SB A00;
    public final /* synthetic */ SF A01;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 41);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-34, -46, -29, -36, -26, -31, -25, -38, -43, -42, -32};
    }

    public SC(SF sf2, SB sb2) {
        this.A01 = sf2;
        this.A00 = sb2;
    }

    private final Boolean A00() {
        String A01;
        SQ sq2;
        SQ sq3;
        InterfaceC1512Kp A03;
        Map map;
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            if (this.A00.A04) {
                A01 = A01(0, 6, 72);
            } else {
                A01 = A01(6, 5, 72);
            }
            String str = this.A00.A08;
            String creativeType = this.A00.A07;
            C1518Kv c1518Kv = new C1518Kv(str, creativeType, this.A00.A06, A01, this.A00.A02, this.A00.A05);
            c1518Kv.A04 = this.A00.A03;
            c1518Kv.A02 = this.A00.A01;
            c1518Kv.A05 = this.A00.A04;
            sq2 = this.A01.A04;
            if (SI.A06(sq2)) {
                map = SF.A0F;
                map.put(this.A00.A08, c1518Kv);
            }
            sq3 = this.A01.A04;
            A03 = SF.A03(sq3.A02());
            return Boolean.valueOf(A03.AHw(c1518Kv) != null);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
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
