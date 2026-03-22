package io.bidmachine.media3.exoplayer.hls;

import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.io.IOException;
import sn.s;
/* compiled from: HlsSampleStream.java */
/* loaded from: classes8.dex */
final class g implements s {

    /* renamed from: a  reason: collision with root package name */
    private final int f56083a;

    /* renamed from: b  reason: collision with root package name */
    private final k f56084b;

    /* renamed from: c  reason: collision with root package name */
    private int f56085c = -1;

    public g(k kVar, int i10) {
        this.f56084b = kVar;
        this.f56083a = i10;
    }

    private boolean b() {
        int i10 = this.f56085c;
        if (i10 != -1 && i10 != -3 && i10 != -2) {
            return true;
        }
        return false;
    }

    public void a() {
        boolean z10;
        if (this.f56085c == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f56085c = this.f56084b.o(this.f56083a);
    }

    @Override // sn.s
    public int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (this.f56085c == -3) {
            decoderInputBuffer.a(4);
            return -4;
        } else if (!b()) {
            return -3;
        } else {
            return this.f56084b.W(this.f56085c, c0Var, decoderInputBuffer, i10);
        }
    }

    public void d() {
        if (this.f56085c != -1) {
            this.f56084b.h0(this.f56083a);
            this.f56085c = -1;
        }
    }

    @Override // sn.s
    public boolean isReady() {
        if (this.f56085c != -3 && (!b() || !this.f56084b.G(this.f56085c))) {
            return false;
        }
        return true;
    }

    @Override // sn.s
    public void maybeThrowError() throws IOException {
        int i10 = this.f56085c;
        if (i10 != -2) {
            if (i10 == -1) {
                this.f56084b.L();
                return;
            } else if (i10 != -3) {
                this.f56084b.M(i10);
                return;
            } else {
                return;
            }
        }
        throw new SampleQueueMappingException(this.f56084b.getTrackGroups().b(this.f56083a).a(0).f55174o);
    }

    @Override // sn.s
    public int skipData(long j10) {
        if (b()) {
            return this.f56084b.g0(this.f56085c, j10);
        }
        return 0;
    }
}
