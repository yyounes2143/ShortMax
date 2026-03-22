package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.m7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2630m7 implements J7 {
    public final long A00;
    public final AbstractC1252Am<C2747o2> A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.text.Cue> */
    public C2630m7(long j10, AbstractC1252Am<C2747o2> abstractC1252Am) {
        this.A00 = j10;
        this.A01 = abstractC1252Am;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2747o2> A7P(long j10) {
        return j10 >= this.A00 ? this.A01 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i10) {
        C3M.A07(i10 == 0);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j10) {
        return this.A00 > j10 ? 0 : -1;
    }
}
