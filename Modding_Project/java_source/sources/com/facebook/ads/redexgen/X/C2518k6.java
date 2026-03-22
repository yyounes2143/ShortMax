package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.k6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2518k6 implements J7 {
    public final C1481Jk A00;
    public final Map<String, C1488Jr> A01;
    public final Map<String, String> A02;
    public final Map<String, C1482Jl> A03;
    public final long[] A04;

    public C2518k6(C1481Jk c1481Jk, Map<String, C1488Jr> map, Map<String, C1482Jl> map2, Map<String, String> imageMap) {
        this.A00 = c1481Jk;
        this.A03 = map2;
        this.A02 = imageMap;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A04 = c1481Jk.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2747o2> A7P(long j10) {
        return this.A00.A0E(j10, this.A01, this.A03, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i10) {
        return this.A04[i10];
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return this.A04.length;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j10) {
        int A0K = AbstractC10974a.A0K(this.A04, j10, false, false);
        int index = this.A04.length;
        if (A0K < index) {
            return A0K;
        }
        return -1;
    }
}
