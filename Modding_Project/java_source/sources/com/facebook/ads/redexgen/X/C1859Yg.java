package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* renamed from: com.facebook.ads.redexgen.X.Yg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1859Yg extends AbstractRunnableC1796Vt {
    public final /* synthetic */ C2085cu A00;

    public C1859Yg(C2085cu c2085cu) {
        this.A00 = c2085cu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
