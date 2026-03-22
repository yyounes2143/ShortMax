package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.ox  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2801ox implements InterfaceC10702z {
    public final C2765oL A00 = new C2765oL();

    @MetaExoPlayerCustomization("Should be final")
    public abstract void A0H(int i10, long j10);

    public final int A00() {
        long A6z = A6z();
        long A7k = A7k();
        if (A6z == -9223372036854775807L || A7k == -9223372036854775807L) {
            return 0;
        }
        if (A7k == 0) {
            return 100;
        }
        return AbstractC10974a.A07((int) ((100 * A6z) / A7k), 0, 100);
    }

    public void A01() {
        AJV(false);
    }

    public final void A02() {
        A03(A7Z());
    }

    public final void A03(int i10) {
        A0H(i10, -9223372036854775807L);
    }

    public final void A04(long j10) {
        A0H(A7Z(), j10);
    }
}
