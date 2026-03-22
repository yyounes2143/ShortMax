package zm;

import android.net.Uri;
import android.util.Pair;
import androidx.annotation.Nullable;
import cn.m0;
import java.util.Objects;
import zm.b;
import zm.q;
/* compiled from: Timeline.java */
/* loaded from: classes8.dex */
public abstract class a0 {

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f71731a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final String f71732b = m0.C0(0);

    /* renamed from: c  reason: collision with root package name */
    private static final String f71733c = m0.C0(1);

    /* renamed from: d  reason: collision with root package name */
    private static final String f71734d = m0.C0(2);

    /* compiled from: Timeline.java */
    /* loaded from: classes8.dex */
    class a extends a0 {
        a() {
        }

        @Override // zm.a0
        public int b(Object obj) {
            return -1;
        }

        @Override // zm.a0
        public b g(int i10, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // zm.a0
        public int i() {
            return 0;
        }

        @Override // zm.a0
        public Object m(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // zm.a0
        public c o(int i10, c cVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // zm.a0
        public int p() {
            return 0;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: h  reason: collision with root package name */
        private static final String f71735h = m0.C0(0);

        /* renamed from: i  reason: collision with root package name */
        private static final String f71736i = m0.C0(1);

        /* renamed from: j  reason: collision with root package name */
        private static final String f71737j = m0.C0(2);

        /* renamed from: k  reason: collision with root package name */
        private static final String f71738k = m0.C0(3);

        /* renamed from: l  reason: collision with root package name */
        private static final String f71739l = m0.C0(4);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public Object f71740a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public Object f71741b;

        /* renamed from: c  reason: collision with root package name */
        public int f71742c;

        /* renamed from: d  reason: collision with root package name */
        public long f71743d;

        /* renamed from: e  reason: collision with root package name */
        public long f71744e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f71745f;

        /* renamed from: g  reason: collision with root package name */
        public zm.b f71746g = zm.b.f71773g;

        public int a(int i10) {
            return this.f71746g.a(i10).f71797b;
        }

        public long b(int i10, int i11) {
            b.a a10 = this.f71746g.a(i10);
            if (a10.f71797b != -1) {
                return a10.f71802g[i11];
            }
            return -9223372036854775807L;
        }

        public int c() {
            return this.f71746g.f71780b;
        }

        public int d(long j10) {
            return this.f71746g.b(j10, this.f71743d);
        }

        public int e(long j10) {
            return this.f71746g.c(j10, this.f71743d);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            if (Objects.equals(this.f71740a, bVar.f71740a) && Objects.equals(this.f71741b, bVar.f71741b) && this.f71742c == bVar.f71742c && this.f71743d == bVar.f71743d && this.f71744e == bVar.f71744e && this.f71745f == bVar.f71745f && Objects.equals(this.f71746g, bVar.f71746g)) {
                return true;
            }
            return false;
        }

        public long f(int i10) {
            return this.f71746g.a(i10).f71796a;
        }

        public long g() {
            return this.f71746g.f71781c;
        }

        public int h(int i10, int i11) {
            b.a a10 = this.f71746g.a(i10);
            if (a10.f71797b != -1) {
                return a10.f71801f[i11];
            }
            return 0;
        }

        public int hashCode() {
            int hashCode;
            Object obj = this.f71740a;
            int i10 = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            int i11 = (217 + hashCode) * 31;
            Object obj2 = this.f71741b;
            if (obj2 != null) {
                i10 = obj2.hashCode();
            }
            long j10 = this.f71743d;
            long j11 = this.f71744e;
            return ((((((((((i11 + i10) * 31) + this.f71742c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f71745f ? 1 : 0)) * 31) + this.f71746g.hashCode();
        }

        public long i(int i10) {
            return this.f71746g.a(i10).f71804i;
        }

        public long j() {
            return this.f71743d;
        }

        public int k(int i10) {
            return this.f71746g.a(i10).c();
        }

        public int l(int i10, int i11) {
            return this.f71746g.a(i10).d(i11);
        }

        public long m() {
            return m0.u1(this.f71744e);
        }

        public long n() {
            return this.f71744e;
        }

        public int o() {
            return this.f71746g.f71783e;
        }

        public boolean p(int i10) {
            return !this.f71746g.a(i10).e();
        }

        public boolean q(int i10) {
            if (i10 == c() - 1 && this.f71746g.d(i10)) {
                return true;
            }
            return false;
        }

        public boolean r(int i10) {
            return this.f71746g.a(i10).f71805j;
        }

        public b s(@Nullable Object obj, @Nullable Object obj2, int i10, long j10, long j11) {
            return t(obj, obj2, i10, j10, j11, zm.b.f71773g, false);
        }

        public b t(@Nullable Object obj, @Nullable Object obj2, int i10, long j10, long j11, zm.b bVar, boolean z10) {
            this.f71740a = obj;
            this.f71741b = obj2;
            this.f71742c = i10;
            this.f71743d = j10;
            this.f71744e = j11;
            this.f71746g = bVar;
            this.f71745f = z10;
            return this;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes8.dex */
    public static final class c {
        @Nullable
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public Object f71758b;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f71760d;

        /* renamed from: e  reason: collision with root package name */
        public long f71761e;

        /* renamed from: f  reason: collision with root package name */
        public long f71762f;

        /* renamed from: g  reason: collision with root package name */
        public long f71763g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f71764h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f71765i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        public q.g f71766j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f71767k;

        /* renamed from: l  reason: collision with root package name */
        public long f71768l;

        /* renamed from: m  reason: collision with root package name */
        public long f71769m;

        /* renamed from: n  reason: collision with root package name */
        public int f71770n;

        /* renamed from: o  reason: collision with root package name */
        public int f71771o;

        /* renamed from: p  reason: collision with root package name */
        public long f71772p;

        /* renamed from: q  reason: collision with root package name */
        public static final Object f71747q = new Object();

        /* renamed from: r  reason: collision with root package name */
        private static final Object f71748r = new Object();

        /* renamed from: s  reason: collision with root package name */
        private static final q f71749s = new q.c().c("io.bidmachine.media3.common.Timeline").f(Uri.EMPTY).a();

        /* renamed from: t  reason: collision with root package name */
        private static final String f71750t = m0.C0(1);

        /* renamed from: u  reason: collision with root package name */
        private static final String f71751u = m0.C0(2);

        /* renamed from: v  reason: collision with root package name */
        private static final String f71752v = m0.C0(3);

        /* renamed from: w  reason: collision with root package name */
        private static final String f71753w = m0.C0(4);

        /* renamed from: x  reason: collision with root package name */
        private static final String f71754x = m0.C0(5);

        /* renamed from: y  reason: collision with root package name */
        private static final String f71755y = m0.C0(6);

        /* renamed from: z  reason: collision with root package name */
        private static final String f71756z = m0.C0(7);
        private static final String A = m0.C0(8);
        private static final String B = m0.C0(9);
        private static final String C = m0.C0(10);
        private static final String D = m0.C0(11);
        private static final String E = m0.C0(12);
        private static final String F = m0.C0(13);

        /* renamed from: a  reason: collision with root package name */
        public Object f71757a = f71747q;

        /* renamed from: c  reason: collision with root package name */
        public q f71759c = f71749s;

        public long a() {
            return m0.h0(this.f71763g);
        }

        public long b() {
            return m0.u1(this.f71768l);
        }

        public long c() {
            return this.f71768l;
        }

        public long d() {
            return m0.u1(this.f71769m);
        }

        public long e() {
            return this.f71772p;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !c.class.equals(obj.getClass())) {
                return false;
            }
            c cVar = (c) obj;
            if (Objects.equals(this.f71757a, cVar.f71757a) && Objects.equals(this.f71759c, cVar.f71759c) && Objects.equals(this.f71760d, cVar.f71760d) && Objects.equals(this.f71766j, cVar.f71766j) && this.f71761e == cVar.f71761e && this.f71762f == cVar.f71762f && this.f71763g == cVar.f71763g && this.f71764h == cVar.f71764h && this.f71765i == cVar.f71765i && this.f71767k == cVar.f71767k && this.f71768l == cVar.f71768l && this.f71769m == cVar.f71769m && this.f71770n == cVar.f71770n && this.f71771o == cVar.f71771o && this.f71772p == cVar.f71772p) {
                return true;
            }
            return false;
        }

        public boolean f() {
            if (this.f71766j != null) {
                return true;
            }
            return false;
        }

        public c g(Object obj, @Nullable q qVar, @Nullable Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, @Nullable q.g gVar, long j13, long j14, int i10, int i11, long j15) {
            q qVar2;
            Object obj3;
            q.h hVar;
            this.f71757a = obj;
            if (qVar != null) {
                qVar2 = qVar;
            } else {
                qVar2 = f71749s;
            }
            this.f71759c = qVar2;
            if (qVar != null && (hVar = qVar.f71992b) != null) {
                obj3 = hVar.f72091h;
            } else {
                obj3 = null;
            }
            this.f71758b = obj3;
            this.f71760d = obj2;
            this.f71761e = j10;
            this.f71762f = j11;
            this.f71763g = j12;
            this.f71764h = z10;
            this.f71765i = z11;
            this.f71766j = gVar;
            this.f71768l = j13;
            this.f71769m = j14;
            this.f71770n = i10;
            this.f71771o = i11;
            this.f71772p = j15;
            this.f71767k = false;
            return this;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = (((217 + this.f71757a.hashCode()) * 31) + this.f71759c.hashCode()) * 31;
            Object obj = this.f71760d;
            int i10 = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            q.g gVar = this.f71766j;
            if (gVar != null) {
                i10 = gVar.hashCode();
            }
            long j10 = this.f71761e;
            long j11 = this.f71762f;
            long j12 = this.f71763g;
            long j13 = this.f71768l;
            long j14 = this.f71769m;
            long j15 = this.f71772p;
            return ((((((((((((((((((((((i11 + i10) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f71764h ? 1 : 0)) * 31) + (this.f71765i ? 1 : 0)) * 31) + (this.f71767k ? 1 : 0)) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f71770n) * 31) + this.f71771o) * 31) + ((int) (j15 ^ (j15 >>> 32)));
        }
    }

    public int a(boolean z10) {
        if (q()) {
            return -1;
        }
        return 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z10) {
        if (q()) {
            return -1;
        }
        return p() - 1;
    }

    public final int d(int i10, b bVar, c cVar, int i11, boolean z10) {
        int i12 = f(i10, bVar).f71742c;
        if (n(i12, cVar).f71771o == i10) {
            int e10 = e(i12, i11, z10);
            if (e10 == -1) {
                return -1;
            }
            return n(e10, cVar).f71770n;
        }
        return i10 + 1;
    }

    public int e(int i10, int i11, boolean z10) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == c(z10)) {
                        return a(z10);
                    }
                    return i10 + 1;
                }
                throw new IllegalStateException();
            }
            return i10;
        } else if (i10 == c(z10)) {
            return -1;
        } else {
            return i10 + 1;
        }
    }

    public boolean equals(@Nullable Object obj) {
        int c10;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (a0Var.p() != p() || a0Var.i() != i()) {
            return false;
        }
        c cVar = new c();
        b bVar = new b();
        c cVar2 = new c();
        b bVar2 = new b();
        for (int i10 = 0; i10 < p(); i10++) {
            if (!n(i10, cVar).equals(a0Var.n(i10, cVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < i(); i11++) {
            if (!g(i11, bVar, true).equals(a0Var.g(i11, bVar2, true))) {
                return false;
            }
        }
        int a10 = a(true);
        if (a10 != a0Var.a(true) || (c10 = c(true)) != a0Var.c(true)) {
            return false;
        }
        while (a10 != c10) {
            int e10 = e(a10, 0, true);
            if (e10 != a0Var.e(a10, 0, true)) {
                return false;
            }
            a10 = e10;
        }
        return true;
    }

    public final b f(int i10, b bVar) {
        return g(i10, bVar, false);
    }

    public abstract b g(int i10, b bVar, boolean z10);

    public b h(Object obj, b bVar) {
        return g(b(obj), bVar, true);
    }

    public int hashCode() {
        c cVar = new c();
        b bVar = new b();
        int p10 = 217 + p();
        for (int i10 = 0; i10 < p(); i10++) {
            p10 = (p10 * 31) + n(i10, cVar).hashCode();
        }
        int i11 = (p10 * 31) + i();
        for (int i12 = 0; i12 < i(); i12++) {
            i11 = (i11 * 31) + g(i12, bVar, true).hashCode();
        }
        int a10 = a(true);
        while (a10 != -1) {
            i11 = (i11 * 31) + a10;
            a10 = e(a10, 0, true);
        }
        return i11;
    }

    public abstract int i();

    public final Pair<Object, Long> j(c cVar, b bVar, int i10, long j10) {
        return (Pair) cn.a.e(k(cVar, bVar, i10, j10, 0L));
    }

    @Nullable
    public final Pair<Object, Long> k(c cVar, b bVar, int i10, long j10, long j11) {
        cn.a.c(i10, 0, p());
        o(i10, cVar, j11);
        if (j10 == -9223372036854775807L) {
            j10 = cVar.c();
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = cVar.f71770n;
        f(i11, bVar);
        while (i11 < cVar.f71771o && bVar.f71744e != j10) {
            int i12 = i11 + 1;
            if (f(i12, bVar).f71744e > j10) {
                break;
            }
            i11 = i12;
        }
        g(i11, bVar, true);
        long j12 = j10 - bVar.f71744e;
        long j13 = bVar.f71743d;
        if (j13 != -9223372036854775807L) {
            j12 = Math.min(j12, j13 - 1);
        }
        return Pair.create(cn.a.e(bVar.f71741b), Long.valueOf(Math.max(0L, j12)));
    }

    public int l(int i10, int i11, boolean z10) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == a(z10)) {
                        return c(z10);
                    }
                    return i10 - 1;
                }
                throw new IllegalStateException();
            }
            return i10;
        } else if (i10 == a(z10)) {
            return -1;
        } else {
            return i10 - 1;
        }
    }

    public abstract Object m(int i10);

    public final c n(int i10, c cVar) {
        return o(i10, cVar, 0L);
    }

    public abstract c o(int i10, c cVar, long j10);

    public abstract int p();

    public final boolean q() {
        if (p() == 0) {
            return true;
        }
        return false;
    }

    public final boolean r(int i10, b bVar, c cVar, int i11, boolean z10) {
        if (d(i10, bVar, cVar, i11, z10) == -1) {
            return true;
        }
        return false;
    }
}
