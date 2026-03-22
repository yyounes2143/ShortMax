package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.WindowManager;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.lX  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2594lX implements FT {
    public static byte[] A01;
    public final WindowManager A00;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 115);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-7, -21, -16, -26, -15, -7};
    }

    public C2594lX(WindowManager windowManager) {
        this.A00 = windowManager;
    }

    public static C2594lX A00(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService(A01(0, 6, 15));
        if (windowManager != null) {
            return new C2594lX(windowManager);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.FT
    public final void AGn(FS fs2) {
        fs2.ACz(this.A00.getDefaultDisplay());
    }

    @Override // com.facebook.ads.redexgen.X.FT
    public final void AJl() {
    }
}
