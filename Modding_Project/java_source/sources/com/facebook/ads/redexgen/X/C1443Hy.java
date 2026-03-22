package com.facebook.ads.redexgen.X;

import android.os.Parcel;
/* renamed from: com.facebook.ads.redexgen.X.Hy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1443Hy {
    public final int A00;
    public final long A01;

    public C1443Hy(int i10, long j10) {
        this.A00 = i10;
        this.A01 = j10;
    }

    public /* synthetic */ C1443Hy(int i10, long j10, C1442Hx c1442Hx) {
        this(i10, j10);
    }

    public static C1443Hy A00(Parcel parcel) {
        return new C1443Hy(parcel.readInt(), parcel.readLong());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}
