package hn;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import zm.w;
/* compiled from: AnalyticsListener.java */
/* loaded from: classes8.dex */
public interface b {

    /* compiled from: AnalyticsListener.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f52927a;

        /* renamed from: b  reason: collision with root package name */
        public final zm.a0 f52928b;

        /* renamed from: c  reason: collision with root package name */
        public final int f52929c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final r.b f52930d;

        /* renamed from: e  reason: collision with root package name */
        public final long f52931e;

        /* renamed from: f  reason: collision with root package name */
        public final zm.a0 f52932f;

        /* renamed from: g  reason: collision with root package name */
        public final int f52933g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final r.b f52934h;

        /* renamed from: i  reason: collision with root package name */
        public final long f52935i;

        /* renamed from: j  reason: collision with root package name */
        public final long f52936j;

        public a(long j10, zm.a0 a0Var, int i10, @Nullable r.b bVar, long j11, zm.a0 a0Var2, int i11, @Nullable r.b bVar2, long j12, long j13) {
            this.f52927a = j10;
            this.f52928b = a0Var;
            this.f52929c = i10;
            this.f52930d = bVar;
            this.f52931e = j11;
            this.f52932f = a0Var2;
            this.f52933g = i11;
            this.f52934h = bVar2;
            this.f52935i = j12;
            this.f52936j = j13;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f52927a == aVar.f52927a && this.f52929c == aVar.f52929c && this.f52931e == aVar.f52931e && this.f52933g == aVar.f52933g && this.f52935i == aVar.f52935i && this.f52936j == aVar.f52936j && Objects.equals(this.f52928b, aVar.f52928b) && Objects.equals(this.f52930d, aVar.f52930d) && Objects.equals(this.f52932f, aVar.f52932f) && Objects.equals(this.f52934h, aVar.f52934h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f52927a), this.f52928b, Integer.valueOf(this.f52929c), this.f52930d, Long.valueOf(this.f52931e), this.f52932f, Integer.valueOf(this.f52933g), this.f52934h, Long.valueOf(this.f52935i), Long.valueOf(this.f52936j));
        }
    }

    /* compiled from: AnalyticsListener.java */
    /* renamed from: hn.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0769b {

        /* renamed from: a  reason: collision with root package name */
        private final zm.n f52937a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<a> f52938b;

        public C0769b(zm.n nVar, SparseArray<a> sparseArray) {
            this.f52937a = nVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(nVar.d());
            for (int i10 = 0; i10 < nVar.d(); i10++) {
                int c10 = nVar.c(i10);
                sparseArray2.append(c10, (a) cn.a.e(sparseArray.get(c10)));
            }
            this.f52938b = sparseArray2;
        }

        public boolean a(int i10) {
            return this.f52937a.a(i10);
        }

        public int b(int i10) {
            return this.f52937a.c(i10);
        }

        public a c(int i10) {
            return (a) cn.a.e(this.f52938b.get(i10));
        }

        public int d() {
            return this.f52937a.d();
        }
    }

    default void F(a aVar) {
    }

    @Deprecated
    default void N(a aVar) {
    }

    @Deprecated
    default void P(a aVar) {
    }

    default void R(a aVar) {
    }

    default void e(a aVar) {
    }

    default void n0(a aVar) {
    }

    default void v(a aVar) {
    }

    default void A(a aVar, AudioSink.a aVar2) {
    }

    default void B(a aVar, boolean z10) {
    }

    default void E(a aVar, zm.d0 d0Var) {
    }

    default void I(a aVar, int i10) {
    }

    default void M(a aVar, w.b bVar) {
    }

    default void Q(a aVar, int i10) {
    }

    default void S(a aVar, bn.b bVar) {
    }

    default void U(a aVar, PlaybackException playbackException) {
    }

    default void V(a aVar, zm.t tVar) {
    }

    default void X(a aVar, zm.i0 i0Var) {
    }

    default void a(a aVar, int i10) {
    }

    @Deprecated
    default void b(a aVar, boolean z10) {
    }

    default void b0(a aVar, Exception exc) {
    }

    default void c(a aVar, String str) {
    }

    default void d0(a aVar, Exception exc) {
    }

    default void e0(a aVar, int i10) {
    }

    default void f0(a aVar, long j10) {
    }

    default void g(a aVar, gn.b bVar) {
    }

    default void h(a aVar, int i10) {
    }

    default void h0(a aVar, boolean z10) {
    }

    default void j(a aVar, gn.b bVar) {
    }

    default void k(a aVar, zm.k kVar) {
    }

    default void k0(a aVar, @Nullable PlaybackException playbackException) {
    }

    default void l(a aVar, sn.j jVar) {
    }

    default void m(a aVar, Exception exc) {
    }

    default void o(a aVar, zm.v vVar) {
    }

    @Deprecated
    default void o0(a aVar, List<bn.a> list) {
    }

    default void p(a aVar, int i10) {
    }

    default void p0(zm.w wVar, C0769b c0769b) {
    }

    default void q(a aVar, gn.b bVar) {
    }

    default void q0(a aVar, Exception exc) {
    }

    default void r(a aVar, String str) {
    }

    default void t(a aVar, float f10) {
    }

    default void t0(a aVar, AudioSink.a aVar2) {
    }

    default void u0(a aVar, sn.j jVar) {
    }

    default void v0(a aVar, zm.e0 e0Var) {
    }

    @Deprecated
    default void w(a aVar, int i10) {
    }

    default void w0(a aVar, gn.b bVar) {
    }

    default void x0(a aVar, boolean z10) {
    }

    default void y(a aVar, boolean z10) {
    }

    default void z(a aVar, zm.s sVar) {
    }

    default void C(a aVar, @Nullable zm.q qVar, int i10) {
    }

    @Deprecated
    default void L(a aVar, String str, long j10) {
    }

    default void O(a aVar, sn.i iVar, sn.j jVar) {
    }

    default void T(a aVar, io.bidmachine.media3.common.a aVar2, @Nullable gn.c cVar) {
    }

    default void Y(a aVar, int i10, long j10) {
    }

    @Deprecated
    default void c0(a aVar, boolean z10, int i10) {
    }

    default void d(a aVar, io.bidmachine.media3.common.a aVar2, @Nullable gn.c cVar) {
    }

    default void g0(a aVar, long j10, int i10) {
    }

    default void i(a aVar, boolean z10, int i10) {
    }

    default void l0(a aVar, sn.i iVar, sn.j jVar) {
    }

    default void m0(a aVar, Object obj, long j10) {
    }

    @Deprecated
    default void n(a aVar, String str, long j10) {
    }

    default void r0(a aVar, int i10, boolean z10) {
    }

    default void s0(a aVar, int i10, int i11) {
    }

    @Deprecated
    default void u(a aVar, sn.i iVar, sn.j jVar) {
    }

    default void D(a aVar, int i10, long j10, long j11) {
    }

    default void H(a aVar, sn.i iVar, sn.j jVar, int i10) {
    }

    default void K(a aVar, String str, long j10, long j11) {
    }

    default void W(a aVar, String str, long j10, long j11) {
    }

    default void Z(a aVar, w.e eVar, w.e eVar2, int i10) {
    }

    default void a0(a aVar, int i10, int i11, boolean z10) {
    }

    default void i0(a aVar, int i10, long j10, long j11) {
    }

    default void f(a aVar, sn.i iVar, sn.j jVar, IOException iOException, boolean z10) {
    }

    @Deprecated
    default void j0(a aVar, int i10, int i11, int i12, float f10) {
    }
}
