package tn;

import androidx.annotation.Nullable;
import ao.o0;
import java.io.IOException;
/* compiled from: SingleSampleMediaChunk.java */
@Deprecated
/* loaded from: classes8.dex */
public final class o extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f67516o;

    /* renamed from: p  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f67517p;

    /* renamed from: q  reason: collision with root package name */
    private long f67518q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f67519r;

    public o(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, long j10, long j11, long j12, int i11, io.bidmachine.media3.common.a aVar2) {
        super(dVar, gVar, aVar, i10, obj, j10, j11, -9223372036854775807L, -9223372036854775807L, j12);
        this.f67516o = i11;
        this.f67517p = aVar2;
    }

    @Override // tn.m
    public boolean f() {
        return this.f67519r;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void load() throws IOException {
        c h10 = h();
        h10.b(0L);
        o0 track = h10.track(0, this.f67516o);
        track.g(this.f67517p);
        try {
            long b10 = this.f67468i.b(this.f67461b.e(this.f67518q));
            if (b10 != -1) {
                b10 += this.f67518q;
            }
            ao.i iVar = new ao.i(this.f67468i, this.f67518q, b10);
            for (int i10 = 0; i10 != -1; i10 = track.b(iVar, Integer.MAX_VALUE, true)) {
                this.f67518q += i10;
            }
            track.c(this.f67466g, 1, (int) this.f67518q, 0, null);
            en.f.a(this.f67468i);
            this.f67519r = true;
        } catch (Throwable th2) {
            en.f.a(this.f67468i);
            throw th2;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void cancelLoad() {
    }
}
