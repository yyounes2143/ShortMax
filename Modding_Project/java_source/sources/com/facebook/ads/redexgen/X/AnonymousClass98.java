package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.98  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass98 extends AbstractC2650mS implements InterfaceC1296Cg {
    public long A00;
    public C5H A01;
    public InterfaceC2472jM<InterfaceExecutorC1367Ez> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C2Q A07;
    public final C2787oi A08;
    public final InterfaceC11194w A09;
    public final C9U A0A;
    public final InterfaceC1290Ca A0B;
    public final InterfaceC1345Ed A0C;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.jM != com.google.common.base.Supplier<com.facebook.ads.androidx.media3.exoplayer.util.ReleasableExecutor> */
    @MetaExoPlayerCustomization("Allow for passing a new drmSessionManager")
    public AnonymousClass98(C2787oi c2787oi, InterfaceC11194w interfaceC11194w, InterfaceC1290Ca interfaceC1290Ca, C9U c9u, InterfaceC1345Ed interfaceC1345Ed, int i10, InterfaceC2472jM<InterfaceExecutorC1367Ez> interfaceC2472jM) {
        this.A07 = (C2Q) C3M.A01(c2787oi.A03);
        this.A08 = c2787oi;
        this.A09 = interfaceC11194w;
        this.A0B = interfaceC1290Ca;
        this.A0A = c9u == null ? C9U.A00 : c9u;
        this.A0C = interfaceC1345Ed;
        this.A06 = i10;
        this.A04 = true;
        this.A00 = -9223372036854775807L;
        this.A02 = interfaceC2472jM;
    }

    private void A00() {
        final Timeline anonymousClass97 = new AnonymousClass97(this.A00, this.A05, false, this.A03, null, this.A08);
        if (this.A04) {
            Timeline timeline = new C9C(anonymousClass97) { // from class: com.facebook.ads.redexgen.X.12
                @Override // com.facebook.ads.redexgen.X.C9C, com.facebook.ads.androidx.media3.common.Timeline
                public final C2767oN A0I(int i10, C2767oN c2767oN, boolean z10) {
                    super.A0I(i10, c2767oN, z10);
                    c2767oN.A05 = true;
                    return c2767oN;
                }

                @Override // com.facebook.ads.redexgen.X.C9C, com.facebook.ads.androidx.media3.common.Timeline
                public final C2765oL A0L(int i10, C2765oL c2765oL, long j10) {
                    super.A0L(i10, c2765oL, j10);
                    c2765oL.A0F = true;
                    return c2765oL;
                }
            };
            anonymousClass97 = timeline;
        }
        A05(anonymousClass97);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2650mS
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2650mS
    public final void A0A(C5H c5h) {
        this.A01 = c5h;
        this.A0A.AGK();
        this.A0A.AIu((Looper) C3M.A01(Looper.myLooper()), A00());
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.CL
    @MetaExoPlayerCustomization("PlayerId needs to be set")
    public final InterfaceC2644mM A5O(C2643mL c2643mL, EO eo2, long j10) {
        InterfaceExecutorC1367Ez interfaceExecutorC1367Ez;
        InterfaceC2731nl A5A = this.A09.A5A();
        if (this.A01 != null) {
            A5A.A3v(this.A01);
        }
        Uri uri = this.A07.A00;
        InterfaceC1291Cb A5P = this.A0B.A5P(C11877m.A03);
        C9U c9u = this.A0A;
        C9P A01 = A01(c2643mL);
        InterfaceC1345Ed interfaceC1345Ed = this.A0C;
        CW A02 = A02(c2643mL);
        String str = this.A07.A04;
        int i10 = this.A06;
        if (this.A02 != null) {
            interfaceExecutorC1367Ez = this.A02.get();
        } else {
            interfaceExecutorC1367Ez = null;
        }
        return new C9A(uri, A5A, A5P, c9u, A01, interfaceC1345Ed, A02, this, eo2, str, i10, interfaceExecutorC1367Ez);
    }

    @Override // com.facebook.ads.redexgen.X.CL
    public final void ABu() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1296Cg
    public final void AFH(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.A00;
        }
        if (!this.A04 && this.A00 == j10 && this.A05 == z10 && this.A03 == z11) {
            return;
        }
        this.A00 = j10;
        this.A05 = z10;
        this.A03 = z11;
        this.A04 = false;
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.CL
    public final void AH0(InterfaceC2644mM interfaceC2644mM) {
        ((C9A) interfaceC2644mM).A0a();
    }
}
