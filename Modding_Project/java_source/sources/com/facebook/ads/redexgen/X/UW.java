package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public class UW implements InterfaceC2123dX {
    public final /* synthetic */ TD A00;

    public UW(TD td2) {
        this.A00 = td2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2123dX
    public final void AFj() {
        AtomicBoolean atomicBoolean;
        InterfaceC1762Uk interfaceC1762Uk;
        InterfaceC1762Uk interfaceC1762Uk2;
        AtomicBoolean atomicBoolean2;
        atomicBoolean = this.A00.A0E;
        atomicBoolean.set(true);
        interfaceC1762Uk = this.A00.A02;
        if (interfaceC1762Uk != null) {
            interfaceC1762Uk2 = this.A00.A02;
            atomicBoolean2 = this.A00.A0D;
            interfaceC1762Uk2.AEW(atomicBoolean2.get());
        }
    }
}
