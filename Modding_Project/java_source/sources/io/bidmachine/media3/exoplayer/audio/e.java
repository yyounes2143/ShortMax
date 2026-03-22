package io.bidmachine.media3.exoplayer.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.audio.e;
/* compiled from: AudioRendererEventListener.java */
/* loaded from: classes8.dex */
public interface e {

    /* compiled from: AudioRendererEventListener.java */
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f55528a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final e f55529b;

        public a(@Nullable Handler handler, @Nullable e eVar) {
            Handler handler2;
            if (eVar != null) {
                handler2 = (Handler) cn.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f55528a = handler2;
            this.f55529b = eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(String str) {
            ((e) m0.i(this.f55529b)).d(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void B(gn.b bVar) {
            bVar.c();
            ((e) m0.i(this.f55529b)).r(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void C(gn.b bVar) {
            ((e) m0.i(this.f55529b)).s(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void D(io.bidmachine.media3.common.a aVar, gn.c cVar) {
            ((e) m0.i(this.f55529b)).E(aVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void E(long j10) {
            ((e) m0.i(this.f55529b)).g(j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void F(boolean z10) {
            ((e) m0.i(this.f55529b)).a(z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void G(int i10, long j10, long j11) {
            ((e) m0.i(this.f55529b)).k(i10, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(Exception exc) {
            ((e) m0.i(this.f55529b)).e(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Exception exc) {
            ((e) m0.i(this.f55529b)).b(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(AudioSink.a aVar) {
            ((e) m0.i(this.f55529b)).n(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(AudioSink.a aVar) {
            ((e) m0.i(this.f55529b)).l(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(String str, long j10, long j11) {
            ((e) m0.i(this.f55529b)).onAudioDecoderInitialized(str, j10, j11);
        }

        public void H(final long j10) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.E(j10);
                    }
                });
            }
        }

        public void I(final boolean z10) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.F(z10);
                    }
                });
            }
        }

        public void J(final int i10, final long j10, final long j11) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.G(i10, j10, j11);
                    }
                });
            }
        }

        public void m(final Exception exc) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.v(exc);
                    }
                });
            }
        }

        public void n(final Exception exc) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.w(exc);
                    }
                });
            }
        }

        public void o(final AudioSink.a aVar) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.x(aVar);
                    }
                });
            }
        }

        public void p(final AudioSink.a aVar) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.y(aVar);
                    }
                });
            }
        }

        public void q(final String str, final long j10, final long j11) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.z(str, j10, j11);
                    }
                });
            }
        }

        public void r(final String str) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.A(str);
                    }
                });
            }
        }

        public void s(final gn.b bVar) {
            bVar.c();
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.B(bVar);
                    }
                });
            }
        }

        public void t(final gn.b bVar) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.C(bVar);
                    }
                });
            }
        }

        public void u(final io.bidmachine.media3.common.a aVar, @Nullable final gn.c cVar) {
            Handler handler = this.f55528a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: in.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.this.D(aVar, cVar);
                    }
                });
            }
        }
    }

    default void a(boolean z10) {
    }

    default void b(Exception exc) {
    }

    default void d(String str) {
    }

    default void e(Exception exc) {
    }

    default void g(long j10) {
    }

    default void l(AudioSink.a aVar) {
    }

    default void n(AudioSink.a aVar) {
    }

    default void r(gn.b bVar) {
    }

    default void s(gn.b bVar) {
    }

    default void E(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar) {
    }

    default void k(int i10, long j10, long j11) {
    }

    default void onAudioDecoderInitialized(String str, long j10, long j11) {
    }
}
