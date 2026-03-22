package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class J8 implements ZY {
    public static byte[] A01;
    public static String[] A02 = {"Lf", "nmAxyBcQYqE4UmHMsUF1rAa8zTrMAPgx", "yXHjwHYuNIdrzaXYLvaZZ8rDuk", "9P19JGz6dEYaA5InwGx6w36V1Sjc1fgT", "Uaeemoya7byMjdbMYqkdDOMCW0kva5u1", "a9sExJmhm07IJOfFlJQHVREgKDfvTtqT", "zS9IM7X0AIqJ7SZD2m", "JScTq5ptQGF6W5ukeGazDvn9iL3"};
    public final /* synthetic */ C1463Is A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 15);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -31, -45, -32, -51, -36, -49, -28, -41, -43, -49, -30, -41, -35, -36, -51, -41, -49, -48};
    }

    static {
        A01();
    }

    public J8(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AES(String str) {
        ZP zp2;
        ZP zp3;
        AbstractC2392hy abstractC2392hy;
        LJ lj2;
        AbstractC2392hy abstractC2392hy2;
        LJ lj3;
        this.A00.A0K = false;
        zp2 = this.A00.A07;
        zp2.setProgress(100);
        zp3 = this.A00.A07;
        XP.A0L(zp3, 8);
        abstractC2392hy = this.A00.A0Y;
        if (abstractC2392hy.A1d()) {
            lj2 = this.A00.A08;
            if (lj2 != null) {
                abstractC2392hy2 = this.A00.A0Y;
                String A0y = abstractC2392hy2.A0y();
                if (!TextUtils.isEmpty(A0y)) {
                    lj3 = this.A00.A08;
                    lj3.loadUrl(A0y);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEU(String str) {
        ZP zp2;
        ZH zh2;
        boolean z10;
        int i10;
        this.A00.A0K = true;
        zp2 = this.A00.A07;
        XP.A0L(zp2, 0);
        zh2 = this.A00.A06;
        zh2.setUrl(str);
        z10 = this.A00.A0I;
        if (!z10) {
            i10 = this.A00.A00;
            if (i10 > 1) {
                this.A00.A0I = true;
                C1463Is c1463Is = this.A00;
                String[] strArr = A02;
                if (strArr[4].charAt(17) == strArr[5].charAt(17)) {
                    throw new RuntimeException();
                }
                A02[2] = "wX256yuF2";
                c1463Is.A0l(A00(0, 19, 95));
            }
        }
        C1463Is.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEq(int i10) {
        boolean z10;
        ZP zp2;
        z10 = this.A00.A0K;
        if (z10) {
            zp2 = this.A00.A07;
            zp2.setProgress(i10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEt(String str) {
        ZH zh2;
        zh2 = this.A00.A06;
        zh2.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEw() {
        C1949ai c1949ai;
        c1949ai = this.A00.A0c;
        c1949ai.A0D().ACf(14);
    }
}
