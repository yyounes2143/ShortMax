package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.dG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2106dG implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"6oymiTsLeOB6akVZhYZlzt9u0lzod266", "zcFrhgW", "pA0IIkGKiekAr0fjB", "y6hjg8mxqAalWUMcxQuHYQOItnPT39hG", "7U0TsM6", "Tg7m67O8vHVp5z623KOmUlfZNUrkO0e2", "eZwTRoaquQnWH3ejc5rSlBlQZkiVI59b", "AT7ca5j6uH8ZMFY8gdhWcohA"};
    public final /* synthetic */ C1347Ef A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = (byte) ((copyOfRange[i13] - i12) - 52);
            String[] strArr = A02;
            if (strArr[4].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[7] = "b4q8hXeVYJWgCCKNMDRDzuby";
            strArr2[1] = "dEe326h";
            copyOfRange[i13] = b10;
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{22, 31, 21, 20, 18, 35, 21, 36};
    }

    static {
        A01();
    }

    public View$OnClickListenerC2106dG(C1347Ef c1347Ef) {
        this.A00 = c1347Ef;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        KE ke2;
        KE ke3;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            ke2 = this.A00.A07;
            if (ke2 != null) {
                ke3 = this.A00.A07;
                ke3.A0E(A00(0, 8, 125));
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            String[] strArr = A02;
            if (strArr[4].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A02[6] = "NoOvb1ER3rIaV6vkspGGWoVzXAP3qQ3Z";
        }
    }
}
