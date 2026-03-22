package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class FF extends AbstractC2183eW {
    public final /* synthetic */ US A00;
    public final /* synthetic */ XH A01;
    public final /* synthetic */ C2078cn A02;
    public final /* synthetic */ FD A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public FF(FD fd2, String str, C2078cn c2078cn, US us2, Map map, XH xh2) {
        this.A03 = fd2;
        this.A04 = str;
        this.A02 = c2078cn;
        this.A00 = us2;
        this.A05 = map;
        this.A01 = xh2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183eW
    public final void A03() {
        C2184eX c2184eX;
        SparseBooleanArray sparseBooleanArray;
        C2184eX c2184eX2;
        N3 n32;
        C2111dL c2111dL;
        SparseBooleanArray sparseBooleanArray2;
        c2184eX = this.A03.A02;
        if (!c2184eX.A0Z() && !TextUtils.isEmpty(this.A04)) {
            sparseBooleanArray = this.A03.A05;
            if (!sparseBooleanArray.get(this.A02.A02())) {
                US us2 = this.A00;
                String str = this.A04;
                C1894Zp c1894Zp = new C1894Zp(this.A05);
                c2184eX2 = this.A03.A03;
                us2.AB5(str, c1894Zp.A03(c2184eX2).A02(this.A01).A05());
                n32 = this.A03.A00;
                c2111dL = this.A03.A06;
                N3.A07(n32, c2111dL);
                sparseBooleanArray2 = this.A03.A05;
                sparseBooleanArray2.put(this.A02.A02(), true);
            }
        }
    }
}
