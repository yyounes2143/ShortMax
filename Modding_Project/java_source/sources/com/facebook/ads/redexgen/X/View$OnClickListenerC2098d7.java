package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.d7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2098d7 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C2101dA A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 77);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{4, 15, 5, 2, 0, 19, 5, 18};
    }

    public View$OnClickListenerC2098d7(C2101dA c2101dA) {
        this.A00 = c2101dA;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        KE ke2;
        KE ke3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            ke2 = this.A00.A0g;
            if (ke2 == null) {
                return;
            }
            ke3 = this.A00.A0g;
            ke3.A0E(A00(0, 8, 44));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
