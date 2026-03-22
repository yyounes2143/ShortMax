package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.ih  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2433ih extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public final /* synthetic */ MW A00;
    public final /* synthetic */ JSONObject A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 10);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{117, 97, 118, 98, 102, 118, 125, 112, 106, 76, 112, 114, 99, 99, 122, 125, 116};
    }

    public C2433ih(MW mw, JSONObject jSONObject) {
        this.A00 = mw;
        this.A01 = jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        SQ sq2;
        SQ sq3;
        CountDownLatch countDownLatch;
        MV mv;
        MV mv2;
        CountDownLatch countDownLatch2;
        try {
            countDownLatch = this.A00.A05;
            countDownLatch.await();
            mv = this.A00.A02;
            synchronized (mv) {
                mv2 = this.A00.A02;
                mv2.A0B(this.A01);
                countDownLatch2 = this.A00.A06;
                countDownLatch2.countDown();
            }
        } catch (InterruptedException e10) {
            sq3 = this.A00.A03;
            sq3.A08().AAy(A00(0, 17, 25), AbstractC1722Sv.A1B, new C1723Sw(e10));
        } catch (JSONException e11) {
            this.A00.A0M();
            sq2 = this.A00.A03;
            sq2.A08().AAy(A00(0, 17, 25), AbstractC1722Sv.A1A, new C1723Sw(e11));
        }
    }
}
