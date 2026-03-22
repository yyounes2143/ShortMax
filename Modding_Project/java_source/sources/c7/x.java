package c7;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import b7.s0;
import c7.x;
import com.google.android.exoplayer2.v0;
/* compiled from: VideoRendererEventListener.java */
/* loaded from: classes4.dex */
public interface x {

    /* compiled from: VideoRendererEventListener.java */
    /* loaded from: classes4.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f3327a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final x f3328b;

        public a(@Nullable Handler handler, @Nullable x xVar) {
            Handler handler2;
            if (xVar != null) {
                handler2 = (Handler) b7.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f3327a = handler2;
            this.f3328b = xVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j10, long j11) {
            ((x) s0.j(this.f3328b)).onVideoDecoderInitialized(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((x) s0.j(this.f3328b)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(r5.e eVar) {
            eVar.c();
            ((x) s0.j(this.f3328b)).n(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i10, long j10) {
            ((x) s0.j(this.f3328b)).onDroppedFrames(i10, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(r5.e eVar) {
            ((x) s0.j(this.f3328b)).m(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(v0 v0Var, r5.g gVar) {
            ((x) s0.j(this.f3328b)).z(v0Var);
            ((x) s0.j(this.f3328b)).l(v0Var, gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j10) {
            ((x) s0.j(this.f3328b)).j(obj, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j10, int i10) {
            ((x) s0.j(this.f3328b)).f(j10, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((x) s0.j(this.f3328b)).h(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(z zVar) {
            ((x) s0.j(this.f3328b)).u(zVar);
        }

        public void A(final Object obj) {
            if (this.f3327a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f3327a.post(new Runnable() { // from class: c7.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.w(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i10) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.x(j10, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.y(exc);
                    }
                });
            }
        }

        public void D(final z zVar) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.z(zVar);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.r(str);
                    }
                });
            }
        }

        public void m(final r5.e eVar) {
            eVar.c();
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.s(eVar);
                    }
                });
            }
        }

        public void n(final int i10, final long j10) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.t(i10, j10);
                    }
                });
            }
        }

        public void o(final r5.e eVar) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.u(eVar);
                    }
                });
            }
        }

        public void p(final v0 v0Var, @Nullable final r5.g gVar) {
            Handler handler = this.f3327a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c7.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.a.this.v(v0Var, gVar);
                    }
                });
            }
        }
    }

    default void c(String str) {
    }

    default void h(Exception exc) {
    }

    default void m(r5.e eVar) {
    }

    default void n(r5.e eVar) {
    }

    default void u(z zVar) {
    }

    @Deprecated
    default void z(v0 v0Var) {
    }

    default void f(long j10, int i10) {
    }

    default void j(Object obj, long j10) {
    }

    default void l(v0 v0Var, @Nullable r5.g gVar) {
    }

    default void onDroppedFrames(int i10, long j10) {
    }

    default void onVideoDecoderInitialized(String str, long j10, long j11) {
    }
}
