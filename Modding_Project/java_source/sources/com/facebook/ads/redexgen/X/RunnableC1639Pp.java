package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Pp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1639Pp implements Runnable {
    public final /* synthetic */ C11586j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC1639Pp(C11586j c11586j, ArrayList arrayList) {
        this.A00 = c11586j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            AbstractC1656Qg holder = (AbstractC1656Qg) it.next();
            this.A00.A0d(holder);
        }
        this.A01.clear();
        this.A00.A01.remove(this.A01);
    }
}
