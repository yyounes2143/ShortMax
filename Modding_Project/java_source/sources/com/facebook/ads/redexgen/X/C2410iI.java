package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2410iI implements InterfaceC1680Re {
    public final /* synthetic */ C7B A00;

    public C2410iI(C7B c7b) {
        this.A00 = c7b;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACM() {
        AtomicBoolean atomicBoolean;
        InterfaceC1556Mh interfaceC1556Mh;
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        interfaceC1556Mh = this.A00.A01;
        interfaceC1556Mh.AF4(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACN() {
        InterfaceC1556Mh interfaceC1556Mh;
        interfaceC1556Mh = this.A00.A01;
        interfaceC1556Mh.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
