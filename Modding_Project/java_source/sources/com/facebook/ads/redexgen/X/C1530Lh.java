package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Lh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1530Lh {
    public static final C1530Lh A02 = new C1530Lh();
    public byte A00 = 3;
    public boolean A01 = true;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C1530Lh)) {
            return false;
        }
        C1530Lh c1530Lh = (C1530Lh) obj;
        return this.A00 == c1530Lh.A00 && this.A01 == c1530Lh.A01;
    }

    public final int hashCode() {
        return new Byte(this.A00).hashCode() + new Boolean(this.A01).hashCode();
    }
}
