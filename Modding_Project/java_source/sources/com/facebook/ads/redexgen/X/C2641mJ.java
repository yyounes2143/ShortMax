package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.mJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2641mJ implements InterfaceC1307Cr, InterfaceC1308Cs {
    public final int A00;
    public final /* synthetic */ C9A A01;

    public C2641mJ(C9A c9a, int i10) {
        this.A01 = c9a;
        this.A00 = i10;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1308Cs
    @MetaExoPlayerCustomization("Added in D21840558 for FBVP")
    public final long A81() {
        return C9A.A0W(this.A01)[this.A00].A0S();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Cr
    public final boolean AAV() {
        return this.A01.A0f(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Cr
    public final void ABs() throws IOException {
        this.A01.A0d(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Cr
    public final int AGf(C6N c6n, C2718nY c2718nY, int i10) {
        return this.A01.A0Y(this.A00, c6n, c2718nY, i10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Cr
    public final int AJI(long j10) {
        return this.A01.A0X(this.A00, j10);
    }
}
