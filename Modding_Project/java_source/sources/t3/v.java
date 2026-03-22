package t3;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.producers.n1;
import com.facebook.imagepipeline.producers.o1;
import java.util.Set;
/* compiled from: ImagePipelineFactory.java */
/* loaded from: classes3.dex */
public class v {

    /* renamed from: p  reason: collision with root package name */
    private static final Class<?> f67023p = v.class;

    /* renamed from: q  reason: collision with root package name */
    private static v f67024q;

    /* renamed from: r  reason: collision with root package name */
    private static r f67025r;

    /* renamed from: s  reason: collision with root package name */
    private static boolean f67026s;

    /* renamed from: a  reason: collision with root package name */
    private final n1 f67027a;

    /* renamed from: b  reason: collision with root package name */
    private final t f67028b;

    /* renamed from: c  reason: collision with root package name */
    private final a f67029c;

    /* renamed from: d  reason: collision with root package name */
    private final k2.k<c> f67030d;

    /* renamed from: e  reason: collision with root package name */
    private r3.m<f2.a, y3.e> f67031e;

    /* renamed from: f  reason: collision with root package name */
    private r3.t<f2.a, y3.e> f67032f;

    /* renamed from: g  reason: collision with root package name */
    private r3.m<f2.a, PooledByteBuffer> f67033g;

    /* renamed from: h  reason: collision with root package name */
    private r3.t<f2.a, PooledByteBuffer> f67034h;

    /* renamed from: i  reason: collision with root package name */
    private w3.b f67035i;

    /* renamed from: j  reason: collision with root package name */
    private g4.d f67036j;

    /* renamed from: k  reason: collision with root package name */
    private z f67037k;

    /* renamed from: l  reason: collision with root package name */
    private s0 f67038l;

    /* renamed from: m  reason: collision with root package name */
    private q3.d f67039m;

    /* renamed from: n  reason: collision with root package name */
    private c4.d f67040n;

    /* renamed from: o  reason: collision with root package name */
    private m3.a f67041o;

    public v(t tVar) {
        n1 o1Var;
        if (f4.b.d()) {
            f4.b.a("ImagePipelineConfig()");
        }
        t tVar2 = (t) k2.h.g(tVar);
        this.f67028b = tVar2;
        if (tVar2.n().G()) {
            o1Var = new com.facebook.imagepipeline.producers.b0(tVar.H().a());
        } else {
            o1Var = new o1(tVar.H().a());
        }
        this.f67027a = o1Var;
        this.f67029c = new a(tVar.j());
        if (f4.b.d()) {
            f4.b.b();
        }
        this.f67030d = tVar2.A();
        if (tVar2.n().A()) {
            com.facebook.imageformat.e.e().g(true);
        }
    }

    private r a() {
        s0 p10 = p();
        Set<a4.e> q10 = this.f67028b.q();
        Set<a4.d> a10 = this.f67028b.a();
        k2.k<Boolean> l10 = this.f67028b.l();
        r3.t<f2.a, y3.e> e10 = e();
        r3.t<f2.a, PooledByteBuffer> h10 = h();
        k2.k<c> kVar = this.f67030d;
        r3.j C = this.f67028b.C();
        n1 n1Var = this.f67027a;
        k2.k<Boolean> t10 = this.f67028b.n().t();
        k2.k<Boolean> I = this.f67028b.n().I();
        this.f67028b.G();
        return new r(p10, q10, a10, l10, e10, h10, kVar, C, n1Var, t10, I, null, this.f67028b);
    }

    private m3.a c() {
        if (this.f67041o == null) {
            this.f67041o = m3.b.a(m(), this.f67028b.H(), d(), this.f67028b.n().j(), this.f67028b.n().v(), this.f67028b.n().c(), this.f67028b.n().d(), this.f67028b.u());
        }
        return this.f67041o;
    }

    private w3.b i() {
        w3.b bVar;
        w3.b bVar2;
        if (this.f67035i == null) {
            if (this.f67028b.g() != null) {
                this.f67035i = this.f67028b.g();
            } else {
                m3.a c10 = c();
                if (c10 != null) {
                    bVar = c10.getGifDecoder();
                    bVar2 = c10.getWebPDecoder();
                } else {
                    bVar = null;
                    bVar2 = null;
                }
                w3.b r10 = r();
                this.f67028b.x();
                this.f67035i = new w3.a(bVar, bVar2, r10, n());
            }
        }
        return this.f67035i;
    }

    private g4.d k() {
        if (this.f67036j == null) {
            if (this.f67028b.w() == null && this.f67028b.v() == null && this.f67028b.n().J()) {
                this.f67036j = new g4.h(this.f67028b.n().m());
            } else {
                this.f67036j = new g4.f(this.f67028b.n().m(), this.f67028b.n().x(), this.f67028b.w(), this.f67028b.v(), this.f67028b.n().F());
            }
        }
        return this.f67036j;
    }

    public static v l() {
        return (v) k2.h.h(f67024q, "ImagePipelineFactory was not initialized!");
    }

    private z o() {
        if (this.f67037k == null) {
            this.f67037k = this.f67028b.n().p().a(this.f67028b.getContext(), this.f67028b.i().k(), i(), this.f67028b.c(), this.f67028b.F(), this.f67028b.D(), this.f67028b.n().B(), this.f67028b.H(), this.f67028b.i().i(this.f67028b.z()), this.f67028b.i().j(), e(), h(), this.f67030d, this.f67028b.C(), m(), this.f67028b.n().g(), this.f67028b.n().f(), this.f67028b.n().e(), this.f67028b.n().m(), f(), this.f67028b.n().l(), this.f67028b.n().u());
        }
        return this.f67037k;
    }

    private s0 p() {
        boolean w10 = this.f67028b.n().w();
        if (this.f67038l == null) {
            this.f67038l = new s0(this.f67028b.getContext().getApplicationContext().getContentResolver(), o(), this.f67028b.o(), this.f67028b.D(), this.f67028b.n().L(), this.f67027a, this.f67028b.F(), w10, this.f67028b.n().K(), this.f67028b.f(), k(), this.f67028b.n().E(), this.f67028b.n().C(), this.f67028b.n().a(), this.f67028b.E());
        }
        return this.f67038l;
    }

    public static synchronized void s(Context context) {
        synchronized (v.class) {
            try {
                if (f4.b.d()) {
                    f4.b.a("ImagePipelineFactory#initialize");
                }
                t(s.K(context).a());
                if (f4.b.d()) {
                    f4.b.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void t(t tVar) {
        synchronized (v.class) {
            if (f67024q != null) {
                l2.a.v(f67023p, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
                if (f67026s) {
                    return;
                }
            }
            f67024q = new v(tVar);
        }
    }

    public x3.a b(Context context) {
        m3.a c10 = c();
        if (c10 == null) {
            return null;
        }
        return c10.getAnimatedDrawableFactory(context);
    }

    public r3.m<f2.a, y3.e> d() {
        if (this.f67031e == null) {
            this.f67031e = this.f67028b.B().a(this.f67028b.y(), this.f67028b.m(), this.f67028b.s(), this.f67028b.n().r(), this.f67028b.n().q(), this.f67028b.e());
        }
        return this.f67031e;
    }

    public r3.t<f2.a, y3.e> e() {
        if (this.f67032f == null) {
            this.f67032f = r3.u.a(d(), this.f67028b.k());
        }
        return this.f67032f;
    }

    public a f() {
        return this.f67029c;
    }

    public r3.m<f2.a, PooledByteBuffer> g() {
        if (this.f67033g == null) {
            this.f67033g = r3.q.a(this.f67028b.h(), this.f67028b.m(), this.f67028b.r());
        }
        return this.f67033g;
    }

    public r3.t<f2.a, PooledByteBuffer> h() {
        r3.w<f2.a, PooledByteBuffer> g10;
        if (this.f67034h == null) {
            if (this.f67028b.b() != null) {
                g10 = this.f67028b.b();
            } else {
                g10 = g();
            }
            this.f67034h = r3.r.a(g10, this.f67028b.k());
        }
        return this.f67034h;
    }

    public r j() {
        if (f67025r == null) {
            f67025r = a();
        }
        return f67025r;
    }

    public q3.d m() {
        if (this.f67039m == null) {
            this.f67039m = q3.e.a(this.f67028b.i(), n(), f());
        }
        return this.f67039m;
    }

    public c4.d n() {
        if (this.f67040n == null) {
            this.f67040n = c4.e.a(this.f67028b.i(), this.f67028b.n().H(), this.f67028b.n().s(), this.f67028b.n().o());
        }
        return this.f67040n;
    }

    public x3.a q() {
        if (this.f67028b.n().A()) {
            return new i4.a();
        }
        return null;
    }

    public w3.b r() {
        if (this.f67028b.n().A()) {
            return new i4.b(this.f67028b.getContext().getApplicationContext().getResources());
        }
        return null;
    }
}
