package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Pn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1637Pn implements Runnable {
    public final /* synthetic */ C11586j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC1637Pn(C11586j c11586j, ArrayList arrayList) {
        this.A00 = c11586j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            C1646Pw c1646Pw = (C1646Pw) it.next();
            this.A00.A0e(c1646Pw.A04, c1646Pw.A00, c1646Pw.A01, c1646Pw.A02, c1646Pw.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
