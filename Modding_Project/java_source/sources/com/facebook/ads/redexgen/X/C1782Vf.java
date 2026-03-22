package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Vf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1782Vf implements InterfaceC2849py<UE, UJ> {
    public VN A00;

    public C1782Vf(VN vn2) {
        this.A00 = vn2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2849py
    public final void A6J(C2845pu<UE, UJ> c2845pu, InterfaceC2835pk interfaceC2835pk) {
        switch (interfaceC2835pk.A9M(c2845pu)) {
            case A02:
            case A04:
                this.A00.A02(c2845pu, interfaceC2835pk);
                return;
            default:
                return;
        }
    }
}
