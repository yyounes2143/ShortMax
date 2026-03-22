package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.iD  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2405iD extends MR {
    public static byte[] A02;
    @Nullable
    public final C2403iB A00;
    public final US A01;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 26);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{70, 69, 74, 74, 65, 86};
    }

    public C2405iD(C2111dL c2111dL, MS ms2, C2184eX c2184eX, US us2, C2403iB c2403iB) {
        super(c2111dL, ms2, c2184eX);
        this.A01 = us2;
        this.A00 = c2403iB;
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A08(Map<String, String> map) {
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7G())) {
            this.A02.A0F().A3D();
            AbstractC1596Nw.A02(this.A00.A0X(), X0.A00(A01(0, 6, 62)));
            this.A01.AB5(this.A00.A7G(), map);
            if (U7.A19(this.A02)) {
                String adPlacementType = AdPlacementType.MEDIUM_RECTANGLE.toString();
                W2 A00 = W2.A00(this.A02);
                String placementType = this.A00.A7G();
                A00.A0E(adPlacementType, placementType);
            }
        }
    }
}
