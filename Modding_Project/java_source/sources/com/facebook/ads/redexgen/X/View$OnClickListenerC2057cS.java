package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cS  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2057cS implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1392Fy A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{126, 115, 119, 114, 115, 100};
    }

    public View$OnClickListenerC2057cS(C1392Fy c1392Fy) {
        this.A00 = c1392Fy;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1436Hr abstractC1436Hr;
        AbstractC1436Hr abstractC1436Hr2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            abstractC1436Hr = this.A00.A04;
            if (abstractC1436Hr != null) {
                abstractC1436Hr2 = this.A00.A04;
                abstractC1436Hr2.A1A(A00(0, 6, 84));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
