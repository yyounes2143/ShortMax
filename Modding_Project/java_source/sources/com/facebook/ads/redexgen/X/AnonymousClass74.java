package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.74  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass74 extends AbstractC2392hy {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 49);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{52, 59, 46, 51, 44, 63};
    }

    public AnonymousClass74(List<C1563Mp> list) {
        super(list);
    }

    public static AnonymousClass74 A00(JSONObject jSONObject, C2111dL c2111dL) {
        AnonymousClass74 anonymousClass74 = new AnonymousClass74(AbstractC2392hy.A08(jSONObject, c2111dL, new C2380hm()));
        anonymousClass74.A29(jSONObject);
        anonymousClass74.A1I(A01(0, 6, 107));
        return anonymousClass74;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1562Mo
    public final int A0l() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1562Mo
    public final int A0m() {
        return 0;
    }
}
