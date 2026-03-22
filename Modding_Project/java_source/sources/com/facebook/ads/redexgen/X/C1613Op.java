package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Op  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1613Op extends AbstractRunnableC1796Vt {
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterface$OnClickListenerC1829Xc A01;

    public C1613Op(DialogInterface$OnClickListenerC1829Xc dialogInterface$OnClickListenerC1829Xc, DialogInterface dialogInterface) {
        this.A01 = dialogInterface$OnClickListenerC1829Xc;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        InterfaceC2190ed interfaceC2190ed;
        InterfaceC2190ed interfaceC2190ed2;
        C2085cu c2085cu;
        Map<? extends String, ? extends String> A02;
        interfaceC2190ed = this.A01.A01.A02;
        if (interfaceC2190ed != null) {
            interfaceC2190ed2 = this.A01.A01.A02;
            c2085cu = this.A01.A01.A00;
            String A03 = VZ.A03(c2085cu);
            C2204er c2204er = new C2204er();
            A02 = this.A01.A01.A02(this.A01.A00.getText().toString());
            interfaceC2190ed2.AGD(A03, c2204er.A05(A02).A08());
        }
        this.A00.cancel();
    }
}
