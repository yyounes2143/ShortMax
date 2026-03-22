package p5;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.o;
import java.io.IOException;
import java.util.List;
/* compiled from: AnalyticsListener.java */
/* loaded from: classes4.dex */
public interface b {

    /* compiled from: AnalyticsListener.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f64517a;

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.u1 f64518b;

        /* renamed from: c  reason: collision with root package name */
        public final int f64519c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final o.b f64520d;

        /* renamed from: e  reason: collision with root package name */
        public final long f64521e;

        /* renamed from: f  reason: collision with root package name */
        public final com.google.android.exoplayer2.u1 f64522f;

        /* renamed from: g  reason: collision with root package name */
        public final int f64523g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final o.b f64524h;

        /* renamed from: i  reason: collision with root package name */
        public final long f64525i;

        /* renamed from: j  reason: collision with root package name */
        public final long f64526j;

        public a(long j10, com.google.android.exoplayer2.u1 u1Var, int i10, @Nullable o.b bVar, long j11, com.google.android.exoplayer2.u1 u1Var2, int i11, @Nullable o.b bVar2, long j12, long j13) {
            this.f64517a = j10;
            this.f64518b = u1Var;
            this.f64519c = i10;
            this.f64520d = bVar;
            this.f64521e = j11;
            this.f64522f = u1Var2;
            this.f64523g = i11;
            this.f64524h = bVar2;
            this.f64525i = j12;
            this.f64526j = j13;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f64517a == aVar.f64517a && this.f64519c == aVar.f64519c && this.f64521e == aVar.f64521e && this.f64523g == aVar.f64523g && this.f64525i == aVar.f64525i && this.f64526j == aVar.f64526j && h7.h.a(this.f64518b, aVar.f64518b) && h7.h.a(this.f64520d, aVar.f64520d) && h7.h.a(this.f64522f, aVar.f64522f) && h7.h.a(this.f64524h, aVar.f64524h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return h7.h.b(Long.valueOf(this.f64517a), this.f64518b, Integer.valueOf(this.f64519c), this.f64520d, Long.valueOf(this.f64521e), this.f64522f, Integer.valueOf(this.f64523g), this.f64524h, Long.valueOf(this.f64525i), Long.valueOf(this.f64526j));
        }
    }

    /* compiled from: AnalyticsListener.java */
    /* renamed from: p5.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0896b {

        /* renamed from: a  reason: collision with root package name */
        private final b7.l f64527a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<a> f64528b;

        public C0896b(b7.l lVar, SparseArray<a> sparseArray) {
            this.f64527a = lVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(lVar.d());
            for (int i10 = 0; i10 < lVar.d(); i10++) {
                int c10 = lVar.c(i10);
                sparseArray2.append(c10, (a) b7.a.e(sparseArray.get(c10)));
            }
            this.f64528b = sparseArray2;
        }

        public boolean a(int i10) {
            return this.f64527a.a(i10);
        }

        public int b(int i10) {
            return this.f64527a.c(i10);
        }

        public a c(int i10) {
            return (a) b7.a.e(this.f64528b.get(i10));
        }

        public int d() {
            return this.f64527a.d();
        }
    }

    @Deprecated
    default void E(a aVar) {
    }

    default void F(a aVar) {
    }

    default void I(a aVar) {
    }

    @Deprecated
    default void L(a aVar) {
    }

    default void X(a aVar) {
    }

    default void a0(a aVar) {
    }

    default void h0(a aVar) {
    }

    @Deprecated
    default void s(a aVar) {
    }

    default void A(a aVar, com.google.android.exoplayer2.z0 z0Var) {
    }

    @Deprecated
    default void C(a aVar, List<p6.b> list) {
    }

    default void K(a aVar, z6.f0 f0Var) {
    }

    default void M(a aVar, r5.e eVar) {
    }

    default void N(a aVar, PlaybackException playbackException) {
    }

    default void P(a aVar, boolean z10) {
    }

    default void Q(a aVar, n6.i iVar) {
    }

    @Deprecated
    default void R(a aVar, com.google.android.exoplayer2.v0 v0Var) {
    }

    default void S(a aVar, r5.e eVar) {
    }

    default void T(com.google.android.exoplayer2.l1 l1Var, C0896b c0896b) {
    }

    default void W(a aVar, l1.b bVar) {
    }

    default void Z(a aVar, int i10) {
    }

    default void b(a aVar, int i10) {
    }

    default void b0(a aVar, c7.z zVar) {
    }

    default void c0(a aVar, Metadata metadata) {
    }

    default void d0(a aVar, long j10) {
    }

    default void e(a aVar, String str) {
    }

    default void e0(a aVar, Exception exc) {
    }

    default void f0(a aVar, int i10) {
    }

    @Deprecated
    default void g(a aVar, boolean z10) {
    }

    default void g0(a aVar, com.google.android.exoplayer2.k1 k1Var) {
    }

    default void j0(a aVar, r5.e eVar) {
    }

    default void l(a aVar, float f10) {
    }

    default void l0(a aVar, com.google.android.exoplayer2.v1 v1Var) {
    }

    default void m(a aVar, Exception exc) {
    }

    default void o(a aVar, int i10) {
    }

    @Deprecated
    default void o0(a aVar, int i10) {
    }

    default void p0(a aVar, r5.e eVar) {
    }

    default void q(a aVar, String str) {
    }

    default void r(a aVar, @Nullable PlaybackException playbackException) {
    }

    default void s0(a aVar, boolean z10) {
    }

    default void t(a aVar, p6.f fVar) {
    }

    default void t0(a aVar, boolean z10) {
    }

    default void u(a aVar, Exception exc) {
    }

    default void v(a aVar, boolean z10) {
    }

    default void v0(a aVar, int i10) {
    }

    default void w(a aVar, Exception exc) {
    }

    @Deprecated
    default void w0(a aVar, com.google.android.exoplayer2.v0 v0Var) {
    }

    default void z(a aVar, com.google.android.exoplayer2.j jVar) {
    }

    @Deprecated
    default void B(a aVar, boolean z10, int i10) {
    }

    @Deprecated
    default void H(a aVar, int i10, r5.e eVar) {
    }

    default void J(a aVar, Object obj, long j10) {
    }

    default void U(a aVar, int i10, long j10) {
    }

    default void V(a aVar, n6.h hVar, n6.i iVar) {
    }

    default void Y(a aVar, int i10, int i11) {
    }

    @Deprecated
    default void a(a aVar, int i10, r5.e eVar) {
    }

    default void d(a aVar, int i10, boolean z10) {
    }

    @Deprecated
    default void h(a aVar, int i10, com.google.android.exoplayer2.v0 v0Var) {
    }

    default void i(a aVar, @Nullable com.google.android.exoplayer2.y0 y0Var, int i10) {
    }

    default void k(a aVar, n6.h hVar, n6.i iVar) {
    }

    default void k0(a aVar, long j10, int i10) {
    }

    default void m0(a aVar, com.google.android.exoplayer2.v0 v0Var, @Nullable r5.g gVar) {
    }

    default void n0(a aVar, n6.h hVar, n6.i iVar) {
    }

    default void p(a aVar, com.google.android.exoplayer2.v0 v0Var, @Nullable r5.g gVar) {
    }

    @Deprecated
    default void q0(a aVar, String str, long j10) {
    }

    default void r0(a aVar, boolean z10, int i10) {
    }

    @Deprecated
    default void y(a aVar, String str, long j10) {
    }

    default void D(a aVar, int i10, long j10, long j11) {
    }

    default void G(a aVar, l1.e eVar, l1.e eVar2, int i10) {
    }

    default void O(a aVar, int i10, long j10, long j11) {
    }

    @Deprecated
    default void i0(a aVar, int i10, String str, long j10) {
    }

    default void n(a aVar, String str, long j10, long j11) {
    }

    default void x(a aVar, String str, long j10, long j11) {
    }

    default void c(a aVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
    }

    @Deprecated
    default void j(a aVar, int i10, int i11, int i12, float f10) {
    }
}
