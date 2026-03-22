package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Tv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1747Tv implements InterfaceC1893Zo {
    public final /* synthetic */ TD A00;

    public C1747Tv(TD td2) {
        this.A00 = td2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1893Zo
    public final void ADT(C1892Zn c1892Zn) {
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        InterfaceC1762Uk interfaceC1762Uk;
        InterfaceC1762Uk interfaceC1762Uk2;
        atomicBoolean = this.A00.A0D;
        atomicBoolean.set(c1892Zn.A00() != null);
        atomicBoolean2 = this.A00.A0E;
        if (atomicBoolean2.get()) {
            interfaceC1762Uk = this.A00.A02;
            if (interfaceC1762Uk != null) {
                interfaceC1762Uk2 = this.A00.A02;
                interfaceC1762Uk2.AEW(c1892Zn.A00() != null);
            }
        }
    }
}
