package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.bU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1997bU implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1463Is A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 52);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{7, -6, -11, -10, 0};
    }

    public View$OnClickListenerC1997bU(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1949ai c1949ai;
        C1949ai c1949ai2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0m(A00(0, 5, 93));
            c1949ai = this.A00.A0c;
            if (c1949ai.A0E() != null) {
                c1949ai2 = this.A00.A0c;
                c1949ai2.A0E().ABr();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
