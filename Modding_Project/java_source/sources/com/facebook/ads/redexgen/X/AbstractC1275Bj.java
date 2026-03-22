package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Bj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1275Bj implements InterfaceC2232fK {
    public final EnumC2224fC A00;
    public final AbstractC10461z A01;

    public AbstractC1275Bj(AbstractC10461z abstractC10461z, EnumC2224fC enumC2224fC) {
        this.A01 = abstractC10461z;
        this.A00 = enumC2224fC;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2232fK
    public void A45(Map<InterfaceC2215f2, EnumC2237fP> map, Map<SyncModifiableBundle, EnumC2224fC> map2) {
        map2.put(null, this.A00);
    }
}
