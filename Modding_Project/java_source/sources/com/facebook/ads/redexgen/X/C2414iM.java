package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iM  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2414iM implements S7 {
    public final /* synthetic */ C7B A00;

    public C2414iM(C7B c7b) {
        this.A00 = c7b;
    }

    private void A00(boolean z10) {
        InterfaceC1556Mh interfaceC1556Mh;
        AtomicBoolean atomicBoolean;
        InterfaceC1556Mh interfaceC1556Mh2;
        if (!z10) {
            interfaceC1556Mh = this.A00.A01;
            interfaceC1556Mh.AF7(this.A00, AdError.CACHE_ERROR);
            return;
        }
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        interfaceC1556Mh2 = this.A00.A01;
        interfaceC1556Mh2.AF4(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00(true);
    }
}
