package io.bidmachine.media3.exoplayer;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.l1;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.ArrayList;
import java.util.List;
import zm.a0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodQueue.java */
/* loaded from: classes8.dex */
public final class o1 {

    /* renamed from: c  reason: collision with root package name */
    private final hn.a f56607c;

    /* renamed from: d  reason: collision with root package name */
    private final cn.n f56608d;

    /* renamed from: e  reason: collision with root package name */
    private final l1.a f56609e;

    /* renamed from: f  reason: collision with root package name */
    private long f56610f;

    /* renamed from: g  reason: collision with root package name */
    private int f56611g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f56612h;

    /* renamed from: i  reason: collision with root package name */
    private ExoPlayer.c f56613i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private l1 f56614j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private l1 f56615k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private l1 f56616l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l1 f56617m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private l1 f56618n;

    /* renamed from: o  reason: collision with root package name */
    private int f56619o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Object f56620p;

    /* renamed from: q  reason: collision with root package name */
    private long f56621q;

    /* renamed from: a  reason: collision with root package name */
    private final a0.b f56605a = new a0.b();

    /* renamed from: b  reason: collision with root package name */
    private final a0.c f56606b = new a0.c();

    /* renamed from: r  reason: collision with root package name */
    private List<l1> f56622r = new ArrayList();

    public o1(hn.a aVar, cn.n nVar, l1.a aVar2, ExoPlayer.c cVar) {
        this.f56607c = aVar;
        this.f56608d = nVar;
        this.f56609e = aVar2;
        this.f56613i = cVar;
    }

    private boolean A(Object obj, zm.a0 a0Var) {
        int c10 = a0Var.h(obj, this.f56605a).c();
        int o10 = this.f56605a.o();
        if (c10 > 0 && this.f56605a.r(o10) && (c10 > 1 || this.f56605a.f(o10) != Long.MIN_VALUE)) {
            return true;
        }
        return false;
    }

    private boolean C(r.b bVar) {
        if (!bVar.b() && bVar.f56994e == -1) {
            return true;
        }
        return false;
    }

    private boolean D(zm.a0 a0Var, r.b bVar, boolean z10) {
        int b10 = a0Var.b(bVar.f56990a);
        if (!a0Var.n(a0Var.f(b10, this.f56605a).f71742c, this.f56606b).f71765i && a0Var.r(b10, this.f56605a, this.f56606b, this.f56611g, this.f56612h) && z10) {
            return true;
        }
        return false;
    }

    private boolean E(zm.a0 a0Var, r.b bVar) {
        if (!C(bVar)) {
            return false;
        }
        int i10 = a0Var.h(bVar.f56990a, this.f56605a).f71742c;
        if (a0Var.n(i10, this.f56606b).f71771o != a0Var.b(bVar.f56990a)) {
            return false;
        }
        return true;
    }

    private static boolean H(a0.b bVar) {
        int i10;
        int c10 = bVar.c();
        if (c10 == 0) {
            return false;
        }
        if ((c10 == 1 && bVar.q(0)) || !bVar.r(bVar.o())) {
            return false;
        }
        long j10 = 0;
        if (bVar.e(0L) != -1) {
            return false;
        }
        if (bVar.f71743d == 0) {
            return true;
        }
        if (bVar.q(c10 - 1)) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        int i11 = c10 - i10;
        for (int i12 = 0; i12 <= i11; i12++) {
            j10 += bVar.i(i12);
        }
        if (bVar.f71743d > j10) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ImmutableList.a aVar, r.b bVar) {
        this.f56607c.L(aVar.k(), bVar);
    }

    private void K() {
        final r.b bVar;
        final ImmutableList.a r10 = ImmutableList.r();
        for (l1 l1Var = this.f56614j; l1Var != null; l1Var = l1Var.k()) {
            r10.a(l1Var.f56438h.f56452a);
        }
        l1 l1Var2 = this.f56615k;
        if (l1Var2 == null) {
            bVar = null;
        } else {
            bVar = l1Var2.f56438h.f56452a;
        }
        this.f56608d.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.n1
            @Override // java.lang.Runnable
            public final void run() {
                o1.this.I(r10, bVar);
            }
        });
    }

    private void M(List<l1> list) {
        for (int i10 = 0; i10 < this.f56622r.size(); i10++) {
            this.f56622r.get(i10).x();
        }
        this.f56622r = list;
        this.f56618n = null;
        J();
    }

    @Nullable
    private l1 P(m1 m1Var) {
        for (int i10 = 0; i10 < this.f56622r.size(); i10++) {
            if (this.f56622r.get(i10).d(m1Var)) {
                return this.f56622r.remove(i10);
            }
        }
        return null;
    }

    private static r.b Q(zm.a0 a0Var, Object obj, long j10, long j11, a0.c cVar, a0.b bVar) {
        a0Var.h(obj, bVar);
        a0Var.n(bVar.f71742c, cVar);
        Object obj2 = obj;
        for (int b10 = a0Var.b(obj); H(bVar) && b10 <= cVar.f71771o; b10++) {
            a0Var.g(b10, bVar, true);
            obj2 = cn.a.e(bVar.f71741b);
        }
        a0Var.h(obj2, bVar);
        int e10 = bVar.e(j10);
        if (e10 == -1) {
            return new r.b(obj2, j11, bVar.d(j10));
        }
        return new r.b(obj2, e10, bVar.k(e10), j11);
    }

    private long S(zm.a0 a0Var, Object obj) {
        int b10;
        int i10 = a0Var.h(obj, this.f56605a).f71742c;
        Object obj2 = this.f56620p;
        if (obj2 != null && (b10 = a0Var.b(obj2)) != -1 && a0Var.f(b10, this.f56605a).f71742c == i10) {
            return this.f56621q;
        }
        for (l1 l1Var = this.f56614j; l1Var != null; l1Var = l1Var.k()) {
            if (l1Var.f56432b.equals(obj)) {
                return l1Var.f56438h.f56452a.f56993d;
            }
        }
        for (l1 l1Var2 = this.f56614j; l1Var2 != null; l1Var2 = l1Var2.k()) {
            int b11 = a0Var.b(l1Var2.f56432b);
            if (b11 != -1 && a0Var.f(b11, this.f56605a).f71742c == i10) {
                return l1Var2.f56438h.f56452a.f56993d;
            }
        }
        long T = T(obj);
        if (T != -1) {
            return T;
        }
        long j10 = this.f56610f;
        this.f56610f = 1 + j10;
        if (this.f56614j == null) {
            this.f56620p = obj;
            this.f56621q = j10;
        }
        return j10;
    }

    private long T(Object obj) {
        for (int i10 = 0; i10 < this.f56622r.size(); i10++) {
            l1 l1Var = this.f56622r.get(i10);
            if (l1Var.f56432b.equals(obj)) {
                return l1Var.f56438h.f56452a.f56993d;
            }
        }
        return -1L;
    }

    private int V(zm.a0 a0Var) {
        l1 l1Var = this.f56614j;
        if (l1Var == null) {
            return 0;
        }
        int b10 = a0Var.b(l1Var.f56432b);
        while (true) {
            b10 = a0Var.d(b10, this.f56605a, this.f56606b, this.f56611g, this.f56612h);
            while (((l1) cn.a.e(l1Var)).k() != null && !l1Var.f56438h.f56459h) {
                l1Var = l1Var.k();
            }
            l1 k10 = l1Var.k();
            if (b10 == -1 || k10 == null || a0Var.b(k10.f56432b) != b10) {
                break;
            }
            l1Var = k10;
        }
        int O = O(l1Var);
        l1Var.f56438h = z(a0Var, l1Var.f56438h);
        return O;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(long j10, long j11) {
        if (j10 != -9223372036854775807L && j10 != j11) {
            return false;
        }
        return true;
    }

    private boolean f(m1 m1Var, m1 m1Var2) {
        if (m1Var.f56453b == m1Var2.f56453b && m1Var.f56452a.equals(m1Var2.f56452a)) {
            return true;
        }
        return false;
    }

    @Nullable
    private Pair<Object, Long> i(zm.a0 a0Var, Object obj, long j10) {
        int e10 = a0Var.e(a0Var.h(obj, this.f56605a).f71742c, this.f56611g, this.f56612h);
        if (e10 != -1) {
            return a0Var.k(this.f56606b, this.f56605a, e10, -9223372036854775807L, j10);
        }
        return null;
    }

    @Nullable
    private m1 j(e2 e2Var) {
        return o(e2Var.f55889a, e2Var.f55890b, e2Var.f55891c, e2Var.f55907s);
    }

    @Nullable
    private m1 k(zm.a0 a0Var, l1 l1Var, long j10) {
        m1 m1Var;
        long j11;
        long j12;
        Object obj;
        long j13;
        long j14;
        long T;
        m1 m1Var2 = l1Var.f56438h;
        int d10 = a0Var.d(a0Var.b(m1Var2.f56452a.f56990a), this.f56605a, this.f56606b, this.f56611g, this.f56612h);
        if (d10 == -1) {
            return null;
        }
        int i10 = a0Var.g(d10, this.f56605a, true).f71742c;
        Object e10 = cn.a.e(this.f56605a.f71741b);
        long j15 = m1Var2.f56452a.f56993d;
        if (a0Var.n(i10, this.f56606b).f71770n == d10) {
            m1Var = m1Var2;
            Pair<Object, Long> k10 = a0Var.k(this.f56606b, this.f56605a, i10, -9223372036854775807L, Math.max(0L, j10));
            if (k10 == null) {
                return null;
            }
            Object obj2 = k10.first;
            long longValue = ((Long) k10.second).longValue();
            l1 k11 = l1Var.k();
            if (k11 != null && k11.f56432b.equals(obj2)) {
                T = k11.f56438h.f56452a.f56993d;
            } else {
                T = T(obj2);
                if (T == -1) {
                    T = this.f56610f;
                    this.f56610f = 1 + T;
                }
            }
            j11 = T;
            j12 = -9223372036854775807L;
            obj = obj2;
            j13 = longValue;
        } else {
            m1Var = m1Var2;
            j11 = j15;
            j12 = 0;
            obj = e10;
            j13 = 0;
        }
        r.b Q = Q(a0Var, obj, j13, j11, this.f56606b, this.f56605a);
        if (j12 != -9223372036854775807L && m1Var.f56454c != -9223372036854775807L) {
            boolean A = A(m1Var.f56452a.f56990a, a0Var);
            if (Q.b() && A) {
                j12 = m1Var.f56454c;
            } else if (A) {
                j14 = m1Var.f56454c;
                return o(a0Var, Q, j12, j14);
            }
        }
        j14 = j13;
        return o(a0Var, Q, j12, j14);
    }

    @Nullable
    private m1 l(zm.a0 a0Var, l1 l1Var, long j10) {
        m1 m1Var = l1Var.f56438h;
        long m10 = (l1Var.m() + m1Var.f56456e) - j10;
        if (m1Var.f56459h) {
            return k(a0Var, l1Var, m10);
        }
        return m(a0Var, l1Var, m10);
    }

    @Nullable
    private m1 m(zm.a0 a0Var, l1 l1Var, long j10) {
        boolean z10;
        m1 m1Var = l1Var.f56438h;
        r.b bVar = m1Var.f56452a;
        a0Var.h(bVar.f56990a, this.f56605a);
        boolean z11 = m1Var.f56458g;
        if (bVar.b()) {
            int i10 = bVar.f56991b;
            int a10 = this.f56605a.a(i10);
            if (a10 == -1) {
                return null;
            }
            int l10 = this.f56605a.l(i10, bVar.f56992c);
            if (l10 < a10) {
                return p(a0Var, bVar.f56990a, i10, l10, m1Var.f56454c, bVar.f56993d, z11);
            }
            long j11 = m1Var.f56454c;
            if (j11 == -9223372036854775807L) {
                a0.c cVar = this.f56606b;
                a0.b bVar2 = this.f56605a;
                Pair<Object, Long> k10 = a0Var.k(cVar, bVar2, bVar2.f71742c, -9223372036854775807L, Math.max(0L, j10));
                if (k10 == null) {
                    return null;
                }
                j11 = ((Long) k10.second).longValue();
            }
            return q(a0Var, bVar.f56990a, Math.max(s(a0Var, bVar.f56990a, bVar.f56991b), j11), m1Var.f56454c, bVar.f56993d, z11);
        }
        int i11 = bVar.f56994e;
        if (i11 != -1 && this.f56605a.q(i11)) {
            return k(a0Var, l1Var, j10);
        }
        int k11 = this.f56605a.k(bVar.f56994e);
        if (this.f56605a.r(bVar.f56994e) && this.f56605a.h(bVar.f56994e, k11) == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (k11 != this.f56605a.a(bVar.f56994e) && !z10) {
            return p(a0Var, bVar.f56990a, bVar.f56994e, k11, m1Var.f56456e, bVar.f56993d, z11);
        }
        return q(a0Var, bVar.f56990a, s(a0Var, bVar.f56990a, bVar.f56994e), m1Var.f56456e, bVar.f56993d, false);
    }

    private m1 o(zm.a0 a0Var, r.b bVar, long j10, long j11) {
        a0Var.h(bVar.f56990a, this.f56605a);
        if (bVar.b()) {
            return p(a0Var, bVar.f56990a, bVar.f56991b, bVar.f56992c, j10, bVar.f56993d, false);
        }
        return q(a0Var, bVar.f56990a, j11, j10, bVar.f56993d, false);
    }

    private m1 p(zm.a0 a0Var, Object obj, int i10, int i11, long j10, long j11, boolean z10) {
        long j12;
        long j13;
        r.b bVar = new r.b(obj, i10, i11, j11);
        long b10 = a0Var.h(bVar.f56990a, this.f56605a).b(bVar.f56991b, bVar.f56992c);
        if (i11 == this.f56605a.k(i10)) {
            j12 = this.f56605a.g();
        } else {
            j12 = 0;
        }
        boolean r10 = this.f56605a.r(bVar.f56991b);
        if (b10 != -9223372036854775807L && j12 >= b10) {
            j13 = Math.max(0L, b10 - 1);
        } else {
            j13 = j12;
        }
        return new m1(bVar, j13, j10, -9223372036854775807L, b10, z10, r10, false, false, false);
    }

    private m1 q(zm.a0 a0Var, Object obj, long j10, long j11, long j12, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        long j13;
        long j14;
        long j15;
        long j16 = j10;
        a0Var.h(obj, this.f56605a);
        int d10 = this.f56605a.d(j16);
        int i10 = 0;
        if (d10 != -1 && this.f56605a.q(d10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (d10 == -1) {
            if (this.f56605a.c() > 0) {
                a0.b bVar = this.f56605a;
                if (bVar.r(bVar.o())) {
                    z12 = true;
                }
            }
            z12 = false;
        } else {
            if (this.f56605a.r(d10)) {
                long f10 = this.f56605a.f(d10);
                a0.b bVar2 = this.f56605a;
                if (f10 == bVar2.f71743d && bVar2.p(d10)) {
                    z12 = true;
                    d10 = -1;
                }
            }
            z12 = false;
        }
        r.b bVar3 = new r.b(obj, j12, d10);
        boolean C = C(bVar3);
        boolean E = E(a0Var, bVar3);
        boolean D = D(a0Var, bVar3, C);
        if (d10 != -1 && this.f56605a.r(d10) && !z11) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (d10 != -1 && !z11) {
            j14 = this.f56605a.f(d10);
        } else if (z12) {
            j14 = this.f56605a.f71743d;
        } else {
            j13 = -9223372036854775807L;
            if (j13 == -9223372036854775807L && j13 != Long.MIN_VALUE) {
                j15 = j13;
            } else {
                j15 = this.f56605a.f71743d;
            }
            if (j15 != -9223372036854775807L && j16 >= j15) {
                if (!D || !z12) {
                    i10 = 1;
                }
                j16 = Math.max(0L, j15 - i10);
            }
            return new m1(bVar3, j16, j11, j13, j15, z10, z13, C, E, D);
        }
        j13 = j14;
        if (j13 == -9223372036854775807L) {
        }
        j15 = this.f56605a.f71743d;
        if (j15 != -9223372036854775807L) {
            if (!D) {
            }
            i10 = 1;
            j16 = Math.max(0L, j15 - i10);
        }
        return new m1(bVar3, j16, j11, j13, j15, z10, z13, C, E, D);
    }

    private m1 r(zm.a0 a0Var, Object obj, long j10, long j11) {
        r.b Q = Q(a0Var, obj, j10, j11, this.f56606b, this.f56605a);
        if (Q.b()) {
            return p(a0Var, Q.f56990a, Q.f56991b, Q.f56992c, j10, Q.f56993d, false);
        }
        return q(a0Var, Q.f56990a, j10, -9223372036854775807L, Q.f56993d, false);
    }

    private long s(zm.a0 a0Var, Object obj, int i10) {
        a0Var.h(obj, this.f56605a);
        long f10 = this.f56605a.f(i10);
        if (f10 == Long.MIN_VALUE) {
            return this.f56605a.f71743d;
        }
        return f10 + this.f56605a.i(i10);
    }

    public void B(zm.a0 a0Var) {
        l1 l1Var;
        if (this.f56613i.f55387a != -9223372036854775807L && (l1Var = this.f56617m) != null) {
            ArrayList arrayList = new ArrayList();
            Pair<Object, Long> i10 = i(a0Var, l1Var.f56438h.f56452a.f56990a, 0L);
            if (i10 != null && !a0Var.n(a0Var.h(i10.first, this.f56605a).f71742c, this.f56606b).f()) {
                long T = T(i10.first);
                if (T == -1) {
                    T = this.f56610f;
                    this.f56610f = 1 + T;
                }
                m1 r10 = r(a0Var, i10.first, ((Long) i10.second).longValue(), T);
                l1 P = P(r10);
                if (P == null) {
                    P = this.f56609e.a(r10, (l1Var.m() + l1Var.f56438h.f56456e) - r10.f56453b);
                }
                arrayList.add(P);
            }
            M(arrayList);
            return;
        }
        N();
    }

    public boolean F(io.bidmachine.media3.exoplayer.source.q qVar) {
        l1 l1Var = this.f56617m;
        if (l1Var != null && l1Var.f56431a == qVar) {
            return true;
        }
        return false;
    }

    public boolean G(io.bidmachine.media3.exoplayer.source.q qVar) {
        l1 l1Var = this.f56618n;
        if (l1Var != null && l1Var.f56431a == qVar) {
            return true;
        }
        return false;
    }

    public void J() {
        l1 l1Var = this.f56618n;
        if (l1Var != null && !l1Var.t()) {
            return;
        }
        this.f56618n = null;
        for (int i10 = 0; i10 < this.f56622r.size(); i10++) {
            l1 l1Var2 = this.f56622r.get(i10);
            if (!l1Var2.t()) {
                this.f56618n = l1Var2;
                return;
            }
        }
    }

    public void L(long j10) {
        l1 l1Var = this.f56617m;
        if (l1Var != null) {
            l1Var.w(j10);
        }
    }

    public void N() {
        if (!this.f56622r.isEmpty()) {
            M(new ArrayList());
        }
    }

    public int O(l1 l1Var) {
        cn.a.i(l1Var);
        int i10 = 0;
        if (l1Var.equals(this.f56617m)) {
            return 0;
        }
        this.f56617m = l1Var;
        while (l1Var.k() != null) {
            l1Var = (l1) cn.a.e(l1Var.k());
            if (l1Var == this.f56615k) {
                l1 l1Var2 = this.f56614j;
                this.f56615k = l1Var2;
                this.f56616l = l1Var2;
                i10 = 3;
            }
            if (l1Var == this.f56616l) {
                this.f56616l = this.f56615k;
                i10 |= 2;
            }
            l1Var.x();
            this.f56619o--;
        }
        ((l1) cn.a.e(this.f56617m)).A(null);
        K();
        return i10;
    }

    public r.b R(zm.a0 a0Var, Object obj, long j10) {
        long S = S(a0Var, obj);
        a0Var.h(obj, this.f56605a);
        a0Var.n(this.f56605a.f71742c, this.f56606b);
        boolean z10 = false;
        for (int b10 = a0Var.b(obj); b10 >= this.f56606b.f71770n; b10--) {
            boolean z11 = true;
            a0Var.g(b10, this.f56605a, true);
            if (this.f56605a.c() <= 0) {
                z11 = false;
            }
            z10 |= z11;
            a0.b bVar = this.f56605a;
            if (bVar.e(bVar.f71743d) != -1) {
                obj = cn.a.e(this.f56605a.f71741b);
            }
            if (z10 && (!z11 || this.f56605a.f71743d != 0)) {
                break;
            }
        }
        return Q(a0Var, obj, j10, S, this.f56606b, this.f56605a);
    }

    public boolean U() {
        l1 l1Var = this.f56617m;
        if (l1Var != null && (l1Var.f56438h.f56461j || !l1Var.s() || this.f56617m.f56438h.f56456e == -9223372036854775807L || this.f56619o >= 100)) {
            return false;
        }
        return true;
    }

    public void W(zm.a0 a0Var, ExoPlayer.c cVar) {
        this.f56613i = cVar;
        B(a0Var);
    }

    public int X(zm.a0 a0Var, long j10, long j11, long j12) {
        m1 m1Var;
        long D;
        int i10;
        l1 l1Var = this.f56614j;
        l1 l1Var2 = null;
        while (true) {
            boolean z10 = false;
            if (l1Var == null) {
                return 0;
            }
            m1 m1Var2 = l1Var.f56438h;
            if (l1Var2 == null) {
                m1Var = z(a0Var, m1Var2);
            } else {
                m1 l10 = l(a0Var, l1Var2, j10);
                if (l10 == null || !f(m1Var2, l10)) {
                    break;
                }
                m1Var = l10;
            }
            l1Var.f56438h = m1Var.a(m1Var2.f56454c);
            if (!e(m1Var2.f56456e, m1Var.f56456e)) {
                l1Var.E();
                long j13 = m1Var.f56456e;
                if (j13 == -9223372036854775807L) {
                    D = Long.MAX_VALUE;
                } else {
                    D = l1Var.D(j13);
                }
                if (l1Var == this.f56615k && !l1Var.f56438h.f56458g && (j11 == Long.MIN_VALUE || j11 >= D)) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (l1Var == this.f56616l && (j12 == Long.MIN_VALUE || j12 >= D)) {
                    z10 = true;
                }
                int O = O(l1Var);
                if (O != 0) {
                    return O;
                }
                if (z10) {
                    return i10 | 2;
                }
                return i10;
            }
            l1Var2 = l1Var;
            l1Var = l1Var.k();
        }
        return O(l1Var2);
    }

    public int Y(zm.a0 a0Var, int i10) {
        this.f56611g = i10;
        return V(a0Var);
    }

    public int Z(zm.a0 a0Var, boolean z10) {
        this.f56612h = z10;
        return V(a0Var);
    }

    @Nullable
    public l1 b() {
        l1 l1Var = this.f56614j;
        if (l1Var == null) {
            return null;
        }
        if (l1Var == this.f56615k) {
            this.f56615k = l1Var.k();
        }
        l1 l1Var2 = this.f56614j;
        if (l1Var2 == this.f56616l) {
            this.f56616l = l1Var2.k();
        }
        this.f56614j.x();
        int i10 = this.f56619o - 1;
        this.f56619o = i10;
        if (i10 == 0) {
            this.f56617m = null;
            l1 l1Var3 = this.f56614j;
            this.f56620p = l1Var3.f56432b;
            this.f56621q = l1Var3.f56438h.f56452a.f56993d;
        }
        this.f56614j = this.f56614j.k();
        K();
        return this.f56614j;
    }

    public l1 c() {
        this.f56616l = ((l1) cn.a.i(this.f56616l)).k();
        K();
        return (l1) cn.a.i(this.f56616l);
    }

    public l1 d() {
        l1 l1Var = this.f56616l;
        l1 l1Var2 = this.f56615k;
        if (l1Var == l1Var2) {
            this.f56616l = ((l1) cn.a.i(l1Var2)).k();
        }
        this.f56615k = ((l1) cn.a.i(this.f56615k)).k();
        K();
        return (l1) cn.a.i(this.f56615k);
    }

    public void g() {
        if (this.f56619o == 0) {
            return;
        }
        l1 l1Var = (l1) cn.a.i(this.f56614j);
        this.f56620p = l1Var.f56432b;
        this.f56621q = l1Var.f56438h.f56452a.f56993d;
        while (l1Var != null) {
            l1Var.x();
            l1Var = l1Var.k();
        }
        this.f56614j = null;
        this.f56617m = null;
        this.f56615k = null;
        this.f56616l = null;
        this.f56619o = 0;
        K();
    }

    public l1 h(m1 m1Var) {
        long m10;
        l1 l1Var = this.f56617m;
        if (l1Var == null) {
            m10 = 1000000000000L;
        } else {
            m10 = (l1Var.m() + this.f56617m.f56438h.f56456e) - m1Var.f56453b;
        }
        l1 P = P(m1Var);
        if (P == null) {
            P = this.f56609e.a(m1Var, m10);
        } else {
            P.f56438h = m1Var;
            P.B(m10);
        }
        l1 l1Var2 = this.f56617m;
        if (l1Var2 != null) {
            l1Var2.A(P);
        } else {
            this.f56614j = P;
            this.f56615k = P;
            this.f56616l = P;
        }
        this.f56620p = null;
        this.f56617m = P;
        this.f56619o++;
        K();
        return P;
    }

    @Nullable
    public l1 n() {
        return this.f56617m;
    }

    @Nullable
    public m1 t(long j10, e2 e2Var) {
        l1 l1Var = this.f56617m;
        if (l1Var == null) {
            return j(e2Var);
        }
        return l(e2Var.f55889a, l1Var, j10);
    }

    @Nullable
    public l1 u() {
        return this.f56614j;
    }

    @Nullable
    public l1 v(io.bidmachine.media3.exoplayer.source.q qVar) {
        for (int i10 = 0; i10 < this.f56622r.size(); i10++) {
            l1 l1Var = this.f56622r.get(i10);
            if (l1Var.f56431a == qVar) {
                return l1Var;
            }
        }
        return null;
    }

    @Nullable
    public l1 w() {
        return this.f56618n;
    }

    @Nullable
    public l1 x() {
        return this.f56616l;
    }

    @Nullable
    public l1 y() {
        return this.f56615k;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.bidmachine.media3.exoplayer.m1 z(zm.a0 r20, io.bidmachine.media3.exoplayer.m1 r21) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = r21
            io.bidmachine.media3.exoplayer.source.r$b r3 = r2.f56452a
            boolean r13 = r0.C(r3)
            boolean r14 = r0.E(r1, r3)
            boolean r15 = r0.D(r1, r3, r13)
            io.bidmachine.media3.exoplayer.source.r$b r4 = r2.f56452a
            java.lang.Object r4 = r4.f56990a
            zm.a0$b r5 = r0.f56605a
            r1.h(r4, r5)
            boolean r1 = r3.b()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = -1
            if (r1 != 0) goto L35
            int r1 = r3.f56994e
            if (r1 != r6) goto L2e
            goto L35
        L2e:
            zm.a0$b r7 = r0.f56605a
            long r7 = r7.f(r1)
            goto L36
        L35:
            r7 = r4
        L36:
            boolean r1 = r3.b()
            if (r1 == 0) goto L48
            zm.a0$b r1 = r0.f56605a
            int r4 = r3.f56991b
            int r5 = r3.f56992c
            long r4 = r1.b(r4, r5)
        L46:
            r9 = r4
            goto L5c
        L48:
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 == 0) goto L55
            r4 = -9223372036854775808
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            zm.a0$b r1 = r0.f56605a
            long r4 = r1.j()
            goto L46
        L5c:
            boolean r1 = r3.b()
            if (r1 == 0) goto L6c
            zm.a0$b r1 = r0.f56605a
            int r4 = r3.f56991b
            boolean r1 = r1.r(r4)
        L6a:
            r12 = r1
            goto L7c
        L6c:
            int r1 = r3.f56994e
            if (r1 == r6) goto L7a
            zm.a0$b r4 = r0.f56605a
            boolean r1 = r4.r(r1)
            if (r1 == 0) goto L7a
            r1 = 1
            goto L6a
        L7a:
            r1 = 0
            goto L6a
        L7c:
            io.bidmachine.media3.exoplayer.m1 r16 = new io.bidmachine.media3.exoplayer.m1
            long r4 = r2.f56453b
            r17 = r14
            r18 = r15
            long r14 = r2.f56454c
            boolean r11 = r2.f56457f
            r1 = r16
            r2 = r3
            r3 = r4
            r5 = r14
            r14 = r17
            r15 = r18
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.o1.z(zm.a0, io.bidmachine.media3.exoplayer.m1):io.bidmachine.media3.exoplayer.m1");
    }
}
