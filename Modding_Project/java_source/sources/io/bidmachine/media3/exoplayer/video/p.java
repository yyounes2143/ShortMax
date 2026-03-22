package io.bidmachine.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.video.p;
import zm.i0;
/* compiled from: VideoRendererEventListener.java */
/* loaded from: classes8.dex */
public interface p {

    /* compiled from: VideoRendererEventListener.java */
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f57318a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final p f57319b;

        public a(@Nullable Handler handler, @Nullable p pVar) {
            Handler handler2;
            if (pVar != null) {
                handler2 = (Handler) cn.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f57318a = handler2;
            this.f57319b = pVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j10, long j11) {
            ((p) m0.i(this.f57319b)).onVideoDecoderInitialized(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((p) m0.i(this.f57319b)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(gn.b bVar) {
            bVar.c();
            ((p) m0.i(this.f57319b)).p(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i10, long j10) {
            ((p) m0.i(this.f57319b)).onDroppedFrames(i10, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(gn.b bVar) {
            ((p) m0.i(this.f57319b)).o(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(io.bidmachine.media3.common.a aVar, gn.c cVar) {
            ((p) m0.i(this.f57319b)).u(aVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j10) {
            ((p) m0.i(this.f57319b)).j(obj, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j10, int i10) {
            ((p) m0.i(this.f57319b)).f(j10, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((p) m0.i(this.f57319b)).h(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(i0 i0Var) {
            ((p) m0.i(this.f57319b)).m(i0Var);
        }

        public void A(final Object obj) {
            if (this.f57318a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f57318a.post(new Runnable() { // from class: yn.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.w(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i10) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.x(j10, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.y(exc);
                    }
                });
            }
        }

        public void D(final i0 i0Var) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.z(i0Var);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.r(str);
                    }
                });
            }
        }

        public void m(final gn.b bVar) {
            bVar.c();
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.s(bVar);
                    }
                });
            }
        }

        public void n(final int i10, final long j10) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.t(i10, j10);
                    }
                });
            }
        }

        public void o(final gn.b bVar) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.u(bVar);
                    }
                });
            }
        }

        public void p(final io.bidmachine.media3.common.a aVar, @Nullable final gn.c cVar) {
            Handler handler = this.f57318a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: yn.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.v(aVar, cVar);
                    }
                });
            }
        }
    }

    default void c(String str) {
    }

    default void h(Exception exc) {
    }

    default void m(i0 i0Var) {
    }

    default void o(gn.b bVar) {
    }

    default void p(gn.b bVar) {
    }

    default void f(long j10, int i10) {
    }

    default void j(Object obj, long j10) {
    }

    default void onDroppedFrames(int i10, long j10) {
    }

    default void u(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar) {
    }

    default void onVideoDecoderInitialized(String str, long j10, long j11) {
    }
}
