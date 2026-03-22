package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Bi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1274Bi implements InterfaceC2232fK {
    public final By A00;
    public final EnumC2237fP A01;

    public AbstractC1274Bi(By by, EnumC2237fP enumC2237fP) {
        this.A00 = by;
        this.A01 = enumC2237fP;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2232fK
    public void A45(Map<InterfaceC2215f2, EnumC2237fP> map, Map<SyncModifiableBundle, EnumC2224fC> map2) {
        map.put(this.A00, this.A01);
    }
}
