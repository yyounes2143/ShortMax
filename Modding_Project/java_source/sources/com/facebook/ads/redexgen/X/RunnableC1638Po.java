package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Po  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1638Po implements Runnable {
    public final /* synthetic */ C11586j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC1638Po(C11586j c11586j, ArrayList arrayList) {
        this.A00 = c11586j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            C1645Pv change = (C1645Pv) it.next();
            this.A00.A0c(change);
        }
        this.A01.clear();
        this.A00.A03.remove(this.A01);
    }
}
