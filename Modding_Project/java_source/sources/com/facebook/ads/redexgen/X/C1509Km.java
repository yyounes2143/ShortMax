package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Km  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1509Km {
    public final int A00;
    public final long A01;

    public C1509Km(int i10, long j10) {
        this.A00 = i10;
        this.A01 = j10;
    }

    public static C1509Km A00(InterfaceC2585lN interfaceC2585lN, C4J c4j) throws IOException {
        interfaceC2585lN.AG9(c4j.A0l(), 0, 8);
        c4j.A0f(0);
        int A0C = c4j.A0C();
        long size = c4j.A0O();
        return new C1509Km(A0C, size);
    }
}
