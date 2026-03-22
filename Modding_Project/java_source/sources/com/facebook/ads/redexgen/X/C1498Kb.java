package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Kb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1498Kb {
    public final int A00;
    public final String A01;
    public final List<C1497Ka> A02;
    public final byte[] A03;

    public C1498Kb(int i10, String str, List<C1497Ka> list, byte[] bArr) {
        List<C1497Ka> unmodifiableList;
        this.A00 = i10;
        this.A01 = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.A02 = unmodifiableList;
        this.A03 = bArr;
    }
}
