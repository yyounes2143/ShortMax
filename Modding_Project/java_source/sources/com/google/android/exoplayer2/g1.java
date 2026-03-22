package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n6.r;
import p5.t3;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaSourceList.java */
/* loaded from: classes4.dex */
public final class g1 {

    /* renamed from: a  reason: collision with root package name */
    private final t3 f17652a;

    /* renamed from: e  reason: collision with root package name */
    private final d f17656e;

    /* renamed from: f  reason: collision with root package name */
    private final p.a f17657f;

    /* renamed from: g  reason: collision with root package name */
    private final h.a f17658g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<c, b> f17659h;

    /* renamed from: i  reason: collision with root package name */
    private final Set<c> f17660i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f17662k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private a7.y f17663l;

    /* renamed from: j  reason: collision with root package name */
    private n6.r f17661j = new r.a(0);

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap<com.google.android.exoplayer2.source.n, c> f17654c = new IdentityHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Object, c> f17655d = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f17653b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes4.dex */
    public final class a implements com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.drm.h {

        /* renamed from: a  reason: collision with root package name */
        private final c f17664a;

        /* renamed from: b  reason: collision with root package name */
        private p.a f17665b;

        /* renamed from: c  reason: collision with root package name */
        private h.a f17666c;

        public a(c cVar) {
            this.f17665b = g1.this.f17657f;
            this.f17666c = g1.this.f17658g;
            this.f17664a = cVar;
        }

        private boolean a(int i10, @Nullable o.b bVar) {
            o.b bVar2;
            if (bVar != null) {
                bVar2 = g1.n(this.f17664a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int r10 = g1.r(this.f17664a, i10);
            p.a aVar = this.f17665b;
            if (aVar.f18365a != r10 || !b7.s0.c(aVar.f18366b, bVar2)) {
                this.f17665b = g1.this.f17657f.x(r10, bVar2, 0L);
            }
            h.a aVar2 = this.f17666c;
            if (aVar2.f17580a != r10 || !b7.s0.c(aVar2.f17581b, bVar2)) {
                this.f17666c = g1.this.f17658g.u(r10, bVar2);
                return true;
            }
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void N(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f17666c.j();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void Q(int i10, @Nullable o.b bVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f17665b.i(iVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void R(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f17666c.i();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void T(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f17665b.p(hVar, iVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void V(int i10, @Nullable o.b bVar, Exception exc) {
            if (a(i10, bVar)) {
                this.f17666c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void W(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f17665b.r(hVar, iVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void Z(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f17665b.v(hVar, iVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void c0(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f17666c.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void i(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
            if (a(i10, bVar)) {
                this.f17665b.t(hVar, iVar, iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void v(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f17666c.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void x(int i10, @Nullable o.b bVar, int i11) {
            if (a(i10, bVar)) {
                this.f17666c.k(i11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o f17668a;

        /* renamed from: b  reason: collision with root package name */
        public final o.c f17669b;

        /* renamed from: c  reason: collision with root package name */
        public final a f17670c;

        public b(com.google.android.exoplayer2.source.o oVar, o.c cVar, a aVar) {
            this.f17668a = oVar;
            this.f17669b = cVar;
            this.f17670c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes4.dex */
    public static final class c implements e1 {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.m f17671a;

        /* renamed from: d  reason: collision with root package name */
        public int f17674d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f17675e;

        /* renamed from: c  reason: collision with root package name */
        public final List<o.b> f17673c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f17672b = new Object();

        public c(com.google.android.exoplayer2.source.o oVar, boolean z10) {
            this.f17671a = new com.google.android.exoplayer2.source.m(oVar, z10);
        }

        @Override // com.google.android.exoplayer2.e1
        public u1 a() {
            return this.f17671a.T();
        }

        public void b(int i10) {
            this.f17674d = i10;
            this.f17675e = false;
            this.f17673c.clear();
        }

        @Override // com.google.android.exoplayer2.e1
        public Object getUid() {
            return this.f17672b;
        }
    }

    /* compiled from: MediaSourceList.java */
    /* loaded from: classes4.dex */
    public interface d {
        void a();
    }

    public g1(d dVar, p5.a aVar, Handler handler, t3 t3Var) {
        this.f17652a = t3Var;
        this.f17656e = dVar;
        p.a aVar2 = new p.a();
        this.f17657f = aVar2;
        h.a aVar3 = new h.a();
        this.f17658g = aVar3;
        this.f17659h = new HashMap<>();
        this.f17660i = new HashSet();
        aVar2.f(handler, aVar);
        aVar3.g(handler, aVar);
    }

    private void B(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c remove = this.f17653b.remove(i12);
            this.f17655d.remove(remove.f17672b);
            g(i12, -remove.f17671a.T().t());
            remove.f17675e = true;
            if (this.f17662k) {
                u(remove);
            }
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.f17653b.size()) {
            this.f17653b.get(i10).f17674d += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = this.f17659h.get(cVar);
        if (bVar != null) {
            bVar.f17668a.k(bVar.f17669b);
        }
    }

    private void k() {
        Iterator<c> it = this.f17660i.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f17673c.isEmpty()) {
                j(next);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f17660i.add(cVar);
        b bVar = this.f17659h.get(cVar);
        if (bVar != null) {
            bVar.f17668a.j(bVar.f17669b);
        }
    }

    private static Object m(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static o.b n(c cVar, o.b bVar) {
        for (int i10 = 0; i10 < cVar.f17673c.size(); i10++) {
            if (cVar.f17673c.get(i10).f62790d == bVar.f62790d) {
                return bVar.c(p(cVar, bVar.f62787a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    private static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.f17672b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(c cVar, int i10) {
        return i10 + cVar.f17674d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(com.google.android.exoplayer2.source.o oVar, u1 u1Var) {
        this.f17656e.a();
    }

    private void u(c cVar) {
        if (cVar.f17675e && cVar.f17673c.isEmpty()) {
            b bVar = (b) b7.a.e(this.f17659h.remove(cVar));
            bVar.f17668a.d(bVar.f17669b);
            bVar.f17668a.e(bVar.f17670c);
            bVar.f17668a.n(bVar.f17670c);
            this.f17660i.remove(cVar);
        }
    }

    private void x(c cVar) {
        com.google.android.exoplayer2.source.m mVar = cVar.f17671a;
        o.c cVar2 = new o.c() { // from class: com.google.android.exoplayer2.f1
            @Override // com.google.android.exoplayer2.source.o.c
            public final void a(com.google.android.exoplayer2.source.o oVar, u1 u1Var) {
                g1.this.t(oVar, u1Var);
            }
        };
        a aVar = new a(cVar);
        this.f17659h.put(cVar, new b(mVar, cVar2, aVar));
        mVar.h(b7.s0.w(), aVar);
        mVar.m(b7.s0.w(), aVar);
        mVar.g(cVar2, this.f17663l, this.f17652a);
    }

    public u1 A(int i10, int i11, n6.r rVar) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= q()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.f17661j = rVar;
        B(i10, i11);
        return i();
    }

    public u1 C(List<c> list, n6.r rVar) {
        B(0, this.f17653b.size());
        return f(this.f17653b.size(), list, rVar);
    }

    public u1 D(n6.r rVar) {
        int q10 = q();
        if (rVar.getLength() != q10) {
            rVar = rVar.cloneAndClear().cloneAndInsert(0, q10);
        }
        this.f17661j = rVar;
        return i();
    }

    public u1 f(int i10, List<c> list, n6.r rVar) {
        if (!list.isEmpty()) {
            this.f17661j = rVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = this.f17653b.get(i11 - 1);
                    cVar.b(cVar2.f17674d + cVar2.f17671a.T().t());
                } else {
                    cVar.b(0);
                }
                g(i11, cVar.f17671a.T().t());
                this.f17653b.add(i11, cVar);
                this.f17655d.put(cVar.f17672b, cVar);
                if (this.f17662k) {
                    x(cVar);
                    if (this.f17654c.isEmpty()) {
                        this.f17660i.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public com.google.android.exoplayer2.source.n h(o.b bVar, a7.b bVar2, long j10) {
        Object o10 = o(bVar.f62787a);
        o.b c10 = bVar.c(m(bVar.f62787a));
        c cVar = (c) b7.a.e(this.f17655d.get(o10));
        l(cVar);
        cVar.f17673c.add(c10);
        com.google.android.exoplayer2.source.l f10 = cVar.f17671a.f(c10, bVar2, j10);
        this.f17654c.put(f10, cVar);
        k();
        return f10;
    }

    public u1 i() {
        if (this.f17653b.isEmpty()) {
            return u1.f18532a;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f17653b.size(); i11++) {
            c cVar = this.f17653b.get(i11);
            cVar.f17674d = i10;
            i10 += cVar.f17671a.T().t();
        }
        return new n1(this.f17653b, this.f17661j);
    }

    public int q() {
        return this.f17653b.size();
    }

    public boolean s() {
        return this.f17662k;
    }

    public u1 v(int i10, int i11, int i12, n6.r rVar) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= q() && i12 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.f17661j = rVar;
        if (i10 != i11 && i10 != i12) {
            int min = Math.min(i10, i12);
            int max = Math.max(((i11 - i10) + i12) - 1, i11 - 1);
            int i13 = this.f17653b.get(min).f17674d;
            b7.s0.v0(this.f17653b, i10, i11, i12);
            while (min <= max) {
                c cVar = this.f17653b.get(min);
                cVar.f17674d = i13;
                i13 += cVar.f17671a.T().t();
                min++;
            }
            return i();
        }
        return i();
    }

    public void w(@Nullable a7.y yVar) {
        b7.a.g(!this.f17662k);
        this.f17663l = yVar;
        for (int i10 = 0; i10 < this.f17653b.size(); i10++) {
            c cVar = this.f17653b.get(i10);
            x(cVar);
            this.f17660i.add(cVar);
        }
        this.f17662k = true;
    }

    public void y() {
        for (b bVar : this.f17659h.values()) {
            try {
                bVar.f17668a.d(bVar.f17669b);
            } catch (RuntimeException e10) {
                b7.q.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f17668a.e(bVar.f17670c);
            bVar.f17668a.n(bVar.f17670c);
        }
        this.f17659h.clear();
        this.f17660i.clear();
        this.f17662k = false;
    }

    public void z(com.google.android.exoplayer2.source.n nVar) {
        c cVar = (c) b7.a.e(this.f17654c.remove(nVar));
        cVar.f17671a.i(nVar);
        cVar.f17673c.remove(((com.google.android.exoplayer2.source.l) nVar).f18344a);
        if (!this.f17654c.isEmpty()) {
            k();
        }
        u(cVar);
    }
}
