package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: assets/audience_network.dex */
public class CW {
    public final int A00;
    public final C2643mL A01;
    public final long A02;
    public final CopyOnWriteArrayList<CV> A03;

    public CW() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public CW(CopyOnWriteArrayList<CV> copyOnWriteArrayList, int i10, C2643mL c2643mL, long j10) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i10;
        this.A01 = c2643mL;
        this.A02 = j10;
    }

    private long A00(long j10) {
        long A0P = AbstractC10974a.A0P(j10);
        if (A0P == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long mediaTimeMs = this.A02;
        return mediaTimeMs + A0P;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    private final void A01(final CE ce2, final CG cg2, final int i10) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV next = it.next();
            final CX cx = next.A01;
            AbstractC10974a.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.CS
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final CW A02(int i10, C2643mL c2643mL, long j10) {
        return new CW(this.A03, i10, c2643mL, j10);
    }

    public final void A03(int i10, C2796or c2796or, int i11, Object obj, long j10) {
        A0C(new CG(1, i10, c2796or, i11, obj, A00(j10), -9223372036854775807L));
    }

    public final void A04(Handler handler, CX cx) {
        C3M.A01(handler);
        C3M.A01(cx);
        this.A03.add(new CV(handler, cx));
    }

    public final void A05(CE ce2, int i10, int i11, C2796or c2796or, int i12, Object obj, long j10, long j11) {
        A09(ce2, new CG(i10, i11, c2796or, i12, obj, A00(j10), A00(j11)));
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    public final void A06(CE ce2, int i10, int i11, C2796or c2796or, int i12, Object obj, long j10, long j11, int i13) {
        A01(ce2, new CG(i10, i11, c2796or, i12, obj, A00(j10), A00(j11)), i13);
    }

    public final void A07(CE ce2, int i10, int i11, C2796or c2796or, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
        A0A(ce2, new CG(i10, i11, c2796or, i12, obj, A00(j10), A00(j11)), iOException, z10);
    }

    public final void A08(@MetaExoPlayerCustomization CE ce2, @MetaExoPlayerCustomization int i10, int i11, C2796or c2796or, int i12, Object obj, long j10, long j11, Object obj2, Object obj3) {
        A0B(ce2, new CG(i10, i11, c2796or, i12, obj, A00(j10), A00(j11)), obj2, obj3);
    }

    public final void A09(final CE ce2, final CG cg2) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV next = it.next();
            final CX listener = next.A01;
            AbstractC10974a.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.CT
                @Override // java.lang.Runnable
                public final void run() {
                    CW.this.A0E(listener, ce2, cg2);
                }
            });
        }
    }

    public final void A0A(final CE ce2, final CG cg2, final IOException iOException, final boolean z10) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV next = it.next();
            final CX cx = next.A01;
            AbstractC10974a.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.CO
                @Override // java.lang.Runnable
                public final void run() {
                    CW.this.A0F(cx, ce2, cg2, iOException, z10);
                }
            });
        }
    }

    public final void A0B(@MetaExoPlayerCustomization final CE ce2, @MetaExoPlayerCustomization final CG cg2, final Object obj, final Object obj2) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV next = it.next();
            final CX cx = next.A01;
            AbstractC10974a.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.CP
                @Override // java.lang.Runnable
                public final void run() {
                    CW.this.A0G(cx, ce2, cg2, obj, obj2);
                }
            });
        }
    }

    public final void A0C(final CG cg2) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV next = it.next();
            final CX listener = next.A01;
            AbstractC10974a.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.CQ
                @Override // java.lang.Runnable
                public final void run() {
                    CW.this.A0H(listener, cg2);
                }
            });
        }
    }

    public final void A0D(CX cx) {
        Iterator<CV> it = this.A03.iterator();
        while (it.hasNext()) {
            CV listenerAndHandler = it.next();
            if (listenerAndHandler.A01 == cx) {
                this.A03.remove(listenerAndHandler);
            }
        }
    }

    public final /* synthetic */ void A0E(CX cx, CE ce2, CG cg2) {
        cx.ADw(this.A00, this.A01, ce2, cg2);
    }

    public final /* synthetic */ void A0F(CX cx, CE ce2, CG cg2, IOException iOException, boolean z10) {
        cx.AE1(this.A00, this.A01, ce2, cg2, iOException, z10);
    }

    public final /* synthetic */ void A0G(CX cx, CE ce2, CG cg2, Object obj, Object obj2) {
        cx.ADy(this.A00, this.A01, ce2, cg2, obj, obj2);
    }

    public final /* synthetic */ void A0H(CX cx, CG cg2) {
        cx.AD6(this.A00, this.A01, cg2);
    }
}
