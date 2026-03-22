package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import org.json.JSONException;
/* renamed from: com.facebook.ads.redexgen.X.ie  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2432ie extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public final /* synthetic */ MW A00;
    public final /* synthetic */ String A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 19);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{36, 48, 39, 51, 55, 39, 44, 33, 59, 29, 33, 35, 50, 50, 43, 44, 37};
    }

    public C2432ie(MW mw, String str) {
        this.A00 = mw;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        SQ sq2;
        SQ sq3;
        CountDownLatch countDownLatch;
        boolean A0J;
        MV mv;
        MV mv2;
        MV mv3;
        String A00 = A00(0, 17, 81);
        try {
            countDownLatch = this.A00.A06;
            countDownLatch.await();
            A0J = this.A00.A0J(this.A01);
            if (A0J) {
                mv = this.A00.A02;
                ((N2) mv.A05().get(this.A01)).A04((int) (System.currentTimeMillis() / 1000));
                mv2 = this.A00.A02;
                mv2.A07(this.A01);
                mv3 = this.A00.A02;
                mv3.A06();
                this.A00.A08();
            }
        } catch (InterruptedException e10) {
            sq3 = this.A00.A03;
            sq3.A08().AAy(A00, AbstractC1722Sv.A1B, new C1723Sw(e10));
        } catch (JSONException e11) {
            this.A00.A0M();
            sq2 = this.A00.A03;
            sq2.A08().AAy(A00, AbstractC1722Sv.A1A, new C1723Sw(e11));
        }
    }
}
