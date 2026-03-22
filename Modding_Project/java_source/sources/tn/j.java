package tn;

import androidx.annotation.Nullable;
import ao.o0;
import cn.b0;
import java.io.IOException;
import tn.f;
import zm.u;
/* compiled from: ContainerMediaChunk.java */
/* loaded from: classes8.dex */
public class j extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f67501o;

    /* renamed from: p  reason: collision with root package name */
    private final long f67502p;

    /* renamed from: q  reason: collision with root package name */
    private final f f67503q;

    /* renamed from: r  reason: collision with root package name */
    private long f67504r;

    /* renamed from: s  reason: collision with root package name */
    private volatile boolean f67505s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f67506t;

    public j(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, long j10, long j11, long j12, long j13, long j14, int i11, long j15, f fVar) {
        super(dVar, gVar, aVar, i10, obj, j10, j11, j12, j13, j14);
        this.f67501o = i11;
        this.f67502p = j15;
        this.f67503q = fVar;
    }

    private void k(c cVar) {
        if (!u.q(this.f67463d.f55173n)) {
            return;
        }
        io.bidmachine.media3.common.a aVar = this.f67463d;
        int i10 = aVar.L;
        if ((i10 > 1 || aVar.M > 1) && i10 != -1 && aVar.M != -1) {
            o0 track = cVar.track(0, 4);
            io.bidmachine.media3.common.a aVar2 = this.f67463d;
            int i11 = aVar2.M * aVar2.L;
            long j10 = (this.f67467h - this.f67466g) / i11;
            for (int i12 = 1; i12 < i11; i12++) {
                track.a(new b0(), 0);
                track.c(i12 * j10, 0, 0, 0, null);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void cancelLoad() {
        this.f67505s = true;
    }

    @Override // tn.m
    public long e() {
        return this.f67514j + this.f67501o;
    }

    @Override // tn.m
    public boolean f() {
        return this.f67506t;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void load() throws IOException {
        long j10;
        long j11;
        c h10 = h();
        if (this.f67504r == 0) {
            h10.b(this.f67502p);
            f fVar = this.f67503q;
            f.b j12 = j(h10);
            long j13 = this.f67430k;
            if (j13 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                j10 = j13 - this.f67502p;
            }
            long j14 = this.f67431l;
            if (j14 == -9223372036854775807L) {
                j11 = -9223372036854775807L;
            } else {
                j11 = j14 - this.f67502p;
            }
            fVar.e(j12, j10, j11);
        }
        try {
            en.g e10 = this.f67461b.e(this.f67504r);
            en.n nVar = this.f67468i;
            ao.i iVar = new ao.i(nVar, e10.f51384g, nVar.b(e10));
            while (!this.f67505s && this.f67503q.a(iVar)) {
            }
            k(h10);
            this.f67504r = iVar.getPosition() - this.f67461b.f51384g;
            l();
            en.f.a(this.f67468i);
            this.f67506t = !this.f67505s;
        } catch (Throwable th2) {
            l();
            en.f.a(this.f67468i);
            throw th2;
        }
    }

    protected void l() {
    }

    protected f.b j(c cVar) {
        return cVar;
    }
}
