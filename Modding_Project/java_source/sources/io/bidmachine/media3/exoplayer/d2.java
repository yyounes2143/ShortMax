package io.bidmachine.media3.exoplayer;

import android.util.Pair;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.d2;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import sn.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaSourceList.java */
/* loaded from: classes8.dex */
public final class d2 {

    /* renamed from: a  reason: collision with root package name */
    private final hn.b2 f55618a;

    /* renamed from: e  reason: collision with root package name */
    private final d f55622e;

    /* renamed from: h  reason: collision with root package name */
    private final hn.a f55625h;

    /* renamed from: i  reason: collision with root package name */
    private final cn.n f55626i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55628k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private en.o f55629l;

    /* renamed from: j  reason: collision with root package name */
    private sn.t f55627j = new t.a(0);

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap<io.bidmachine.media3.exoplayer.source.q, c> f55620c = new IdentityHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Object, c> f55621d = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f55619b = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<c, b> f55623f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final Set<c> f55624g = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes8.dex */
    public final class a implements io.bidmachine.media3.exoplayer.source.s, io.bidmachine.media3.exoplayer.drm.h {

        /* renamed from: a  reason: collision with root package name */
        private final c f55630a;

        public a(c cVar) {
            this.f55630a = cVar;
        }

        @Nullable
        private Pair<Integer, r.b> G(int i10, @Nullable r.b bVar) {
            r.b bVar2 = null;
            if (bVar != null) {
                r.b n10 = d2.n(this.f55630a, bVar);
                if (n10 == null) {
                    return null;
                }
                bVar2 = n10;
            }
            return Pair.create(Integer.valueOf(d2.s(this.f55630a, i10)), bVar2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void H(Pair pair, sn.j jVar) {
            d2.this.f55625h.W(((Integer) pair.first).intValue(), (r.b) pair.second, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void I(Pair pair) {
            d2.this.f55625h.g0(((Integer) pair.first).intValue(), (r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void J(Pair pair) {
            d2.this.f55625h.N(((Integer) pair.first).intValue(), (r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void M(Pair pair) {
            d2.this.f55625h.d0(((Integer) pair.first).intValue(), (r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void P(Pair pair, int i10) {
            d2.this.f55625h.Y(((Integer) pair.first).intValue(), (r.b) pair.second, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Q(Pair pair, Exception exc) {
            d2.this.f55625h.K(((Integer) pair.first).intValue(), (r.b) pair.second, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void R(Pair pair) {
            d2.this.f55625h.O(((Integer) pair.first).intValue(), (r.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void T(Pair pair, sn.i iVar, sn.j jVar) {
            d2.this.f55625h.Z(((Integer) pair.first).intValue(), (r.b) pair.second, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void U(Pair pair, sn.i iVar, sn.j jVar) {
            d2.this.f55625h.x(((Integer) pair.first).intValue(), (r.b) pair.second, iVar, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a0(Pair pair, sn.i iVar, sn.j jVar, IOException iOException, boolean z10) {
            d2.this.f55625h.S(((Integer) pair.first).intValue(), (r.b) pair.second, iVar, jVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e0(Pair pair, sn.i iVar, sn.j jVar, int i10) {
            d2.this.f55625h.i(((Integer) pair.first).intValue(), (r.b) pair.second, iVar, jVar, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f0(Pair pair, sn.j jVar) {
            d2.this.f55625h.V(((Integer) pair.first).intValue(), (r.b) cn.a.e((r.b) pair.second), jVar);
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void K(int i10, @Nullable r.b bVar, final Exception exc) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.Q(G, exc);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void N(int i10, @Nullable r.b bVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.c2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.J(G);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void O(int i10, @Nullable r.b bVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.v1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.R(G);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void S(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar, final IOException iOException, final boolean z10) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.x1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.a0(G, iVar, jVar, iOException, z10);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void V(int i10, @Nullable r.b bVar, final sn.j jVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.f0(G, jVar);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void W(int i10, @Nullable r.b bVar, final sn.j jVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.b2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.H(G, jVar);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void Y(int i10, @Nullable r.b bVar, final int i11) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.r1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.P(G, i11);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void Z(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.T(G, iVar, jVar);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void d0(int i10, @Nullable r.b bVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.t1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.M(G);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void g0(int i10, @Nullable r.b bVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.s1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.I(G);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void i(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar, final int i11) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.y1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.e0(G, iVar, jVar, i11);
                    }
                });
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void x(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar) {
            final Pair<Integer, r.b> G = G(i10, bVar);
            if (G != null) {
                d2.this.f55626i.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.z1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d2.a.this.U(G, iVar, jVar);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.exoplayer.source.r f55632a;

        /* renamed from: b  reason: collision with root package name */
        public final r.c f55633b;

        /* renamed from: c  reason: collision with root package name */
        public final a f55634c;

        public b(io.bidmachine.media3.exoplayer.source.r rVar, r.c cVar, a aVar) {
            this.f55632a = rVar;
            this.f55633b = cVar;
            this.f55634c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes8.dex */
    public static final class c implements p1 {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.exoplayer.source.p f55635a;

        /* renamed from: d  reason: collision with root package name */
        public int f55638d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f55639e;

        /* renamed from: c  reason: collision with root package name */
        public final List<r.b> f55637c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f55636b = new Object();

        public c(io.bidmachine.media3.exoplayer.source.r rVar, boolean z10) {
            this.f55635a = new io.bidmachine.media3.exoplayer.source.p(rVar, z10);
        }

        @Override // io.bidmachine.media3.exoplayer.p1
        public zm.a0 a() {
            return this.f55635a.V();
        }

        public void b(int i10) {
            this.f55638d = i10;
            this.f55639e = false;
            this.f55637c.clear();
        }

        @Override // io.bidmachine.media3.exoplayer.p1
        public Object getUid() {
            return this.f55636b;
        }
    }

    /* compiled from: MediaSourceList.java */
    /* loaded from: classes8.dex */
    public interface d {
        void a();
    }

    public d2(d dVar, hn.a aVar, cn.n nVar, hn.b2 b2Var) {
        this.f55618a = b2Var;
        this.f55622e = dVar;
        this.f55625h = aVar;
        this.f55626i = nVar;
    }

    private void C(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c remove = this.f55619b.remove(i12);
            this.f55621d.remove(remove.f55636b);
            g(i12, -remove.f55635a.V().p());
            remove.f55639e = true;
            if (this.f55628k) {
                v(remove);
            }
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.f55619b.size()) {
            this.f55619b.get(i10).f55638d += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = this.f55623f.get(cVar);
        if (bVar != null) {
            bVar.f55632a.n(bVar.f55633b);
        }
    }

    private void k() {
        Iterator<c> it = this.f55624g.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f55637c.isEmpty()) {
                j(next);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f55624g.add(cVar);
        b bVar = this.f55623f.get(cVar);
        if (bVar != null) {
            bVar.f55632a.e(bVar.f55633b);
        }
    }

    private static Object m(Object obj) {
        return gn.a.v(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static r.b n(c cVar, r.b bVar) {
        for (int i10 = 0; i10 < cVar.f55637c.size(); i10++) {
            if (cVar.f55637c.get(i10).f56993d == bVar.f56993d) {
                return bVar.a(p(cVar, bVar.f56990a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return gn.a.w(obj);
    }

    private static Object p(c cVar, Object obj) {
        return gn.a.y(cVar.f55636b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int s(c cVar, int i10) {
        return i10 + cVar.f55638d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(io.bidmachine.media3.exoplayer.source.r rVar, zm.a0 a0Var) {
        this.f55622e.a();
    }

    private void v(c cVar) {
        if (cVar.f55639e && cVar.f55637c.isEmpty()) {
            b bVar = (b) cn.a.e(this.f55623f.remove(cVar));
            bVar.f55632a.k(bVar.f55633b);
            bVar.f55632a.h(bVar.f55634c);
            bVar.f55632a.i(bVar.f55634c);
            this.f55624g.remove(cVar);
        }
    }

    private void y(c cVar) {
        io.bidmachine.media3.exoplayer.source.p pVar = cVar.f55635a;
        r.c cVar2 = new r.c() { // from class: io.bidmachine.media3.exoplayer.q1
            @Override // io.bidmachine.media3.exoplayer.source.r.c
            public final void a(io.bidmachine.media3.exoplayer.source.r rVar, zm.a0 a0Var) {
                d2.this.u(rVar, a0Var);
            }
        };
        a aVar = new a(cVar);
        this.f55623f.put(cVar, new b(pVar, cVar2, aVar));
        pVar.p(cn.m0.C(), aVar);
        pVar.g(cn.m0.C(), aVar);
        pVar.l(cVar2, this.f55629l, this.f55618a);
    }

    public void A(io.bidmachine.media3.exoplayer.source.q qVar) {
        c cVar = (c) cn.a.e(this.f55620c.remove(qVar));
        cVar.f55635a.m(qVar);
        cVar.f55637c.remove(((io.bidmachine.media3.exoplayer.source.o) qVar).f56968a);
        if (!this.f55620c.isEmpty()) {
            k();
        }
        v(cVar);
    }

    public zm.a0 B(int i10, int i11, sn.t tVar) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= r()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f55627j = tVar;
        C(i10, i11);
        return i();
    }

    public zm.a0 D(List<c> list, sn.t tVar) {
        C(0, this.f55619b.size());
        return f(this.f55619b.size(), list, tVar);
    }

    public zm.a0 E(sn.t tVar) {
        int r10 = r();
        if (tVar.getLength() != r10) {
            tVar = tVar.cloneAndClear().cloneAndInsert(0, r10);
        }
        this.f55627j = tVar;
        return i();
    }

    public zm.a0 F(int i10, int i11, List<zm.q> list) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0 && i10 <= i11 && i11 <= r()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (list.size() == i11 - i10) {
            z11 = true;
        }
        cn.a.a(z11);
        for (int i12 = i10; i12 < i11; i12++) {
            this.f55619b.get(i12).f55635a.d(list.get(i12 - i10));
        }
        return i();
    }

    public zm.a0 f(int i10, List<c> list, sn.t tVar) {
        if (!list.isEmpty()) {
            this.f55627j = tVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = this.f55619b.get(i11 - 1);
                    cVar.b(cVar2.f55638d + cVar2.f55635a.V().p());
                } else {
                    cVar.b(0);
                }
                g(i11, cVar.f55635a.V().p());
                this.f55619b.add(i11, cVar);
                this.f55621d.put(cVar.f55636b, cVar);
                if (this.f55628k) {
                    y(cVar);
                    if (this.f55620c.isEmpty()) {
                        this.f55624g.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public io.bidmachine.media3.exoplayer.source.q h(r.b bVar, wn.b bVar2, long j10) {
        Object o10 = o(bVar.f56990a);
        r.b a10 = bVar.a(m(bVar.f56990a));
        c cVar = (c) cn.a.e(this.f55621d.get(o10));
        l(cVar);
        cVar.f55637c.add(a10);
        io.bidmachine.media3.exoplayer.source.o f10 = cVar.f55635a.f(a10, bVar2, j10);
        this.f55620c.put(f10, cVar);
        k();
        return f10;
    }

    public zm.a0 i() {
        if (this.f55619b.isEmpty()) {
            return zm.a0.f71731a;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f55619b.size(); i11++) {
            c cVar = this.f55619b.get(i11);
            cVar.f55638d = i10;
            i10 += cVar.f55635a.V().p();
        }
        return new g2(this.f55619b, this.f55627j);
    }

    public sn.t q() {
        return this.f55627j;
    }

    public int r() {
        return this.f55619b.size();
    }

    public boolean t() {
        return this.f55628k;
    }

    public zm.a0 w(int i10, int i11, int i12, sn.t tVar) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= r() && i12 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f55627j = tVar;
        if (i10 != i11 && i10 != i12) {
            int min = Math.min(i10, i12);
            int max = Math.max(((i11 - i10) + i12) - 1, i11 - 1);
            int i13 = this.f55619b.get(min).f55638d;
            cn.m0.R0(this.f55619b, i10, i11, i12);
            while (min <= max) {
                c cVar = this.f55619b.get(min);
                cVar.f55638d = i13;
                i13 += cVar.f55635a.V().p();
                min++;
            }
            return i();
        }
        return i();
    }

    public void x(@Nullable en.o oVar) {
        cn.a.g(!this.f55628k);
        this.f55629l = oVar;
        for (int i10 = 0; i10 < this.f55619b.size(); i10++) {
            c cVar = this.f55619b.get(i10);
            y(cVar);
            this.f55624g.add(cVar);
        }
        this.f55628k = true;
    }

    public void z() {
        for (b bVar : this.f55623f.values()) {
            try {
                bVar.f55632a.k(bVar.f55633b);
            } catch (RuntimeException e10) {
                cn.r.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f55632a.h(bVar.f55634c);
            bVar.f55632a.i(bVar.f55634c);
        }
        this.f55623f.clear();
        this.f55624g.clear();
        this.f55628k = false;
    }
}
