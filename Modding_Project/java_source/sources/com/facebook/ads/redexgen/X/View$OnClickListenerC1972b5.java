package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.b5  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1972b5 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ JU A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 88);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{90, 69, 72, 73, 67};
    }

    public View$OnClickListenerC1972b5(JU ju2) {
        this.A00 = ju2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z10;
        C1986bJ c1986bJ;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0Q;
            if (!z10) {
                c1986bJ = this.A00.A0O;
                c1986bJ.A02(A00(0, 5, 116));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
