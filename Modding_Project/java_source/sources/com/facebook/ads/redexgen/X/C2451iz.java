package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;
/* renamed from: com.facebook.ads.redexgen.X.iz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2451iz implements InterfaceC11164t {
    public InterfaceC1536Ln A02;
    public long A01 = 5242880;
    public int A00 = CacheDataSink.DEFAULT_BUFFER_SIZE;

    public final C2451iz A00(InterfaceC1536Ln interfaceC1536Ln) {
        this.A02 = interfaceC1536Ln;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC11164t
    public final C2450iy A59() {
        return new C2450iy((InterfaceC1536Ln) C3M.A01(this.A02), this.A01, this.A00);
    }
}
