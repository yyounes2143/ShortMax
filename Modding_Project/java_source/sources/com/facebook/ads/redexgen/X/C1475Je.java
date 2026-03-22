package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Je  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1475Je implements ZY {
    public static byte[] A01;
    public final /* synthetic */ JU A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 104);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{73, 71, 57, 70, 51, 66, 53, 74, 61, 59, 53, 72, 61, 67, 66, 51, 61, 53, 54};
    }

    public C1475Je(JU ju2) {
        this.A00 = ju2;
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AES(String str) {
        ZP zp2;
        ZP zp3;
        AbstractC2392hy abstractC2392hy;
        LJ lj2;
        AbstractC2392hy abstractC2392hy2;
        LJ lj3;
        this.A00.A0X = false;
        zp2 = this.A00.A0K;
        zp2.setProgress(100);
        zp3 = this.A00.A0K;
        XP.A0L(zp3, 8);
        abstractC2392hy = this.A00.A0H;
        if (abstractC2392hy.A1d()) {
            lj2 = this.A00.A0L;
            if (lj2 != null) {
                abstractC2392hy2 = this.A00.A0H;
                String A0y = abstractC2392hy2.A0y();
                if (!TextUtils.isEmpty(A0y)) {
                    lj3 = this.A00.A0L;
                    lj3.loadUrl(A0y);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEU(String str) {
        ZP zp2;
        ZO zo2;
        boolean z10;
        int i10;
        this.A00.A0X = true;
        zp2 = this.A00.A0K;
        XP.A0L(zp2, 0);
        zo2 = this.A00.A0J;
        zo2.setUrl(str);
        z10 = this.A00.A0V;
        if (!z10) {
            i10 = this.A00.A01;
            if (i10 > 1) {
                this.A00.A0V = true;
                this.A00.A0h(A00(0, 19, 108));
            }
        }
        JU.A03(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEq(int i10) {
        boolean z10;
        ZP zp2;
        z10 = this.A00.A0X;
        if (z10) {
            zp2 = this.A00.A0K;
            zp2.setProgress(i10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEt(String str) {
        ZO zo2;
        zo2 = this.A00.A0J;
        zo2.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.ZY
    public final void AEw() {
        C1949ai c1949ai;
        c1949ai = this.A00.A0N;
        c1949ai.A0D().ACf(14);
    }
}
