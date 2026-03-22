package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2059cU implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C4H A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 122);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{39, 42, 46, 43, 42, 61};
    }

    public View$OnClickListenerC2059cU(C4H c4h) {
        this.A00 = c4h;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            abstractC1945ae = this.A00.A00;
            if (abstractC1945ae != null) {
                abstractC1945ae2 = this.A00.A00;
                abstractC1945ae2.A1A(A00(0, 6, 53));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
