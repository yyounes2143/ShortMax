package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.iO  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2416iO extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C2415iN A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C2416iO(C2415iN c2415iN, Map map, Map map2) {
        this.A00 = c2415iN;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C2403iB c2403iB;
        C2111dL c2111dL;
        C2403iB c2403iB2;
        c2403iB = this.A00.A01;
        if (!TextUtils.isEmpty(c2403iB.A7G())) {
            HashMap hashMap = new HashMap();
            Map<String, String> extraData = this.A02;
            hashMap.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            hashMap.putAll(extraData2);
            c2111dL = this.A00.A0A;
            US A0A = c2111dL.A0A();
            c2403iB2 = this.A00.A01;
            A0A.ABT(c2403iB2.A7G(), hashMap);
        }
    }
}
