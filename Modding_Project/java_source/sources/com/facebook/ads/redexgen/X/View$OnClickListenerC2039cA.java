package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2039cA implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"aSVeS7GSTPGzGlwxFERzGOUaCHJkzI2z", "LLGylRAhThVIhIHAbih9tPBDCPjYJ3wk", "dAcv7uC7M3KkKHminzJu7oFLvmyzwOeo", "9GvayoE6VvkK0xgQDuyzQgqlx5rjdrnu", "wDDK", "nNoIeo5hKMcMuIwTTSmTqlLWYr2HGCGs", "Kjjrp4DquliSLC6MHV0dGTx7o2b6nbq3", "WO7dkLjdWbLrsRFVrNnfWInSuw6lOMDM"};
    public final /* synthetic */ C4Z A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A02[0].charAt(19) != 'z') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[1] = "ZS6NMOZ5iivoiIhrEAHYVVuLQariJbL8";
            strArr[5] = "6wgrAttfPWhTSI4WoHgDbqlH426fwJ7f";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 70);
            i13++;
        }
    }

    public static void A01() {
        byte[] bArr = {-54, -59, -59, -62, -72, -73, -56};
        if (A02[0].charAt(19) != 'z') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[6] = "vsVzmfSe1AoNrvloOTDnivjLsCV7rctR";
        strArr[7] = "zSqcVhdNlZdzdn2RltwvtxLuLIPpuSoH";
        A01 = bArr;
    }

    static {
        A01();
    }

    public View$OnClickListenerC2039cA(C4Z c4z) {
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
                c1986bJ.A02(A00(0, 7, 16));
                interfaceC2058cT = this.A00.A0Z;
                interfaceC2058cT.ABr();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
