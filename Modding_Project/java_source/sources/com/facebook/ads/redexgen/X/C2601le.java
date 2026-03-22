package com.facebook.ads.redexgen.X;

import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.le  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2601le implements InterfaceC1345Ed {
    public final int A00;

    public C2601le() {
        this(-1);
    }

    public C2601le(int i10) {
        this.A00 = i10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1345Ed
    public final int A8R(int i10) {
        if (this.A00 == -1) {
            if (i10 == 7) {
                return 6;
            }
            return 3;
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1345Ed
    public final long A8m(C1344Ec c1344Ec) {
        IOException iOException = c1344Ec.A03;
        if ((iOException instanceof C10532i) || (iOException instanceof FileNotFoundException) || (iOException instanceof C12219h) || (iOException instanceof C1355En) || C11224z.A00(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((c1344Ec.A00 - 1) * 1000, 5000);
    }
}
