package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.62  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class AnonymousClass62 extends DV {
    public final /* synthetic */ C1548Lz A00;

    public AnonymousClass62(C1548Lz c1548Lz) {
        this.A00 = c1548Lz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new Y4(this));
    }
}
