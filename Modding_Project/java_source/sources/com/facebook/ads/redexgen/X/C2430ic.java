package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
/* renamed from: com.facebook.ads.redexgen.X.ic  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2430ic implements InterfaceC1680Re {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C7L A01;
    public final /* synthetic */ C7L A02;
    public final /* synthetic */ TF A03;

    public C2430ic(C7L c7l, int i10, TF tf2, C7L c7l2) {
        this.A01 = c7l;
        this.A00 = i10;
        this.A03 = tf2;
        this.A02 = c7l2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACM() {
        this.A01.A0C(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1680Re
    public final void ACN() {
        MX mx;
        mx = this.A01.A00;
        mx.ADj(this.A02, V1.A00(AdErrorType.NO_FILL));
    }
}
