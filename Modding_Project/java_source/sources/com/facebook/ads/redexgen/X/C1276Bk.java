package com.facebook.ads.redexgen.X;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Bk  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1276Bk implements InterfaceC2191ee {
    public final /* synthetic */ C10381r A00;
    public final /* synthetic */ CountDownLatch A01;
    public final /* synthetic */ AtomicReference A02;
    public final /* synthetic */ AtomicReference A03;

    public C1276Bk(C10381r c10381r, AtomicReference atomicReference, AtomicReference atomicReference2, CountDownLatch countDownLatch) {
        this.A00 = c10381r;
        this.A03 = atomicReference;
        this.A02 = atomicReference2;
        this.A01 = countDownLatch;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191ee
    public final void ACo(InterfaceC2189ec interfaceC2189ec) {
        C10381r.A06(interfaceC2189ec.A6v(), this.A03, this.A02);
        this.A01.countDown();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191ee
    public final void ADC(Exception exc) {
        this.A02.set(exc);
        this.A01.countDown();
    }
}
