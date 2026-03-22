package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Le  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1527Le implements InterfaceC1805Wc {
    public static byte[] A01;
    public static String[] A02 = {"RKj", "", "UN15gotjq8", "ajoBiEUEQKFJNLqm", "ifgUnXqkKiJSPGKzKRtyUVwCV1ynqJ", "MgNPOwYKG3krpOkrgoqalUsb7GIlLECG", "4d5pH5OlBXd1RidH0kkNXmSukCNaNWUQ", "ZdfTYbLhRFsUmKvgir0oysIbzYx0fUOP"};
    public final /* synthetic */ C1525Lc A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 17);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-31, -7, -21, -23, -7, -29};
    }

    static {
        A01();
    }

    public C1527Le(C1525Lc c1525Lc) {
        this.A00 = c1525Lc;
    }

    public /* synthetic */ C1527Le(C1525Lc c1525Lc, C1543Lu c1543Lu) {
        this(c1525Lc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        boolean z10;
        boolean A0V;
        this.A00.A0a.setToolbarActionMessage(A00(0, 0, 19));
        this.A00.A0I();
        z10 = this.A00.A0X;
        if (z10) {
            A0V = this.A00.A0V();
            String[] strArr = A02;
            if (strArr[5].charAt(0) == strArr[7].charAt(0)) {
                throw new RuntimeException();
            }
            A02[4] = "QDC88FCswtzFK8CArK72WEL9jXMBl5";
            if (A0V) {
                this.A00.A0a.setToolbarActionMode(1);
                return;
            }
        }
        this.A00.A0a.setToolbarActionMode(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        boolean z10;
        NB nb2;
        boolean z11;
        AbstractC2392hy abstractC2392hy;
        float A04;
        AbstractC2392hy abstractC2392hy2;
        AbstractC2392hy abstractC2392hy3;
        boolean z12;
        AbstractC2392hy abstractC2392hy4;
        boolean z13;
        AbstractC2392hy abstractC2392hy5;
        this.A00.A0O((int) f10);
        z10 = this.A00.A0Y;
        if (!z10) {
            nb2 = this.A00.A0J;
            this.A00.A0a.setProgress(100.0f * (1.0f - (f10 / nb2.A07())));
            return;
        }
        z11 = this.A00.A0E;
        if (z11) {
            abstractC2392hy4 = this.A00.A0I;
            if (A02[6].charAt(27) != 'a') {
                throw new RuntimeException();
            }
            A02[4] = "3MuDy2E798EtOoHK0e0a3SiH1QgAy5";
            A04 = 1.0f - (f10 / abstractC2392hy4.A20().A0H().A03());
            z13 = this.A00.A0H;
            if (z13 || A04 < 1.0f) {
                this.A00.A0H = false;
                abstractC2392hy5 = this.A00.A0I;
                this.A00.A0a.setToolbarActionMessage(abstractC2392hy5.A24().A02().replace(A00(0, 6, 117), String.valueOf((int) f10)));
            } else {
                this.A00.A0H = true;
                AbstractC1839Xm abstractC1839Xm = this.A00.A0a;
                String A00 = A00(0, 0, 19);
                if (A02[3].length() != 16) {
                    abstractC1839Xm.setToolbarActionMessage(A00);
                } else {
                    String[] strArr = A02;
                    strArr[5] = "wpbUz5ctYXHuYyRf6fVCU3uRzsMt7dE8";
                    strArr[7] = "BBfRd69Z77LUH69GeqVAIKhho7h2fuMA";
                    abstractC1839Xm.setToolbarActionMessage(A00);
                }
            }
        } else {
            abstractC2392hy = this.A00.A0I;
            A04 = 1.0f - (f10 / abstractC2392hy.A20().A0H().A04());
        }
        this.A00.A0a.setProgress(100.0f * A04);
        abstractC2392hy2 = this.A00.A0I;
        abstractC2392hy3 = this.A00.A0I;
        float percentageOfReward = abstractC2392hy3.A20().A0H().A04();
        boolean z14 = ((float) abstractC2392hy2.A20().A0H().A03()) - f10 >= percentageOfReward;
        z12 = this.A00.A0H;
        if (!z12 && z14) {
            this.A00.A0a.setToolbarActionMode(1);
        }
    }
}
