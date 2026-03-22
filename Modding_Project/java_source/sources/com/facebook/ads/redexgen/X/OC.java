package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class OC extends QT {
    public static String[] A01 = {"LeWmJ2AEMrGR8tgfwsG9m8UwM76zwmUz", "6Bm", "ck2sw", "Oj1Ntvfg6dck0NxJmQASjzaKZXVqT4Sf", "CtYf7ZmPdO", "plI1JnuA", "RZR4g54lk6KTwqItkRA6ECctcTUw", "cGd5igXf7vOVCpmuGQi5cRxrBgQCM2pW"};
    public final /* synthetic */ C10020h A00;

    public OC(C10020h c10020h) {
        this.A00 = c10020h;
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0L(C11556g c11556g, int i10) {
        int A25;
        InterfaceC1847Xu interfaceC1847Xu;
        super.A0L(c11556g, i10);
        C2291gI linearLayoutManager = this.A00.getLayoutManager();
        if (linearLayoutManager != null && (A25 = linearLayoutManager.A25()) >= 0) {
            C10020h c10020h = this.A00;
            int scrollPosition = A01[3].charAt(13);
            if (scrollPosition == 48) {
                throw new RuntimeException();
            }
            A01[5] = "JmqJ93Os7fwoNBdh";
            if (c10020h.getAdapter() == null || A25 >= this.A00.getAdapter().A0B() || (interfaceC1847Xu = (InterfaceC1847Xu) c11556g.A1F(A25)) == null) {
                return;
            }
            interfaceC1847Xu.AIV();
        }
    }
}
