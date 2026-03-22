package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.2y  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10692y extends DG {
    public final /* synthetic */ D4 A00;

    public C10692y(D4 d42) {
        this.A00 = d42;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(DH dh2) {
        E1 e12;
        Handler handler;
        e12 = this.A00.A01;
        if (e12 == null || dh2.A00().getAction() != 0) {
            return;
        }
        handler = this.A00.A04;
        handler.removeCallbacksAndMessages(null);
        this.A00.A07(new C2140dp(this));
    }
}
