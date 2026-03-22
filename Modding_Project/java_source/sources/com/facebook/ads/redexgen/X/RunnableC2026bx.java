package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.bx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2026bx implements Runnable {
    public static byte[] A02;
    public final /* synthetic */ C2030c1 A00;
    public final /* synthetic */ String A01;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 97);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{13, 33, 59, 34, 42, 110, 32, 33, 58, 110, 62, 47, 60, 61, 43, 110, 61, 43, 60, 56, 43, 60, 110, 35, 43, 61, 61, 47, 41, 43, 72, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 98, ByteCompanionObject.MAX_VALUE, 45, 125, 108, ByteCompanionObject.MAX_VALUE, 126, 100, 99, 106, 45, 71, 94, 66, 67, 45, 100, 99, 45, 125, 98, 126, 121, 64, 104, 126, 126, 108, 106, 104, 45, 87, 67, 66, 94, 125, 83, 79, 53, 40, 36, 34, 49, 15, 52, 49, 36, 49, 14, 3, 10, 31, 58, 60};
    }

    public RunnableC2026bx(C2030c1 c2030c1, String str) {
        this.A00 = c2030c1;
        this.A01 = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2009bg c2009bg;
        String str;
        C2009bg c2009bg2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(this.A01);
                str = this.A00.A05;
                if (str.equals(jSONObject.optString(A00(64, 7, 87)))) {
                    this.A00.A0C(EnumC2028bz.A00(jSONObject.optString(A00(81, 4, 27))), jSONObject.optString(A00(71, 10, 49), A00(85, 2, 32)));
                    return;
                }
                c2009bg2 = this.A00.A04;
                c2009bg2.A04(AbstractC1722Sv.A11, A00(0, 30, 47));
            } catch (JSONException e10) {
                c2009bg = this.A00.A04;
                c2009bg.A04(AbstractC1722Sv.A15, A00(30, 34, 108) + e10.getMessage());
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
