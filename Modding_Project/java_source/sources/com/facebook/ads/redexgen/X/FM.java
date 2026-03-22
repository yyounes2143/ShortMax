package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
/* loaded from: assets/audience_network.dex */
public class FM implements InterfaceC2070cf {
    public final /* synthetic */ YY A00;
    public final /* synthetic */ FL A01;
    public final /* synthetic */ C2090cz A02;

    public FM(FL fl2, C2090cz c2090cz, YY yy) {
        this.A01 = fl2;
        this.A02 = c2090cz;
        this.A00 = yy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2070cf
    public final void AHo() {
        InterfaceC1841Xo A05;
        Intent intent;
        InterfaceC1841Xo interfaceC1841Xo;
        Intent intent2;
        Bundle bundle;
        this.A01.A09();
        FL fl2 = this.A01;
        A05 = this.A01.A05(this.A02, this.A00);
        fl2.A03 = A05;
        intent = this.A01.A01;
        if (intent != null && this.A01.A00 != null) {
            interfaceC1841Xo = this.A01.A03;
            intent2 = this.A01.A01;
            bundle = this.A01.A02;
            interfaceC1841Xo.AAl(intent2, bundle, this.A01.A00);
        }
    }
}
