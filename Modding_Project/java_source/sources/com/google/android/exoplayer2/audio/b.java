package com.google.android.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.audio.b;
import com.google.android.exoplayer2.v0;
/* compiled from: AudioRendererEventListener.java */
/* loaded from: classes4.dex */
public interface b {

    /* compiled from: AudioRendererEventListener.java */
    /* loaded from: classes4.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f17306a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final b f17307b;

        public a(@Nullable Handler handler, @Nullable b bVar) {
            Handler handler2;
            if (bVar != null) {
                handler2 = (Handler) b7.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f17306a = handler2;
            this.f17307b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i10, long j10, long j11) {
            ((b) s0.j(this.f17307b)).k(i10, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((b) s0.j(this.f17307b)).e(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((b) s0.j(this.f17307b)).b(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j10, long j11) {
            ((b) s0.j(this.f17307b)).onAudioDecoderInitialized(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((b) s0.j(this.f17307b)).d(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(r5.e eVar) {
            eVar.c();
            ((b) s0.j(this.f17307b)).o(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(r5.e eVar) {
            ((b) s0.j(this.f17307b)).E(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(v0 v0Var, r5.g gVar) {
            ((b) s0.j(this.f17307b)).F(v0Var);
            ((b) s0.j(this.f17307b)).p(v0Var, gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j10) {
            ((b) s0.j(this.f17307b)).g(j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z10) {
            ((b) s0.j(this.f17307b)).a(z10);
        }

        public void B(final long j10) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.y(j10);
                    }
                });
            }
        }

        public void C(final boolean z10) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.z(z10);
                    }
                });
            }
        }

        public void D(final int i10, final long j10, final long j11) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.A(i10, j10, j11);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j10, final long j11) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.t(str, j10, j11);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.u(str);
                    }
                });
            }
        }

        public void o(final r5.e eVar) {
            eVar.c();
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.v(eVar);
                    }
                });
            }
        }

        public void p(final r5.e eVar) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.w(eVar);
                    }
                });
            }
        }

        public void q(final v0 v0Var, @Nullable final r5.g gVar) {
            Handler handler = this.f17306a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: q5.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a.this.x(v0Var, gVar);
                    }
                });
            }
        }
    }

    default void E(r5.e eVar) {
    }

    @Deprecated
    default void F(v0 v0Var) {
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

    default void o(r5.e eVar) {
    }

    default void p(v0 v0Var, @Nullable r5.g gVar) {
    }

    default void k(int i10, long j10, long j11) {
    }

    default void onAudioDecoderInitialized(String str, long j10, long j11) {
    }
}
