package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2412iK implements InterfaceC1680Re {
    public final /* synthetic */ C7B A00;
    public final /* synthetic */ boolean A01;

    public C2412iK(C7B c7b, boolean z10) {
        this.A00 = c7b;
        this.A01 = z10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACM() {
        C2111dL c2111dL;
        AtomicBoolean atomicBoolean;
        InterfaceC1556Mh interfaceC1556Mh;
        C2111dL c2111dL2;
        AbstractC1562Mo abstractC1562Mo;
        c2111dL = this.A00.A04;
        if (!U7.A1o(c2111dL) || !this.A01) {
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            interfaceC1556Mh = this.A00.A01;
            interfaceC1556Mh.AF4(this.A00);
            return;
        }
        C7B c7b = this.A00;
        c2111dL2 = this.A00.A04;
        abstractC1562Mo = this.A00.A03;
        c7b.A06 = AbstractC2023bu.A01(c2111dL2, (AnonymousClass73) abstractC1562Mo, 0, new C2413iL(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACN() {
        InterfaceC1556Mh interfaceC1556Mh;
        interfaceC1556Mh = this.A00.A01;
        interfaceC1556Mh.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
