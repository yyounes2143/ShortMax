package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.r;
import zm.q;
/* compiled from: ExternallyLoadedMediaSource.java */
/* loaded from: classes8.dex */
public final class l extends io.bidmachine.media3.exoplayer.source.a {

    /* renamed from: h  reason: collision with root package name */
    private final j f56955h;

    /* renamed from: i  reason: collision with root package name */
    private final long f56956i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private zm.q f56957j;

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized zm.q a() {
        return this.f56957j;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized void d(zm.q qVar) {
        this.f56957j = qVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public q f(r.b bVar, wn.b bVar2, long j10) {
        zm.q a10 = a();
        cn.a.e(a10.f71992b);
        cn.a.f(a10.f71992b.f72085b, "Externally loaded mediaItems require a MIME type.");
        q.h hVar = a10.f71992b;
        return new k(hVar.f72084a, hVar.f72085b, this.f56955h);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        ((k) qVar).h();
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void y(@Nullable en.o oVar) {
        z(new sn.u(this.f56956i, true, false, false, null, a()));
    }

    private l(zm.q qVar, long j10, j jVar) {
        this.f56957j = qVar;
        this.f56956i = j10;
        this.f56955h = jVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void A() {
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }

    /* compiled from: ExternallyLoadedMediaSource.java */
    /* loaded from: classes8.dex */
    public static final class b implements r.a {

        /* renamed from: c  reason: collision with root package name */
        private final long f56958c;

        /* renamed from: d  reason: collision with root package name */
        private final j f56959d;

        public b(long j10, j jVar) {
            this.f56958c = j10;
            this.f56959d = jVar;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: h */
        public l d(zm.q qVar) {
            return new l(qVar, this.f56958c, this.f56959d);
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        public r.a e(ln.k kVar) {
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        public r.a f(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            return this;
        }
    }
}
