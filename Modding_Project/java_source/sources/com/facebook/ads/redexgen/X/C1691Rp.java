package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Rp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1691Rp {
    public final long A00;
    public final EnumC1690Ro A01;
    public final String A02;
    public final boolean A03;

    public C1691Rp(String str, boolean z10, EnumC1690Ro enumC1690Ro) {
        this(str, z10, enumC1690Ro, System.currentTimeMillis());
    }

    public C1691Rp(String str, boolean z10, EnumC1690Ro enumC1690Ro, long j10) {
        this.A02 = str;
        this.A03 = z10;
        this.A01 = enumC1690Ro;
        this.A00 = j10;
    }

    public static C1691Rp A00() {
        return new C1691Rp("", true, EnumC1690Ro.A05, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC1690Ro A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
