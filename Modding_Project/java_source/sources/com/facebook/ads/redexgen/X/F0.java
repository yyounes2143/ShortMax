package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class F0 implements R6 {
    public final /* synthetic */ R0 A00;
    public final /* synthetic */ C10873q A01;

    public F0(C10873q c10873q, R0 r02) {
        this.A01 = c10873q;
        this.A00 = r02;
    }

    @Override // com.facebook.ads.redexgen.X.R6
    public final boolean AAA() {
        boolean A0c;
        boolean A0d;
        if (!this.A01.A0b()) {
            A0c = this.A01.A0c();
            if (A0c) {
                return true;
            }
            A0d = this.A01.A0d();
            return A0d;
        }
        this.A01.A0a(this.A00);
        return true;
    }
}
