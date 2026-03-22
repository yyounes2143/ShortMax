package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YU implements InterfaceC1786Vj {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1786Vj
    public final void AHp(Throwable th2, Object obj) {
        if (obj instanceof SM) {
            C2111dL adContext = ((SM) obj).A6e();
            if (adContext != null) {
                adContext.A0Q(th2);
            }
        } else if (!(obj instanceof View)) {
        } else {
            Context context = ((View) obj).getContext();
            if (!(context instanceof C2111dL)) {
                return;
            }
            ((C2111dL) context).A0Q(th2);
        }
    }
}
