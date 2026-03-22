package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class Y7 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ Y9 A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 108);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{124, 120, 116, 114, 112};
    }

    public Y7(Y9 y92) {
        this.A00 = y92;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Mn mn2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            mn2 = this.A00.A06;
            mn2.getCTAButton().A0E(A00(0, 5, 121));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
