package io.bidmachine.media3.exoplayer.video;

import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
import cn.d0;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.video.VideoSink;
import io.bidmachine.media3.exoplayer.video.d;
import io.bidmachine.media3.exoplayer.video.o;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import zm.i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultVideoSink.java */
/* loaded from: classes8.dex */
public final class d implements VideoSink {

    /* renamed from: a  reason: collision with root package name */
    private final n f57170a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.h f57171b;

    /* renamed from: c  reason: collision with root package name */
    private final o f57172c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<VideoSink.b> f57173d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Surface f57174e;

    /* renamed from: f  reason: collision with root package name */
    private io.bidmachine.media3.common.a f57175f;

    /* renamed from: g  reason: collision with root package name */
    private long f57176g;

    /* renamed from: h  reason: collision with root package name */
    private long f57177h;

    /* renamed from: i  reason: collision with root package name */
    private VideoSink.a f57178i;

    /* renamed from: j  reason: collision with root package name */
    private Executor f57179j;

    /* renamed from: k  reason: collision with root package name */
    private yn.f f57180k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultVideoSink.java */
    /* loaded from: classes8.dex */
    public final class b implements o.a {

        /* renamed from: a  reason: collision with root package name */
        private io.bidmachine.media3.common.a f57181a;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            d.this.f57178i.b(d.this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(i0 i0Var) {
            d.this.f57178i.a(d.this, i0Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            d.this.f57178i.c(d.this);
        }

        @Override // io.bidmachine.media3.exoplayer.video.o.a
        public void m(final i0 i0Var) {
            this.f57181a = new a.b().B0(i0Var.f71959a).d0(i0Var.f71960b).u0("video/raw").N();
            d.this.f57179j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.e
                @Override // java.lang.Runnable
                public final void run() {
                    d.b.this.e(i0Var);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.o.a
        public void n(long j10, long j11, boolean z10) {
            if (z10 && d.this.f57174e != null) {
                d.this.f57179j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        d.b.this.f();
                    }
                });
            }
            io.bidmachine.media3.common.a aVar = this.f57181a;
            if (aVar == null) {
                aVar = new a.b().N();
            }
            d.this.f57180k.c(j11, d.this.f57171b.nanoTime(), aVar, null);
            ((VideoSink.b) d.this.f57173d.remove()).b(j10);
        }

        @Override // io.bidmachine.media3.exoplayer.video.o.a
        public void o() {
            d.this.f57179j.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.g
                @Override // java.lang.Runnable
                public final void run() {
                    d.b.this.d();
                }
            });
            ((VideoSink.b) d.this.f57173d.remove()).a();
        }
    }

    public d(n nVar, cn.h hVar) {
        this.f57170a = nVar;
        nVar.o(hVar);
        this.f57171b = hVar;
        this.f57172c = new o(new b(), nVar);
        this.f57173d = new ArrayDeque();
        this.f57175f = new a.b().N();
        this.f57176g = -9223372036854775807L;
        this.f57178i = VideoSink.a.f57168a;
        this.f57179j = new Executor() { // from class: io.bidmachine.media3.exoplayer.video.b
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                d.E(runnable);
            }
        };
        this.f57180k = new yn.f() { // from class: io.bidmachine.media3.exoplayer.video.c
            @Override // yn.f
            public final void c(long j10, long j11, io.bidmachine.media3.common.a aVar, MediaFormat mediaFormat) {
                d.F(j10, j11, aVar, mediaFormat);
            }
        };
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public Surface a() {
        return (Surface) cn.a.i(this.f57174e);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void b(boolean z10) {
        if (z10) {
            this.f57170a.m();
        }
        this.f57172c.b();
        this.f57173d.clear();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void d() {
        this.f57172c.l();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void e() {
        this.f57170a.l();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void f(int i10, io.bidmachine.media3.common.a aVar, List<Object> list) {
        cn.a.g(list.isEmpty());
        int i11 = aVar.f55181v;
        io.bidmachine.media3.common.a aVar2 = this.f57175f;
        if (i11 != aVar2.f55181v || aVar.f55182w != aVar2.f55182w) {
            this.f57172c.i(i11, aVar.f55182w);
        }
        float f10 = aVar.f55183x;
        if (f10 != this.f57175f.f55183x) {
            this.f57170a.p(f10);
        }
        this.f57175f = aVar;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void g(boolean z10) {
        this.f57170a.h(z10);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void h() {
        this.f57170a.a();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean i(io.bidmachine.media3.common.a aVar) {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean isEnded() {
        return this.f57172c.d();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean isInitialized() {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void j(yn.f fVar) {
        this.f57180k = fVar;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void k(int i10) {
        this.f57170a.n(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void l(h2.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void m(long j10, long j11) {
        if (j10 != this.f57176g) {
            this.f57172c.h(j10);
            this.f57176g = j10;
        }
        this.f57177h = j11;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void o(List<Object> list) {
        throw new UnsupportedOperationException();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean p(boolean z10) {
        return this.f57170a.d(z10);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void r(float f10) {
        this.f57170a.r(f10);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void render(long j10, long j11) throws VideoSink.VideoSinkException {
        try {
            this.f57172c.j(j10, j11);
        } catch (ExoPlaybackException e10) {
            throw new VideoSink.VideoSinkException(e10, this.f57175f);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void s() {
        this.f57170a.k();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean t(long j10, boolean z10, VideoSink.b bVar) {
        this.f57173d.add(bVar);
        this.f57172c.g(j10 - this.f57177h);
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void u() {
        this.f57170a.g();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void v() {
        this.f57174e = null;
        this.f57170a.q(null);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void w(VideoSink.a aVar, Executor executor) {
        this.f57178i = aVar;
        this.f57179j = executor;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void x(Surface surface, d0 d0Var) {
        this.f57174e = surface;
        this.f57170a.q(surface);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void y(boolean z10) {
        this.f57170a.e(z10);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(Runnable runnable) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F(long j10, long j11, io.bidmachine.media3.common.a aVar, MediaFormat mediaFormat) {
    }
}
