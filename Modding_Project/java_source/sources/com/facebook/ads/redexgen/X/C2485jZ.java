package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
/* renamed from: com.facebook.ads.redexgen.X.jZ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2485jZ implements KW {
    public final C4I A00 = new C4I(new byte[4]);
    public final /* synthetic */ C2483jX A01;

    public C2485jZ(C2483jX c2483jX) {
        this.A01 = c2483jX;
    }

    @Override // com.facebook.ads.redexgen.X.KW
    public final void A52(C4J c4j) {
        int secondHeaderByte;
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int tableId = c4j.A0I();
        if (tableId != 0) {
            return;
        }
        int tableId2 = c4j.A0I();
        if ((tableId2 & 128) == 0) {
            return;
        }
        c4j.A0g(6);
        int A07 = c4j.A07() / 4;
        for (int i10 = 0; i10 < A07; i10++) {
            c4j.A0h(this.A00, 4);
            int programCount = this.A00.A04(16);
            this.A00.A09(3);
            if (programCount == 0) {
                this.A00.A09(13);
            } else {
                int A04 = this.A00.A04(13);
                sparseArray2 = this.A01.A0B;
                if (sparseArray2.get(A04) == null) {
                    sparseArray3 = this.A01.A0B;
                    sparseArray3.put(A04, new C2489jd(new C2484jY(this.A01, A04)));
                    C2483jX.A02(this.A01);
                }
            }
        }
        secondHeaderByte = this.A01.A09;
        if (secondHeaderByte != 2) {
            sparseArray = this.A01.A0B;
            sparseArray.remove(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KW
    public final void AA2(C4R c4r, GY gy, C1501Ke c1501Ke) {
    }
}
