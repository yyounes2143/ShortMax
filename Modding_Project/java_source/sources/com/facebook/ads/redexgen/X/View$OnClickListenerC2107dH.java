package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.dH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2107dH implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1343Eb A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{56, 51, 57, 62, 60, 47, 57, 46};
    }

    public View$OnClickListenerC2107dH(C1343Eb c1343Eb) {
        this.A00 = c1343Eb;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        KE ke2;
        KE ke3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            ke2 = this.A00.A02;
            if (ke2 != null) {
                ke3 = this.A00.A02;
                ke3.A0E(A00(0, 8, 103));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
