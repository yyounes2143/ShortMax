package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.ps  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2843ps {
    public InterfaceC2844pt A00;

    public final void A00() {
        if (this.A00 != null) {
            this.A00.onStart();
        }
    }

    public final void A02() {
        if (this.A00 != null) {
            this.A00.onStop();
        }
    }

    public final void A03(InterfaceC2844pt interfaceC2844pt) {
        this.A00 = interfaceC2844pt;
    }
}
