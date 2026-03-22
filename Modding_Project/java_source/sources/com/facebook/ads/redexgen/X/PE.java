package com.facebook.ads.redexgen.X;

import android.database.DataSetObserver;
/* loaded from: assets/audience_network.dex */
public class PE extends DataSetObserver {
    public final /* synthetic */ PH A00;

    public PE(PH ph2) {
        this.A00 = ph2;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.A00.A0e();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.A00.A0e();
    }
}
