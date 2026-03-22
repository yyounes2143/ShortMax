package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.c9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2038c9 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C4Z A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 76);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{20, 23, 23, 24, 39, 20, 28, 31, 38};
    }

    public View$OnClickListenerC2038c9(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z10;
        C1986bJ c1986bJ;
        InterfaceC2058cT interfaceC2058cT;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0K;
            if (!z10) {
                c1986bJ = this.A00.A0H;
                c1986bJ.A02(A00(0, 9, 103));
                interfaceC2058cT = this.A00.A0Z;
                interfaceC2058cT.ABr();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
