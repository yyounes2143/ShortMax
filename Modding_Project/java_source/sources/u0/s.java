package u0;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.q0;
import java.util.Collections;
import u0.a;
/* compiled from: TransformKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class s {

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f67761b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f67762c;

    /* renamed from: d  reason: collision with root package name */
    private final Matrix f67763d;

    /* renamed from: e  reason: collision with root package name */
    private final float[] f67764e;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private a<PointF, PointF> f67771l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a<?, PointF> f67772m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a<e1.d, e1.d> f67773n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private a<Float, Float> f67774o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private a<Integer, Integer> f67775p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private d f67776q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private d f67777r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private d f67778s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private d f67779t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private d f67780u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private a<?, Float> f67781v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private a<?, Float> f67782w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f67783x;

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f67760a = new Matrix();

    /* renamed from: f  reason: collision with root package name */
    private float f67765f = Float.NaN;

    /* renamed from: g  reason: collision with root package name */
    private float f67766g = Float.NaN;

    /* renamed from: h  reason: collision with root package name */
    private float f67767h = Float.NaN;

    /* renamed from: i  reason: collision with root package name */
    private float f67768i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f67769j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    private boolean f67770k = true;

    public s(y0.n nVar) {
        a<PointF, PointF> a10;
        a<PointF, PointF> a11;
        a<e1.d, e1.d> a12;
        d a13;
        d a14;
        d a15;
        d a16;
        d a17;
        d a18;
        if (nVar.c() == null) {
            a10 = null;
        } else {
            a10 = nVar.c().a();
        }
        this.f67771l = a10;
        if (nVar.f() == null) {
            a11 = null;
        } else {
            a11 = nVar.f().a();
        }
        this.f67772m = a11;
        if (nVar.k() == null) {
            a12 = null;
        } else {
            a12 = nVar.k().a();
        }
        this.f67773n = a12;
        if (nVar.g() == null) {
            a13 = null;
        } else {
            a13 = nVar.g().a();
        }
        this.f67774o = a13;
        if (nVar.l() == null) {
            a14 = null;
        } else {
            a14 = nVar.l().a();
        }
        this.f67776q = a14;
        this.f67783x = nVar.o();
        if (nVar.h() == null) {
            a15 = null;
        } else {
            a15 = nVar.h().a();
        }
        this.f67778s = a15;
        if (nVar.i() == null) {
            a16 = null;
        } else {
            a16 = nVar.i().a();
        }
        this.f67779t = a16;
        if (nVar.j() == null) {
            a17 = null;
        } else {
            a17 = nVar.j().a();
        }
        this.f67780u = a17;
        if (this.f67776q != null) {
            this.f67761b = new Matrix();
            this.f67762c = new Matrix();
            this.f67763d = new Matrix();
            this.f67764e = new float[9];
        } else {
            this.f67761b = null;
            this.f67762c = null;
            this.f67763d = null;
            this.f67764e = null;
        }
        if (nVar.m() == null) {
            a18 = null;
        } else {
            a18 = nVar.m().a();
        }
        this.f67777r = a18;
        if (nVar.e() != null) {
            this.f67775p = nVar.e().a();
        }
        if (nVar.n() != null) {
            this.f67781v = nVar.n().a();
        } else {
            this.f67781v = null;
        }
        if (nVar.d() != null) {
            this.f67782w = nVar.d().a();
        } else {
            this.f67782w = null;
        }
    }

    private void g() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f67764e[i10] = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.f67770k = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.f67770k = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.f67770k = true;
    }

    public void d(com.airbnb.lottie.model.layer.a aVar) {
        aVar.j(this.f67775p);
        aVar.j(this.f67781v);
        aVar.j(this.f67782w);
        aVar.j(this.f67771l);
        aVar.j(this.f67772m);
        aVar.j(this.f67773n);
        aVar.j(this.f67774o);
        aVar.j(this.f67776q);
        aVar.j(this.f67777r);
        aVar.j(this.f67778s);
        aVar.j(this.f67779t);
        aVar.j(this.f67780u);
    }

    public void e(a.b bVar) {
        a<Integer, Integer> aVar = this.f67775p;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a<?, Float> aVar2 = this.f67781v;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a<?, Float> aVar3 = this.f67782w;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a<PointF, PointF> aVar4 = this.f67771l;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a<?, PointF> aVar5 = this.f67772m;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a<e1.d, e1.d> aVar6 = this.f67773n;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a<Float, Float> aVar7 = this.f67774o;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f67776q;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f67777r;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
        d dVar3 = this.f67778s;
        if (dVar3 != null) {
            dVar3.a(bVar);
            this.f67778s.a(new a.b() { // from class: u0.p
                @Override // u0.a.b
                public final void f() {
                    s.this.m();
                }
            });
        }
        d dVar4 = this.f67779t;
        if (dVar4 != null) {
            dVar4.a(bVar);
            this.f67779t.a(new a.b() { // from class: u0.q
                @Override // u0.a.b
                public final void f() {
                    s.this.n();
                }
            });
        }
        d dVar5 = this.f67780u;
        if (dVar5 != null) {
            dVar5.a(bVar);
            this.f67780u.a(new a.b() { // from class: u0.r
                @Override // u0.a.b
                public final void f() {
                    s.this.o();
                }
            });
        }
    }

    public <T> boolean f(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4701f) {
            a<PointF, PointF> aVar = this.f67771l;
            if (aVar == null) {
                this.f67771l = new t(cVar, new PointF());
                return true;
            }
            aVar.o(cVar);
            return true;
        } else if (t10 == q0.f4702g) {
            a<?, PointF> aVar2 = this.f67772m;
            if (aVar2 == null) {
                this.f67772m = new t(cVar, new PointF());
                return true;
            }
            aVar2.o(cVar);
            return true;
        } else {
            if (t10 == q0.f4703h) {
                a<?, PointF> aVar3 = this.f67772m;
                if (aVar3 instanceof n) {
                    ((n) aVar3).t(cVar);
                    return true;
                }
            }
            if (t10 == q0.f4704i) {
                a<?, PointF> aVar4 = this.f67772m;
                if (aVar4 instanceof n) {
                    ((n) aVar4).u(cVar);
                    return true;
                }
            }
            if (t10 == q0.f4710o) {
                a<e1.d, e1.d> aVar5 = this.f67773n;
                if (aVar5 == null) {
                    this.f67773n = new t(cVar, new e1.d());
                    return true;
                }
                aVar5.o(cVar);
                return true;
            } else if (t10 == q0.f4711p) {
                a<Float, Float> aVar6 = this.f67774o;
                if (aVar6 == null) {
                    this.f67774o = new t(cVar, Float.valueOf(0.0f));
                    return true;
                }
                aVar6.o(cVar);
                return true;
            } else if (t10 == q0.f4698c) {
                a<Integer, Integer> aVar7 = this.f67775p;
                if (aVar7 == null) {
                    this.f67775p = new t(cVar, 100);
                    return true;
                }
                aVar7.o(cVar);
                return true;
            } else if (t10 == q0.F) {
                a<?, Float> aVar8 = this.f67781v;
                if (aVar8 == null) {
                    this.f67781v = new t(cVar, Float.valueOf(100.0f));
                    return true;
                }
                aVar8.o(cVar);
                return true;
            } else if (t10 == q0.G) {
                a<?, Float> aVar9 = this.f67782w;
                if (aVar9 == null) {
                    this.f67782w = new t(cVar, Float.valueOf(100.0f));
                    return true;
                }
                aVar9.o(cVar);
                return true;
            } else if (t10 == q0.f4715t) {
                if (this.f67776q == null) {
                    this.f67776q = new d(Collections.singletonList(new e1.a(Float.valueOf(0.0f))));
                }
                this.f67776q.o(cVar);
                return true;
            } else if (t10 == q0.f4716u) {
                if (this.f67777r == null) {
                    this.f67777r = new d(Collections.singletonList(new e1.a(Float.valueOf(0.0f))));
                }
                this.f67777r.o(cVar);
                return true;
            } else if (t10 == q0.f4712q) {
                if (this.f67778s == null) {
                    this.f67778s = new d(Collections.singletonList(new e1.a(Float.valueOf(0.0f))));
                }
                this.f67778s.o(cVar);
                return true;
            } else if (t10 == q0.f4713r) {
                if (this.f67779t == null) {
                    this.f67779t = new d(Collections.singletonList(new e1.a(Float.valueOf(0.0f))));
                }
                this.f67779t.o(cVar);
                return true;
            } else if (t10 == q0.f4714s) {
                if (this.f67780u == null) {
                    this.f67780u = new d(Collections.singletonList(new e1.a(Float.valueOf(0.0f))));
                }
                this.f67780u.o(cVar);
                return true;
            } else {
                return false;
            }
        }
    }

    @Nullable
    public a<?, Float> h() {
        return this.f67782w;
    }

    public Matrix i() {
        d dVar;
        d dVar2;
        float r10;
        d dVar3;
        PointF h10;
        e1.d h11;
        d dVar4;
        float cos;
        d dVar5;
        float sin;
        PointF h12;
        float f10;
        float f11;
        float f12;
        PointF h13;
        PointF h14;
        float f13;
        this.f67760a.reset();
        d dVar6 = this.f67778s;
        float f14 = 1.0f;
        if ((dVar6 != null && dVar6.r() != 0.0f) || (((dVar = this.f67779t) != null && dVar.r() != 0.0f) || ((dVar2 = this.f67780u) != null && dVar2.r() != 0.0f))) {
            d dVar7 = this.f67778s;
            if (dVar7 != null) {
                f10 = dVar7.r();
            } else {
                f10 = 0.0f;
            }
            d dVar8 = this.f67779t;
            if (dVar8 != null) {
                f11 = dVar8.r();
            } else {
                f11 = 0.0f;
            }
            d dVar9 = this.f67780u;
            if (dVar9 != null) {
                f12 = dVar9.r();
            } else {
                f12 = 0.0f;
            }
            if (this.f67770k || f10 != this.f67765f || f11 != this.f67766g || f12 != this.f67767h) {
                this.f67765f = f10;
                this.f67766g = f11;
                this.f67767h = f12;
                if (f10 != 0.0f) {
                    this.f67768i = (float) Math.cos(Math.toRadians(f10));
                } else {
                    this.f67768i = 1.0f;
                }
                if (f11 != 0.0f) {
                    this.f67769j = (float) Math.cos(Math.toRadians(f11));
                } else {
                    this.f67769j = 1.0f;
                }
                this.f67770k = false;
            }
            a<PointF, PointF> aVar = this.f67771l;
            e1.d dVar10 = null;
            if (aVar == null) {
                h13 = null;
            } else {
                h13 = aVar.h();
            }
            a<?, PointF> aVar2 = this.f67772m;
            if (aVar2 == null) {
                h14 = null;
            } else {
                h14 = aVar2.h();
            }
            a<e1.d, e1.d> aVar3 = this.f67773n;
            if (aVar3 != null) {
                dVar10 = aVar3.h();
            }
            if (dVar10 != null) {
                f13 = dVar10.b();
            } else {
                f13 = 1.0f;
            }
            if (dVar10 != null) {
                f14 = dVar10.c();
            }
            d1.o.b(this.f67760a, h13, h14, f13, f14, f10, f11, f12, this.f67768i, this.f67769j);
            return this.f67760a;
        }
        a<?, PointF> aVar4 = this.f67772m;
        if (aVar4 != null && (h12 = aVar4.h()) != null) {
            float f15 = h12.x;
            if (f15 != 0.0f || h12.y != 0.0f) {
                this.f67760a.preTranslate(f15, h12.y);
            }
        }
        if (this.f67783x) {
            if (aVar4 != null) {
                float f16 = aVar4.f();
                PointF h15 = aVar4.h();
                float f17 = h15.x;
                float f18 = h15.y;
                aVar4.n(1.0E-4f + f16);
                PointF h16 = aVar4.h();
                aVar4.n(f16);
                this.f67760a.preRotate((float) Math.toDegrees(Math.atan2(h16.y - f18, h16.x - f17)));
            }
        } else {
            a<Float, Float> aVar5 = this.f67774o;
            if (aVar5 != null) {
                if (aVar5 instanceof t) {
                    r10 = aVar5.h().floatValue();
                } else {
                    r10 = ((d) aVar5).r();
                }
                if (r10 != 0.0f) {
                    this.f67760a.preRotate(r10);
                }
            }
        }
        if (this.f67776q != null) {
            if (this.f67777r == null) {
                cos = 0.0f;
            } else {
                cos = (float) Math.cos(Math.toRadians((-dVar4.r()) + 90.0f));
            }
            if (this.f67777r == null) {
                sin = 1.0f;
            } else {
                sin = (float) Math.sin(Math.toRadians((-dVar5.r()) + 90.0f));
            }
            float tan = (float) Math.tan(Math.toRadians(dVar3.r()));
            g();
            float[] fArr = this.f67764e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f19 = -sin;
            fArr[3] = f19;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f67761b.setValues(fArr);
            g();
            float[] fArr2 = this.f67764e;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f67762c.setValues(fArr2);
            g();
            float[] fArr3 = this.f67764e;
            fArr3[0] = cos;
            fArr3[1] = f19;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f67763d.setValues(fArr3);
            this.f67762c.preConcat(this.f67761b);
            this.f67763d.preConcat(this.f67762c);
            this.f67760a.preConcat(this.f67763d);
        }
        a<e1.d, e1.d> aVar6 = this.f67773n;
        if (aVar6 != null && (h11 = aVar6.h()) != null && (h11.b() != 1.0f || h11.c() != 1.0f)) {
            this.f67760a.preScale(h11.b(), h11.c());
        }
        a<PointF, PointF> aVar7 = this.f67771l;
        if (aVar7 != null && (h10 = aVar7.h()) != null) {
            float f20 = h10.x;
            if (f20 != 0.0f || h10.y != 0.0f) {
                this.f67760a.preTranslate(-f20, -h10.y);
            }
        }
        return this.f67760a;
    }

    public Matrix j(float f10) {
        PointF h10;
        e1.d h11;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        a<?, PointF> aVar = this.f67772m;
        PointF pointF = null;
        if (aVar == null) {
            h10 = null;
        } else {
            h10 = aVar.h();
        }
        a<e1.d, e1.d> aVar2 = this.f67773n;
        if (aVar2 == null) {
            h11 = null;
        } else {
            h11 = aVar2.h();
        }
        a<PointF, PointF> aVar3 = this.f67771l;
        if (aVar3 != null) {
            pointF = aVar3.h();
        }
        this.f67760a.reset();
        if (h10 != null) {
            this.f67760a.preTranslate(h10.x * f10, h10.y * f10);
        }
        d dVar = this.f67778s;
        float f18 = 0.0f;
        if (dVar != null) {
            f11 = dVar.r() * f10;
        } else {
            f11 = 0.0f;
        }
        d dVar2 = this.f67779t;
        if (dVar2 != null) {
            f12 = dVar2.r() * f10;
        } else {
            f12 = 0.0f;
        }
        d dVar3 = this.f67780u;
        if (dVar3 != null) {
            f13 = dVar3.r() * f10;
        } else {
            f13 = 0.0f;
        }
        int i10 = (f11 > 0.0f ? 1 : (f11 == 0.0f ? 0 : -1));
        if (i10 == 0 && f12 == 0.0f && f13 == 0.0f) {
            a<Float, Float> aVar4 = this.f67774o;
            if (aVar4 != null) {
                float floatValue = aVar4.h().floatValue();
                Matrix matrix = this.f67760a;
                float f19 = floatValue * f10;
                if (pointF == null) {
                    f17 = 0.0f;
                } else {
                    f17 = pointF.x;
                }
                if (pointF != null) {
                    f18 = pointF.y;
                }
                matrix.preRotate(f19, f17, f18);
            }
        } else {
            if (i10 != 0) {
                f14 = (float) Math.cos(Math.toRadians(f11));
            } else {
                f14 = 1.0f;
            }
            if (f12 != 0.0f) {
                f15 = (float) Math.cos(Math.toRadians(f12));
            } else {
                f15 = 1.0f;
            }
            if (f13 != 0.0f) {
                Matrix matrix2 = this.f67760a;
                if (pointF == null) {
                    f16 = 0.0f;
                } else {
                    f16 = pointF.x;
                }
                if (pointF != null) {
                    f18 = pointF.y;
                }
                matrix2.preRotate(f13, f16, f18);
            }
            d1.o.a(this.f67760a, f11, f12, 0.0f, f14, f15);
        }
        if (h11 != null) {
            double d10 = f10;
            this.f67760a.preScale((float) Math.pow(h11.b(), d10), (float) Math.pow(h11.c(), d10));
        }
        return this.f67760a;
    }

    @Nullable
    public a<?, Integer> k() {
        return this.f67775p;
    }

    @Nullable
    public a<?, Float> l() {
        return this.f67781v;
    }

    public void p(float f10) {
        a<Integer, Integer> aVar = this.f67775p;
        if (aVar != null) {
            aVar.n(f10);
        }
        a<?, Float> aVar2 = this.f67781v;
        if (aVar2 != null) {
            aVar2.n(f10);
        }
        a<?, Float> aVar3 = this.f67782w;
        if (aVar3 != null) {
            aVar3.n(f10);
        }
        a<PointF, PointF> aVar4 = this.f67771l;
        if (aVar4 != null) {
            aVar4.n(f10);
        }
        a<?, PointF> aVar5 = this.f67772m;
        if (aVar5 != null) {
            aVar5.n(f10);
        }
        a<e1.d, e1.d> aVar6 = this.f67773n;
        if (aVar6 != null) {
            aVar6.n(f10);
        }
        a<Float, Float> aVar7 = this.f67774o;
        if (aVar7 != null) {
            aVar7.n(f10);
        }
        d dVar = this.f67776q;
        if (dVar != null) {
            dVar.n(f10);
        }
        d dVar2 = this.f67777r;
        if (dVar2 != null) {
            dVar2.n(f10);
        }
        d dVar3 = this.f67778s;
        if (dVar3 != null) {
            dVar3.n(f10);
        }
        d dVar4 = this.f67779t;
        if (dVar4 != null) {
            dVar4.n(f10);
        }
        d dVar5 = this.f67780u;
        if (dVar5 != null) {
            dVar5.n(f10);
        }
    }
}
