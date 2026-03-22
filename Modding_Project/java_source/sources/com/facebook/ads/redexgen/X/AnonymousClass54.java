package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.54  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class AnonymousClass54 extends DV {
    public static byte[] A01;
    public final /* synthetic */ C2014bl A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{19, 4, 4, 25, 4};
    }

    public AnonymousClass54(C2014bl c2014bl) {
        this.A00 = c2014bl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A02 */
    public final void A03(DW dw) {
        InterfaceC2013bk interfaceC2013bk;
        JSONObject A03;
        new Handler(Looper.getMainLooper()).post(new RunnableC2012bj(this));
        interfaceC2013bk = this.A00.A0B;
        A03 = this.A00.A03();
        interfaceC2013bk.AFh(A00(0, 5, 126), A03);
    }
}
