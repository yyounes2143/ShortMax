package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.iE  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2406iE extends MR {
    public static byte[] A06;
    public static final String A07;
    public C2408iG A00;
    public V4 A01;
    public boolean A02;
    public final C2111dL A03;
    public final US A04;
    public final AbstractC1883Ze A05;

    public static String A04(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 53);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A06 = new byte[]{-55, -56, -43, -43, -52, -39};
    }

    static {
        A05();
        A07 = C2406iE.class.getSimpleName();
    }

    public C2406iE(C2111dL c2111dL, US us2, AbstractC1883Ze abstractC1883Ze, C2184eX c2184eX, MS ms2, V4 v42) {
        super(c2111dL, ms2, c2184eX);
        this.A04 = us2;
        this.A05 = abstractC1883Ze;
        this.A03 = c2111dL;
        this.A01 = v42;
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A08(Map<String, String> map) {
        String adPlacementType;
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7G())) {
            this.A03.A0F().A3D();
            AbstractC1596Nw.A02(this.A00.A05(), X0.A00(A04(0, 6, 50)));
            this.A04.AB5(this.A00.A7G(), map);
            if (U7.A19(this.A03)) {
                if (this.A01 == V4.A09) {
                    adPlacementType = AdPlacementType.MEDIUM_RECTANGLE.toString();
                } else {
                    adPlacementType = AdPlacementType.BANNER.toString();
                }
                W2 A00 = W2.A00(this.A03);
                String placementType = this.A00.A7G();
                A00.A0E(adPlacementType, placementType);
            }
        }
    }

    public final synchronized void A09() {
        if (!this.A02 && this.A00 != null) {
            this.A02 = true;
            if (!TextUtils.isEmpty(this.A00.A03())) {
                XJ.A00(new C2407iF(this));
            }
        }
    }

    public final void A0A(C2408iG c2408iG) {
        this.A00 = c2408iG;
    }
}
