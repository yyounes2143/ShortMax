package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.Fn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1381Fn {
    public final Handler A00;
    public final InterfaceC1382Fo A01;

    public C1381Fn(Handler handler, InterfaceC1382Fo interfaceC1382Fo) {
        this.A00 = interfaceC1382Fo != null ? (Handler) C3M.A01(handler) : null;
        this.A01 = interfaceC1382Fo;
    }

    public final void A00(final int i10, final long j10) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fj
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A02(i10, j10);
                }
            });
        }
    }

    public final void A01(final int i10, final long j10) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fa
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A03(i10, j10);
                }
            });
        }
    }

    public final /* synthetic */ void A02(int i10, long j10) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).ACr(i10, j10);
    }

    public final /* synthetic */ void A03(int i10, long j10) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AD7(i10, j10);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A04(int i10, C2796or c2796or) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC1380Fm(this, i10, c2796or));
        }
    }

    public final void A05(final C2796or c2796or, final C11325j c11325j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fg
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A06(c2796or, c11325j);
                }
            });
        }
    }

    public final /* synthetic */ void A06(C2796or c2796or, C11325j c11325j) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFk(c2796or);
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFl(c2796or, c11325j);
    }

    public final void A07(final C2749o4 c2749o4) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fi
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A08(c2749o4);
                }
            });
        }
    }

    public final /* synthetic */ void A08(C2749o4 c2749o4) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFr(c2749o4);
    }

    public final void A09(final C11295g c11295g) {
        c11295g.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fk
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A0B(c11295g);
                }
            });
        }
    }

    public final void A0A(final C11295g c11295g) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fe
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A0C(c11295g);
                }
            });
        }
    }

    public final /* synthetic */ void A0B(C11295g c11295g) {
        c11295g.A02();
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFe(c11295g);
    }

    public final /* synthetic */ void A0C(C11295g c11295g) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFf(c11295g);
    }

    public final void A0D(final Object obj) {
        if (this.A00 != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Ff
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A0E(obj, elapsedRealtime);
                }
            });
        }
    }

    public final /* synthetic */ void A0E(Object obj, long j10) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AEx(obj, j10);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fh
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j10, final long j11) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fd
                @Override // java.lang.Runnable
                public final void run() {
                    C1381Fn.this.A0H(str, j10, j11);
                }
            });
        }
    }

    public final /* synthetic */ void A0H(String str, long j10, long j11) {
        ((InterfaceC1382Fo) AbstractC10974a.A0f(this.A01)).AFd(str, j10, j11);
    }
}
