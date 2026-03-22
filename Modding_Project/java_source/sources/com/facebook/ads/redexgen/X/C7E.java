package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.7E  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C7E extends AbstractC2362hU {
    public final /* synthetic */ C7B A00;
    public final /* synthetic */ AbstractC2402iA A01;
    public final /* synthetic */ AnonymousClass73 A02;
    public final /* synthetic */ boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7E(C7B c7b, boolean z10, boolean z11, AnonymousClass73 anonymousClass73, AbstractC2402iA abstractC2402iA) {
        super(z10);
        this.A00 = c7b;
        this.A03 = z11;
        this.A02 = anonymousClass73;
        this.A01 = abstractC2402iA;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2362hU
    public final void A00() {
        InterfaceC1556Mh interfaceC1556Mh;
        interfaceC1556Mh = this.A00.A01;
        interfaceC1556Mh.AF7(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2362hU
    public final void A01(boolean z10) {
        C2111dL c2111dL;
        EnumC1779Vb enumC1779Vb;
        AtomicBoolean atomicBoolean;
        InterfaceC1556Mh interfaceC1556Mh;
        C2111dL c2111dL2;
        C2111dL c2111dL3;
        c2111dL = this.A00.A04;
        if (!U7.A1o(c2111dL) || !this.A03) {
            enumC1779Vb = this.A00.A05;
            if (enumC1779Vb == EnumC1779Vb.A0I) {
                c2111dL2 = this.A00.A04;
                c2111dL2.A0F().ADn();
            }
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            interfaceC1556Mh = this.A00.A01;
            interfaceC1556Mh.AF4(this.A01);
            return;
        }
        C7B c7b = this.A00;
        c2111dL3 = this.A00.A04;
        c7b.A06 = AbstractC2023bu.A01(c2111dL3, this.A02, 0, new C2411iJ(this));
    }
}
