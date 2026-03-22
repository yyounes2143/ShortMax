package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: assets/audience_network.dex */
public class SA implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ SF A01;

    public SA(SF sf2, SB sb2) {
        this.A01 = sf2;
        new Handler(Looper.getMainLooper()).post(new C2136dk(this, sf2, sb2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00 */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(SB sb2) {
        SQ sq2;
        SQ sq3;
        long currentTimeMillis = System.currentTimeMillis();
        sq2 = this.A01.A04;
        C2170eJ A06 = C2170eJ.A06(sq2.A02());
        Uri A00 = WQ.A00(sb2.A08);
        long j10 = sb2.A00;
        if (j10 == -1) {
            sq3 = this.A01.A04;
            j10 = U7.A0S(sq3);
        }
        A06.A0I(A00, new C2135dj(this, sb2, j10, currentTimeMillis), j10);
    }
}
