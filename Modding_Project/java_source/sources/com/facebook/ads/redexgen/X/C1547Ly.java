package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Ly  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1547Ly extends AbstractC2183eW {
    public static String[] A01 = {"M3Te92XvVv4q3bfKEkaCq6oPQP87x4vv", "LzmiiHhJsyKuUkJv7K1Ir2o", "KopJ75", "b4r1pmUHtrvrrbICXjY", "ceBgm8EiRhrot5ffXZtZ35omPt2ZFFf0", "0EayevzsZQe4lRY4RLfa4MEWre", "N9h8Vj", "K1Ob6mZ8MwS9WZtXZ80XEzEALvtTcRJ2"};
    public final /* synthetic */ Y9 A00;

    public C1547Ly(Y9 y92) {
        this.A00 = y92;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183eW
    public final void A03() {
        Y3 y32;
        C2184eX c2184eX;
        XH xh2;
        WeakReference weakReference;
        C2184eX c2184eX2;
        XH xh3;
        Y3 y33;
        C2184eX c2184eX3;
        y32 = this.A00.A07;
        if (y32 != null) {
            y33 = this.A00.A07;
            if (!y33.A0D()) {
                c2184eX3 = this.A00.A09;
                c2184eX3.A0T();
                return;
            }
        }
        c2184eX = this.A00.A09;
        c2184eX.A0V();
        xh2 = this.A00.A05;
        if (!xh2.A07()) {
            xh3 = this.A00.A05;
            xh3.A05();
        }
        weakReference = this.A00.A0B;
        Y8 listener = (Y8) weakReference.get();
        if (listener != null) {
            listener.ADW();
        }
        Y9 y92 = this.A00;
        String[] strArr = A01;
        if (strArr[1].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "2rS8p9kEkH8XxeBlGl7RSlB";
        strArr2[3] = "nqXy6qNf0NylKakjBUJ";
        c2184eX2 = y92.A09;
        c2184eX2.A0V();
    }
}
