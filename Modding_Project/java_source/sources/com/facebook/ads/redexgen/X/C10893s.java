package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.3s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10893s extends DV {
    public final /* synthetic */ C10883r A00;

    public C10893s(C10883r c10883r) {
        this.A00 = c10883r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC2067cc(this));
    }
}
