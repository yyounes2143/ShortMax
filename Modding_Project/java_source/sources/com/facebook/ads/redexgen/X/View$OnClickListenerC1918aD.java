package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.aD  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1918aD implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C11305h A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 88);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{61, 48, 43, 44, 54};
    }

    public View$OnClickListenerC1918aD(C11305h c11305h) {
        this.A00 = c11305h;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 111));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
