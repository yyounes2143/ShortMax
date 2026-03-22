package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import org.json.JSONException;
/* renamed from: com.facebook.ads.redexgen.X.if  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class Cif extends AbstractRunnableC1796Vt {
    public static byte[] A02;
    public final /* synthetic */ MW A00;
    public final /* synthetic */ String A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 55);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-77, -65, -78, -66, -62, -78, -69, -80, -58, -84, -80, -82, -67, -67, -74, -69, -76};
    }

    public Cif(MW mw, String str) {
        this.A00 = mw;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        SQ sq2;
        SQ sq3;
        CountDownLatch countDownLatch;
        MV mv;
        MV mv2;
        MV mv3;
        boolean A0J;
        MV mv4;
        try {
            countDownLatch = this.A00.A06;
            countDownLatch.await();
            mv = this.A00.A02;
            synchronized (mv) {
                mv2 = this.A00.A02;
                Iterator<String> keys = mv2.A05().keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    A0J = this.A00.A0J(this.A01);
                    if (A0J) {
                        MW mw = this.A00;
                        mv4 = this.A00.A02;
                        mw.A0E((N2) mv4.A05().get(next), next, next.equals(this.A01));
                    }
                }
                mv3 = this.A00.A02;
                mv3.A06();
                this.A00.A08();
            }
        } catch (InterruptedException e10) {
            sq3 = this.A00.A03;
            InterfaceC1721Su A08 = sq3.A08();
            String encryptedId = A00(0, 17, 22);
            A08.AAy(encryptedId, AbstractC1722Sv.A1B, new C1723Sw(e10));
        } catch (JSONException e11) {
            this.A00.A0M();
            sq2 = this.A00.A03;
            InterfaceC1721Su A082 = sq2.A08();
            String encryptedId2 = A00(0, 17, 22);
            A082.AAy(encryptedId2, AbstractC1722Sv.A1A, new C1723Sw(e11));
        }
    }
}
