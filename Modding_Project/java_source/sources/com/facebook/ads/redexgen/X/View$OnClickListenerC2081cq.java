package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.cq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2081cq implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"G2UpIRG7nHrOr90n", "kYhtZYHz7C3TU0WVzw0hA6O", "uW0OSEs2O", "98fx3b2TZyak0tYZ", "bs30TCHyJSAD4FU59WYQYpULQNB9Thj8", "Z9AhNL9JKwL2XNGWvK18w1A8N2mtiW", "DrOsL5ff6T5Di1pSQXw1oWhHj1xrfAsq", "4UtMvRkaUwptTB"};
    public final /* synthetic */ C10873q A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = (byte) ((copyOfRange[i13] ^ i12) ^ 45);
            if (A02[6].charAt(5) == 'o') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "wiUvRTIpL";
            strArr[5] = "IscvqafGu8CzUXymljnx6wLgaNtEmJ";
            copyOfRange[i13] = b10;
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{ByteCompanionObject.MAX_VALUE, 114, 118, 115, 114, 101};
    }

    static {
        A01();
    }

    public View$OnClickListenerC2081cq(C10873q c10873q) {
        this.A00 = c10873q;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A01(A00(0, 6, 58));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
