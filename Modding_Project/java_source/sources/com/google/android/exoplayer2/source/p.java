package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: MediaSourceEventListener.java */
/* loaded from: classes4.dex */
public interface p {

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f18365a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final o.b f18366b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0290a> f18367c;

        /* renamed from: d  reason: collision with root package name */
        private final long f18368d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaSourceEventListener.java */
        /* renamed from: com.google.android.exoplayer2.source.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0290a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f18369a;

            /* renamed from: b  reason: collision with root package name */
            public p f18370b;

            public C0290a(Handler handler, p pVar) {
                this.f18369a = handler;
                this.f18370b = pVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private long g(long j10) {
            long Q0 = s0.Q0(j10);
            if (Q0 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f18368d + Q0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(p pVar, n6.i iVar) {
            pVar.Q(this.f18365a, this.f18366b, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(p pVar, n6.h hVar, n6.i iVar) {
            pVar.T(this.f18365a, this.f18366b, hVar, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(p pVar, n6.h hVar, n6.i iVar) {
            pVar.W(this.f18365a, this.f18366b, hVar, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(p pVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
            pVar.i(this.f18365a, this.f18366b, hVar, iVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(p pVar, n6.h hVar, n6.i iVar) {
            pVar.Z(this.f18365a, this.f18366b, hVar, iVar);
        }

        public void f(Handler handler, p pVar) {
            b7.a.e(handler);
            b7.a.e(pVar);
            this.f18367c.add(new C0290a(handler, pVar));
        }

        public void h(int i10, @Nullable v0 v0Var, int i11, @Nullable Object obj, long j10) {
            i(new n6.i(1, i10, v0Var, i11, obj, g(j10), -9223372036854775807L));
        }

        public void i(final n6.i iVar) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                final p pVar = next.f18370b;
                s0.C0(next.f18369a, new Runnable() { // from class: n6.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.j(pVar, iVar);
                    }
                });
            }
        }

        public void o(n6.h hVar, int i10, int i11, @Nullable v0 v0Var, int i12, @Nullable Object obj, long j10, long j11) {
            p(hVar, new n6.i(i10, i11, v0Var, i12, obj, g(j10), g(j11)));
        }

        public void p(final n6.h hVar, final n6.i iVar) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                final p pVar = next.f18370b;
                s0.C0(next.f18369a, new Runnable() { // from class: n6.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.k(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void q(n6.h hVar, int i10, int i11, @Nullable v0 v0Var, int i12, @Nullable Object obj, long j10, long j11) {
            r(hVar, new n6.i(i10, i11, v0Var, i12, obj, g(j10), g(j11)));
        }

        public void r(final n6.h hVar, final n6.i iVar) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                final p pVar = next.f18370b;
                s0.C0(next.f18369a, new Runnable() { // from class: n6.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.l(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void s(n6.h hVar, int i10, int i11, @Nullable v0 v0Var, int i12, @Nullable Object obj, long j10, long j11, IOException iOException, boolean z10) {
            t(hVar, new n6.i(i10, i11, v0Var, i12, obj, g(j10), g(j11)), iOException, z10);
        }

        public void t(final n6.h hVar, final n6.i iVar, final IOException iOException, final boolean z10) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                final p pVar = next.f18370b;
                s0.C0(next.f18369a, new Runnable() { // from class: n6.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.m(pVar, hVar, iVar, iOException, z10);
                    }
                });
            }
        }

        public void u(n6.h hVar, int i10, int i11, @Nullable v0 v0Var, int i12, @Nullable Object obj, long j10, long j11) {
            v(hVar, new n6.i(i10, i11, v0Var, i12, obj, g(j10), g(j11)));
        }

        public void v(final n6.h hVar, final n6.i iVar) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                final p pVar = next.f18370b;
                s0.C0(next.f18369a, new Runnable() { // from class: n6.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.a.this.n(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void w(p pVar) {
            Iterator<C0290a> it = this.f18367c.iterator();
            while (it.hasNext()) {
                C0290a next = it.next();
                if (next.f18370b == pVar) {
                    this.f18367c.remove(next);
                }
            }
        }

        @CheckResult
        public a x(int i10, @Nullable o.b bVar, long j10) {
            return new a(this.f18367c, i10, bVar, j10);
        }

        private a(CopyOnWriteArrayList<C0290a> copyOnWriteArrayList, int i10, @Nullable o.b bVar, long j10) {
            this.f18367c = copyOnWriteArrayList;
            this.f18365a = i10;
            this.f18366b = bVar;
            this.f18368d = j10;
        }
    }

    default void Q(int i10, @Nullable o.b bVar, n6.i iVar) {
    }

    default void T(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
    }

    default void W(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
    }

    default void Z(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
    }

    default void i(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
    }
}
