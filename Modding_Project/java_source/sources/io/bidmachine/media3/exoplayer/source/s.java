package io.bidmachine.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: MediaSourceEventListener.java */
/* loaded from: classes8.dex */
public interface s {

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f56995a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final r.b f56996b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0806a> f56997c;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaSourceEventListener.java */
        /* renamed from: io.bidmachine.media3.exoplayer.source.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0806a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f56998a;

            /* renamed from: b  reason: collision with root package name */
            public s f56999b;

            public C0806a(Handler handler, s sVar) {
                this.f56998a = handler;
                this.f56999b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(sn.j jVar, s sVar) {
            sVar.W(this.f56995a, this.f56996b, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(sn.i iVar, sn.j jVar, s sVar) {
            sVar.Z(this.f56995a, this.f56996b, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(sn.i iVar, sn.j jVar, s sVar) {
            sVar.x(this.f56995a, this.f56996b, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(sn.i iVar, sn.j jVar, IOException iOException, boolean z10, s sVar) {
            sVar.S(this.f56995a, this.f56996b, iVar, jVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(sn.i iVar, sn.j jVar, int i10, s sVar) {
            sVar.i(this.f56995a, this.f56996b, iVar, jVar, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(r.b bVar, sn.j jVar, s sVar) {
            sVar.V(this.f56995a, bVar, jVar);
        }

        public void A(final sn.i iVar, final sn.j jVar, final IOException iOException, final boolean z10) {
            i(new cn.l() { // from class: sn.k
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.p(iVar, jVar, iOException, z10, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void B(sn.i iVar, int i10, int i11) {
            C(iVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i11);
        }

        public void C(sn.i iVar, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar, int i12, @Nullable Object obj, long j10, long j11, int i13) {
            D(iVar, new sn.j(i10, i11, aVar, i12, obj, m0.u1(j10), m0.u1(j11)), i13);
        }

        public void D(final sn.i iVar, final sn.j jVar, final int i10) {
            i(new cn.l() { // from class: sn.l
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.q(iVar, jVar, i10, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void E(s sVar) {
            Iterator<C0806a> it = this.f56997c.iterator();
            while (it.hasNext()) {
                C0806a next = it.next();
                if (next.f56999b == sVar) {
                    this.f56997c.remove(next);
                }
            }
        }

        public void F(int i10, long j10, long j11) {
            G(new sn.j(1, i10, null, 3, null, m0.u1(j10), m0.u1(j11)));
        }

        public void G(final sn.j jVar) {
            final r.b bVar = (r.b) cn.a.e(this.f56996b);
            i(new cn.l() { // from class: sn.p
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.r(bVar, jVar, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        @CheckResult
        public a H(int i10, @Nullable r.b bVar) {
            return new a(this.f56997c, i10, bVar);
        }

        public void h(Handler handler, s sVar) {
            cn.a.e(handler);
            cn.a.e(sVar);
            this.f56997c.add(new C0806a(handler, sVar));
        }

        public void i(final cn.l<s> lVar) {
            Iterator<C0806a> it = this.f56997c.iterator();
            while (it.hasNext()) {
                C0806a next = it.next();
                final s sVar = next.f56999b;
                m0.c1(next.f56998a, new Runnable() { // from class: sn.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        cn.l.this.accept(sVar);
                    }
                });
            }
        }

        public void j(int i10, @Nullable io.bidmachine.media3.common.a aVar, int i11, @Nullable Object obj, long j10) {
            k(new sn.j(1, i10, aVar, i11, obj, m0.u1(j10), -9223372036854775807L));
        }

        public void k(final sn.j jVar) {
            i(new cn.l() { // from class: sn.n
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.m(jVar, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void s(sn.i iVar, int i10) {
            t(iVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void t(sn.i iVar, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar, int i12, @Nullable Object obj, long j10, long j11) {
            u(iVar, new sn.j(i10, i11, aVar, i12, obj, m0.u1(j10), m0.u1(j11)));
        }

        public void u(final sn.i iVar, final sn.j jVar) {
            i(new cn.l() { // from class: sn.o
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.n(iVar, jVar, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void v(sn.i iVar, int i10) {
            w(iVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void w(sn.i iVar, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar, int i12, @Nullable Object obj, long j10, long j11) {
            x(iVar, new sn.j(i10, i11, aVar, i12, obj, m0.u1(j10), m0.u1(j11)));
        }

        public void x(final sn.i iVar, final sn.j jVar) {
            i(new cn.l() { // from class: sn.m
                @Override // cn.l
                public final void accept(Object obj) {
                    s.a.this.o(iVar, jVar, (io.bidmachine.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void y(sn.i iVar, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar, int i12, @Nullable Object obj, long j10, long j11, IOException iOException, boolean z10) {
            A(iVar, new sn.j(i10, i11, aVar, i12, obj, m0.u1(j10), m0.u1(j11)), iOException, z10);
        }

        public void z(sn.i iVar, int i10, IOException iOException, boolean z10) {
            y(iVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z10);
        }

        private a(CopyOnWriteArrayList<C0806a> copyOnWriteArrayList, int i10, @Nullable r.b bVar) {
            this.f56997c = copyOnWriteArrayList;
            this.f56995a = i10;
            this.f56996b = bVar;
        }
    }

    default void V(int i10, r.b bVar, sn.j jVar) {
    }

    default void W(int i10, @Nullable r.b bVar, sn.j jVar) {
    }

    default void Z(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar) {
    }

    default void x(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar) {
    }

    default void S(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar, IOException iOException, boolean z10) {
    }

    default void i(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar, int i11) {
    }
}
