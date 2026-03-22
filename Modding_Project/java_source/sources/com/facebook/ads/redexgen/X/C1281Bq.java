package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.facebook.ads.redexgen.X.Bq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1281Bq extends BroadcastReceiver {
    public final /* synthetic */ C1286Bv A00;

    public C1281Bq(C1286Bv c1286Bv) {
        this.A00 = c1286Bv;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (!isInitialStickyBroadcast()) {
            C1286Bv.A07(this.A00);
        }
    }
}
