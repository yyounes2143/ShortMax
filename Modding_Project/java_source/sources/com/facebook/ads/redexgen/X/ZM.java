package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class ZM implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ ZO A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-23, -22, -9, -3, -4, -62, -22, -12, -23, -10, -13, -32, -19, -34, -32, -30, -13, -24, -11, -24, -13, -8, 16, 29, 19, 33, 30, 24, 19, -35, 24, 29, 35, 20, 29, 35, -35, 16, 18, 35, 24, 30, 29, -35, 5, -8, -12, 6};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        String str2;
        String str3;
        C2111dL c2111dL;
        C2111dL c2111dL2;
        C2111dL c2111dL3;
        ZN zn2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            str = this.A00.A07;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String A00 = A00(0, 11, 12);
            str2 = this.A00.A07;
            if (A00.equals(str2)) {
                return;
            }
            String A002 = A00(22, 26, 51);
            str3 = this.A00.A07;
            Intent intent = new Intent(A002, WQ.A00(str3));
            intent.addFlags(268435456);
            c2111dL = this.A00.A0A;
            c2111dL.A0F().A9q();
            try {
                c2111dL3 = this.A00.A0A;
                WB.A0D(c2111dL3, intent);
                zn2 = this.A00.A05;
                zn2.AEL();
            } catch (W9 e10) {
                Throwable cause = e10.getCause();
                Throwable th2 = e10;
                if (cause != null) {
                    th2 = e10.getCause();
                }
                c2111dL2 = this.A00.A0A;
                c2111dL2.A08().AAy(A00(11, 11, 3), AbstractC1722Sv.A00, new C1723Sw(th2));
            }
        } catch (Throwable th3) {
            AbstractC1788Vl.A00(th3, this);
        }
    }

    public ZM(ZO zo2) {
        this.A00 = zo2;
    }
}
