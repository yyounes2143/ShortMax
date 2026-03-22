package com.facebook.ads.redexgen.X;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.da  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2126da extends ContentObserver {
    public final C1318Dc A00;

    public C2126da(Handler handler, C1318Dc c1318Dc) {
        super(handler);
        this.A00 = c1318Dc;
    }

    @Override // android.database.ContentObserver
    public final boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.A00.A0f();
    }
}
