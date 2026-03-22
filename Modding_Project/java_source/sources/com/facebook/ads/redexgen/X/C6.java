package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class C6 implements InterfaceC2225fD {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2225fD
    public final long A5e() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2225fD
    public final void AJK(Object obj, long j10) throws InterruptedException {
        obj.wait(j10);
    }
}
