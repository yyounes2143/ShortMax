package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.9F  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C9F implements InterfaceC2644mM, InterfaceC2645mN {
    public static String[] A06 = {"JXRw8dEnvO1Lr4g7cFUS0dvQrSj2gCrD", "hvHNuBxl", "xmWilmV3z2eIIj1", "UUtHfwhImwRJiupXWlBcpFq10hKf2hZ3", "Gjwbiw3zcCnfnivX0C6Z4KLegMayRhyW", "PFLAFIzQgEofbdrT2htWxpP7W2gVOOgi", "405rypbMY6P", "HWuA8Rz9jBHRgd5bymvhijPSyV36G6mN"};
    public long A00;
    public long A01;
    public long A02;
    public InterfaceC2645mN A03;
    public C2648mQ[] A04 = new C2648mQ[0];
    public final InterfaceC2644mM A05;

    public C9F(InterfaceC2644mM interfaceC2644mM, boolean z10, long j10, long j11) {
        this.A05 = interfaceC2644mM;
        this.A02 = z10 ? j10 : -9223372036854775807L;
        this.A01 = j10;
        this.A00 = j11;
    }

    private C7I A00(long j10, C7I c7i) {
        long toleranceBeforeUs = AbstractC10974a.A0T(c7i.A01, 0L, j10 - this.A01);
        long A0T = AbstractC10974a.A0T(c7i.A00, 0L, this.A00 == Long.MIN_VALUE ? Long.MAX_VALUE : this.A00 - j10);
        if (toleranceBeforeUs == c7i.A01) {
            long j11 = c7i.A00;
            if (A06[6].length() != 11) {
                throw new RuntimeException();
            }
            A06[0] = "SySHx2FlEzism2SEaRZKk1Ki9OIwKCgL";
            if (A0T == j11) {
                return c7i;
            }
        }
        return new C7I(toleranceBeforeUs, A0T);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1310Cu
    /* renamed from: A01 */
    public final void ACs(InterfaceC2644mM interfaceC2644mM) {
        ((InterfaceC2645mN) C3M.A01(this.A03)).ACs(this);
    }

    public static boolean A02(long j10, InterfaceC2606lj[] interfaceC2606ljArr) {
        if (j10 != 0) {
            for (InterfaceC2606lj interfaceC2606lj : interfaceC2606ljArr) {
                if (interfaceC2606lj != null) {
                    C2796or A8u = interfaceC2606lj.A8u();
                    if (!AbstractC10522h.A0G(A8u.A0W, A8u.A0R)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1311Cv
    @MetaExoPlayerCustomization("Added in D19760981 for cancel request")
    public final void A4k(long j10) {
        this.A05.A4k(j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final boolean A54(long j10) {
        return this.A05.A54(j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final void A5s(long j10, boolean z10) {
        this.A05.A5s(j10, z10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final long A6j(long j10, C7I c7i) {
        if (j10 == this.A01) {
            return this.A01;
        }
        return this.A05.A6j(j10, A00(j10, c7i));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1311Cv
    @MetaExoPlayerCustomization("Added in D9949576 for unstall buffer")
    public final long A6y(long j10) {
        return this.A05.A6y(j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final long A70() {
        long A70 = this.A05.A70();
        if (A70 == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && A70 >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return A70;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final long A8T() {
        long A8T = this.A05.A8T();
        if (A8T != Long.MIN_VALUE) {
            long nextLoadPositionUs = this.A00;
            int i10 = (nextLoadPositionUs > Long.MIN_VALUE ? 1 : (nextLoadPositionUs == Long.MIN_VALUE ? 0 : -1));
            if (A06[0].charAt(29) != 'C') {
                throw new RuntimeException();
            }
            A06[0] = "QBPPyRyowan8CCGBQiXIHMf03VOUOCSC";
            if (i10 == 0 || A8T < this.A00) {
                return A8T;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final C2633mA A9E() {
        return this.A05.A9E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final void ABt() throws IOException {
        if (0 == 0) {
            this.A05.ABt();
            return;
        }
        throw null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2645mN
    public final void AEk(InterfaceC2644mM interfaceC2644mM) {
        if (0 != 0) {
            return;
        }
        ((InterfaceC2645mN) C3M.A01(this.A03)).AEk(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final void AGL(InterfaceC2645mN interfaceC2645mN, long j10) {
        this.A03 = interfaceC2645mN;
        this.A05.AGL(this, j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final long AGg() {
        if (A03()) {
            long childDiscontinuityUs = this.A02;
            this.A02 = -9223372036854775807L;
            long AGg = AGg();
            return AGg != -9223372036854775807L ? AGg : childDiscontinuityUs;
        }
        InterfaceC2644mM interfaceC2644mM = this.A05;
        if (A06[2].length() != 0) {
            A06[6] = "ABWUoGiNBoa";
            long AGg2 = interfaceC2644mM.AGg();
            if (AGg2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            long discontinuityUs = this.A01;
            boolean z10 = true;
            C3M.A08(AGg2 >= discontinuityUs);
            if (this.A00 != Long.MIN_VALUE) {
                long discontinuityUs2 = this.A00;
                if (AGg2 > discontinuityUs2) {
                    z10 = false;
                }
            }
            C3M.A08(z10);
            return AGg2;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final void AGm(long j10) {
        this.A05.AGm(j10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    public final long AIO(@MetaExoPlayerCustomization long j10, boolean z10) {
        C2648mQ[] c2648mQArr;
        this.A02 = -9223372036854775807L;
        boolean z11 = false;
        for (C2648mQ c2648mQ : this.A04) {
            if (c2648mQ != null) {
                c2648mQ.A00();
            }
        }
        long AIO = this.A05.AIO(j10, z10);
        if (AIO == j10 || (AIO >= this.A01 && (this.A00 == Long.MIN_VALUE || AIO <= this.A00))) {
            z11 = true;
        }
        C3M.A08(z11);
        return AIO;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2644mM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long AIP(com.facebook.ads.redexgen.X.InterfaceC2606lj[] r18, boolean[] r19, com.facebook.ads.redexgen.X.InterfaceC1307Cr[] r20, boolean[] r21, long r22) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9F.AIP(com.facebook.ads.redexgen.X.lj[], boolean[], com.facebook.ads.redexgen.X.Cr[], boolean[], long):long");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1311Cv
    @MetaExoPlayerCustomization("Added in D19875605 for error load during pause")
    public final void AIs(boolean z10) {
        this.A05.AIs(z10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1311Cv
    @MetaExoPlayerCustomization("Added in D13267633 for lower priority during pause")
    public final void AJq(byte b10) {
        this.A05.AJq(b10);
    }
}
