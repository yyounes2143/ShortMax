package io.bidmachine.media3.exoplayer.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DrmSessionEventListener.java */
/* loaded from: classes8.dex */
public interface h {

    /* compiled from: DrmSessionEventListener.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f55863a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final r.b f55864b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0801a> f55865c;

        /* compiled from: DrmSessionEventListener.java */
        /* renamed from: io.bidmachine.media3.exoplayer.drm.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        private static final class C0801a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f55866a;

            /* renamed from: b  reason: collision with root package name */
            public h f55867b;

            public C0801a(Handler handler, h hVar) {
                this.f55866a = handler;
                this.f55867b = hVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(h hVar) {
            hVar.g0(this.f55863a, this.f55864b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(h hVar) {
            hVar.N(this.f55863a, this.f55864b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(h hVar) {
            hVar.d0(this.f55863a, this.f55864b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(h hVar, int i10) {
            hVar.Y(this.f55863a, this.f55864b, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(h hVar, Exception exc) {
            hVar.K(this.f55863a, this.f55864b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(h hVar) {
            hVar.O(this.f55863a, this.f55864b);
        }

        public void g(Handler handler, h hVar) {
            cn.a.e(handler);
            cn.a.e(hVar);
            this.f55865c.add(new C0801a(handler, hVar));
        }

        public void h() {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.n(hVar);
                    }
                });
            }
        }

        public void i() {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.o(hVar);
                    }
                });
            }
        }

        public void j() {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.p(hVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.q(hVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.r(hVar, exc);
                    }
                });
            }
        }

        public void m() {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                final h hVar = next.f55867b;
                m0.c1(next.f55866a, new Runnable() { // from class: ln.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.s(hVar);
                    }
                });
            }
        }

        public void t(h hVar) {
            Iterator<C0801a> it = this.f55865c.iterator();
            while (it.hasNext()) {
                C0801a next = it.next();
                if (next.f55867b == hVar) {
                    this.f55865c.remove(next);
                }
            }
        }

        @CheckResult
        public a u(int i10, @Nullable r.b bVar) {
            return new a(this.f55865c, i10, bVar);
        }

        private a(CopyOnWriteArrayList<C0801a> copyOnWriteArrayList, int i10, @Nullable r.b bVar) {
            this.f55865c = copyOnWriteArrayList;
            this.f55863a = i10;
            this.f55864b = bVar;
        }
    }

    default void N(int i10, @Nullable r.b bVar) {
    }

    default void O(int i10, @Nullable r.b bVar) {
    }

    default void d0(int i10, @Nullable r.b bVar) {
    }

    default void g0(int i10, @Nullable r.b bVar) {
    }

    default void K(int i10, @Nullable r.b bVar, Exception exc) {
    }

    default void Y(int i10, @Nullable r.b bVar, int i11) {
    }
}
