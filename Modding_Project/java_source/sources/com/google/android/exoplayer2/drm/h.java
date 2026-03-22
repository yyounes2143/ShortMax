package com.google.android.exoplayer2.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.source.o;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DrmSessionEventListener.java */
/* loaded from: classes4.dex */
public interface h {

    /* compiled from: DrmSessionEventListener.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f17580a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final o.b f17581b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0288a> f17582c;

        /* compiled from: DrmSessionEventListener.java */
        /* renamed from: com.google.android.exoplayer2.drm.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        private static final class C0288a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f17583a;

            /* renamed from: b  reason: collision with root package name */
            public h f17584b;

            public C0288a(Handler handler, h hVar) {
                this.f17583a = handler;
                this.f17584b = hVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(h hVar) {
            hVar.v(this.f17580a, this.f17581b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(h hVar) {
            hVar.R(this.f17580a, this.f17581b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(h hVar) {
            hVar.N(this.f17580a, this.f17581b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(h hVar, int i10) {
            hVar.S(this.f17580a, this.f17581b);
            hVar.x(this.f17580a, this.f17581b, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(h hVar, Exception exc) {
            hVar.V(this.f17580a, this.f17581b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(h hVar) {
            hVar.c0(this.f17580a, this.f17581b);
        }

        public void g(Handler handler, h hVar) {
            b7.a.e(handler);
            b7.a.e(hVar);
            this.f17582c.add(new C0288a(handler, hVar));
        }

        public void h() {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.n(hVar);
                    }
                });
            }
        }

        public void i() {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.o(hVar);
                    }
                });
            }
        }

        public void j() {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.p(hVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.q(hVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.r(hVar, exc);
                    }
                });
            }
        }

        public void m() {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                final h hVar = next.f17584b;
                s0.C0(next.f17583a, new Runnable() { // from class: s5.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a.this.s(hVar);
                    }
                });
            }
        }

        public void t(h hVar) {
            Iterator<C0288a> it = this.f17582c.iterator();
            while (it.hasNext()) {
                C0288a next = it.next();
                if (next.f17584b == hVar) {
                    this.f17582c.remove(next);
                }
            }
        }

        @CheckResult
        public a u(int i10, @Nullable o.b bVar) {
            return new a(this.f17582c, i10, bVar);
        }

        private a(CopyOnWriteArrayList<C0288a> copyOnWriteArrayList, int i10, @Nullable o.b bVar) {
            this.f17582c = copyOnWriteArrayList;
            this.f17580a = i10;
            this.f17581b = bVar;
        }
    }

    default void N(int i10, @Nullable o.b bVar) {
    }

    default void R(int i10, @Nullable o.b bVar) {
    }

    @Deprecated
    default void S(int i10, @Nullable o.b bVar) {
    }

    default void c0(int i10, @Nullable o.b bVar) {
    }

    default void v(int i10, @Nullable o.b bVar) {
    }

    default void V(int i10, @Nullable o.b bVar, Exception exc) {
    }

    default void x(int i10, @Nullable o.b bVar, int i11) {
    }
}
