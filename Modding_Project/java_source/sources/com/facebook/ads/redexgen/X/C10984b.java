package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.4b  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10984b extends DV {
    public final /* synthetic */ C4Z A00;

    public C10984b(C4Z c4z) {
        this.A00 = c4z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC2045cG(this));
    }
}
