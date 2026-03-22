package t0;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.q0;
import java.util.List;
import u0.a;
/* compiled from: PolystarContent.java */
/* loaded from: classes2.dex */
public class n implements m, a.b, k {

    /* renamed from: e  reason: collision with root package name */
    private final String f66744e;

    /* renamed from: f  reason: collision with root package name */
    private final LottieDrawable f66745f;

    /* renamed from: g  reason: collision with root package name */
    private final PolystarShape.Type f66746g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f66747h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f66748i;

    /* renamed from: j  reason: collision with root package name */
    private final u0.a<?, Float> f66749j;

    /* renamed from: k  reason: collision with root package name */
    private final u0.a<?, PointF> f66750k;

    /* renamed from: l  reason: collision with root package name */
    private final u0.a<?, Float> f66751l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final u0.a<?, Float> f66752m;

    /* renamed from: n  reason: collision with root package name */
    private final u0.a<?, Float> f66753n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final u0.a<?, Float> f66754o;

    /* renamed from: p  reason: collision with root package name */
    private final u0.a<?, Float> f66755p;

    /* renamed from: r  reason: collision with root package name */
    private boolean f66757r;

    /* renamed from: a  reason: collision with root package name */
    private final Path f66740a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f66741b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final PathMeasure f66742c = new PathMeasure();

    /* renamed from: d  reason: collision with root package name */
    private final float[] f66743d = new float[2];

    /* renamed from: q  reason: collision with root package name */
    private final b f66756q = new b();

    /* compiled from: PolystarContent.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66758a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f66758a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66758a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f66745f = lottieDrawable;
        this.f66744e = polystarShape.d();
        PolystarShape.Type j10 = polystarShape.j();
        this.f66746g = j10;
        this.f66747h = polystarShape.k();
        this.f66748i = polystarShape.l();
        u0.d a10 = polystarShape.g().a();
        this.f66749j = a10;
        u0.a<PointF, PointF> a11 = polystarShape.h().a();
        this.f66750k = a11;
        u0.d a12 = polystarShape.i().a();
        this.f66751l = a12;
        u0.d a13 = polystarShape.e().a();
        this.f66753n = a13;
        u0.d a14 = polystarShape.f().a();
        this.f66755p = a14;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (j10 == type) {
            this.f66752m = polystarShape.b().a();
            this.f66754o = polystarShape.c().a();
        } else {
            this.f66752m = null;
            this.f66754o = null;
        }
        aVar.j(a10);
        aVar.j(a11);
        aVar.j(a12);
        aVar.j(a13);
        aVar.j(a14);
        if (j10 == type) {
            aVar.j(this.f66752m);
            aVar.j(this.f66754o);
        }
        a10.a(this);
        a11.a(this);
        a12.a(this);
        a13.a(this);
        a14.a(this);
        if (j10 == type) {
            this.f66752m.a(this);
            this.f66754o.a(this);
        }
    }

    private void d() {
        double floatValue;
        double d10;
        float f10;
        n nVar;
        n nVar2 = this;
        int floor = (int) Math.floor(nVar2.f66749j.h().floatValue());
        u0.a<?, Float> aVar = nVar2.f66751l;
        if (aVar == null) {
            floatValue = 0.0d;
        } else {
            floatValue = aVar.h().floatValue();
        }
        double radians = Math.toRadians(floatValue - 90.0d);
        double d11 = floor;
        float floatValue2 = nVar2.f66755p.h().floatValue() / 100.0f;
        float floatValue3 = nVar2.f66753n.h().floatValue();
        double d12 = floatValue3;
        float cos = (float) (Math.cos(radians) * d12);
        float sin = (float) (Math.sin(radians) * d12);
        nVar2.f66740a.moveTo(cos, sin);
        double d13 = (float) (6.283185307179586d / d11);
        double ceil = Math.ceil(d11);
        double d14 = radians + d13;
        int i10 = 0;
        while (true) {
            double d15 = i10;
            if (d15 < ceil) {
                int i11 = i10;
                float cos2 = (float) (d12 * Math.cos(d14));
                double d16 = d13;
                float sin2 = (float) (d12 * Math.sin(d14));
                if (floatValue2 != 0.0f) {
                    d10 = d12;
                    double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                    float cos3 = (float) Math.cos(atan2);
                    f10 = sin2;
                    double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                    float f11 = floatValue3 * floatValue2 * 0.25f;
                    float f12 = cos3 * f11;
                    float sin3 = ((float) Math.sin(atan2)) * f11;
                    float cos4 = ((float) Math.cos(atan22)) * f11;
                    float sin4 = f11 * ((float) Math.sin(atan22));
                    if (d15 == ceil - 1.0d) {
                        nVar = this;
                        nVar.f66741b.reset();
                        nVar.f66741b.moveTo(cos, sin);
                        float f13 = cos - f12;
                        float f14 = sin - sin3;
                        float f15 = cos2 + cos4;
                        float f16 = sin4 + f10;
                        nVar.f66741b.cubicTo(f13, f14, f15, f16, cos2, f10);
                        nVar.f66742c.setPath(nVar.f66741b, false);
                        PathMeasure pathMeasure = nVar.f66742c;
                        pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, nVar.f66743d, null);
                        Path path = nVar.f66740a;
                        float[] fArr = nVar.f66743d;
                        path.cubicTo(f13, f14, f15, f16, fArr[0], fArr[1]);
                    } else {
                        nVar = this;
                        nVar.f66740a.cubicTo(cos - f12, sin - sin3, cos2 + cos4, f10 + sin4, cos2, f10);
                    }
                } else {
                    d10 = d12;
                    f10 = sin2;
                    nVar = nVar2;
                    if (d15 != ceil - 1.0d) {
                        nVar.f66740a.lineTo(cos2, f10);
                    } else {
                        sin = f10;
                        cos = cos2;
                        d13 = d16;
                        i10 = i11 + 1;
                        nVar2 = nVar;
                        d12 = d10;
                    }
                }
                d14 += d16;
                sin = f10;
                cos = cos2;
                d13 = d16;
                i10 = i11 + 1;
                nVar2 = nVar;
                d12 = d10;
            } else {
                n nVar3 = nVar2;
                PointF h10 = nVar3.f66750k.h();
                nVar3.f66740a.offset(h10.x, h10.y);
                nVar3.f66740a.close();
                return;
            }
        }
    }

    private void j() {
        double floatValue;
        float f10;
        float f11;
        int i10;
        float f12;
        float f13;
        double d10;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        double d11;
        float f19;
        float f20;
        float f21;
        double d12;
        float f22;
        float f23;
        float f24;
        float f25;
        float floatValue2 = this.f66749j.h().floatValue();
        u0.a<?, Float> aVar = this.f66751l;
        if (aVar == null) {
            floatValue = 0.0d;
        } else {
            floatValue = aVar.h().floatValue();
        }
        double radians = Math.toRadians(floatValue - 90.0d);
        double d13 = floatValue2;
        float f26 = (float) (6.283185307179586d / d13);
        if (this.f66748i) {
            f26 *= -1.0f;
        }
        float f27 = f26 / 2.0f;
        float f28 = floatValue2 - ((int) floatValue2);
        int i11 = (f28 > 0.0f ? 1 : (f28 == 0.0f ? 0 : -1));
        if (i11 != 0) {
            radians += (1.0f - f28) * f27;
        }
        float floatValue3 = this.f66753n.h().floatValue();
        float floatValue4 = this.f66752m.h().floatValue();
        u0.a<?, Float> aVar2 = this.f66754o;
        if (aVar2 != null) {
            f10 = aVar2.h().floatValue() / 100.0f;
        } else {
            f10 = 0.0f;
        }
        u0.a<?, Float> aVar3 = this.f66755p;
        if (aVar3 != null) {
            f11 = aVar3.h().floatValue() / 100.0f;
        } else {
            f11 = 0.0f;
        }
        if (i11 != 0) {
            f15 = ((floatValue3 - floatValue4) * f28) + floatValue4;
            i10 = i11;
            double d14 = f15;
            float cos = (float) (d14 * Math.cos(radians));
            f14 = (float) (d14 * Math.sin(radians));
            this.f66740a.moveTo(cos, f14);
            d10 = radians + ((f26 * f28) / 2.0f);
            f12 = cos;
            f13 = f27;
        } else {
            i10 = i11;
            double d15 = floatValue3;
            float cos2 = (float) (Math.cos(radians) * d15);
            float sin = (float) (d15 * Math.sin(radians));
            this.f66740a.moveTo(cos2, sin);
            f12 = cos2;
            f13 = f27;
            d10 = radians + f13;
            f14 = sin;
            f15 = 0.0f;
        }
        double ceil = Math.ceil(d13) * 2.0d;
        int i12 = 0;
        float f29 = f13;
        float f30 = f12;
        boolean z10 = false;
        while (true) {
            double d16 = i12;
            if (d16 < ceil) {
                if (z10) {
                    f16 = floatValue3;
                } else {
                    f16 = floatValue4;
                }
                int i13 = (f15 > 0.0f ? 1 : (f15 == 0.0f ? 0 : -1));
                if (i13 != 0 && d16 == ceil - 2.0d) {
                    f17 = f26;
                    f18 = (f26 * f28) / 2.0f;
                } else {
                    f17 = f26;
                    f18 = f29;
                }
                if (i13 != 0 && d16 == ceil - 1.0d) {
                    d11 = d16;
                    f19 = f15;
                } else {
                    d11 = d16;
                    f19 = f15;
                    f15 = f16;
                }
                double d17 = f15;
                double d18 = ceil;
                float cos3 = (float) (d17 * Math.cos(d10));
                float sin2 = (float) (d17 * Math.sin(d10));
                if (f10 == 0.0f && f11 == 0.0f) {
                    this.f66740a.lineTo(cos3, sin2);
                    d12 = d10;
                    f20 = f10;
                    f21 = f11;
                } else {
                    f20 = f10;
                    double atan2 = (float) (Math.atan2(f14, f30) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    f21 = f11;
                    d12 = d10;
                    double atan22 = (float) (Math.atan2(sin2, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    if (z10) {
                        f22 = f20;
                    } else {
                        f22 = f21;
                    }
                    if (z10) {
                        f23 = f21;
                    } else {
                        f23 = f20;
                    }
                    if (z10) {
                        f24 = floatValue4;
                    } else {
                        f24 = floatValue3;
                    }
                    if (z10) {
                        f25 = floatValue3;
                    } else {
                        f25 = floatValue4;
                    }
                    float f31 = f24 * f22 * 0.47829f;
                    float f32 = cos4 * f31;
                    float f33 = f31 * sin3;
                    float f34 = f25 * f23 * 0.47829f;
                    float f35 = cos5 * f34;
                    float f36 = f34 * sin4;
                    if (i10 != 0) {
                        if (i12 == 0) {
                            f32 *= f28;
                            f33 *= f28;
                        } else if (d11 == d18 - 1.0d) {
                            f35 *= f28;
                            f36 *= f28;
                        }
                    }
                    this.f66740a.cubicTo(f30 - f32, f14 - f33, cos3 + f35, sin2 + f36, cos3, sin2);
                }
                d10 = d12 + f18;
                z10 = !z10;
                i12++;
                f30 = cos3;
                f14 = sin2;
                f11 = f21;
                f10 = f20;
                f15 = f19;
                f26 = f17;
                ceil = d18;
            } else {
                PointF h10 = this.f66750k.h();
                this.f66740a.offset(h10.x, h10.y);
                this.f66740a.close();
                return;
            }
        }
    }

    private void k() {
        this.f66757r = false;
        this.f66745f.invalidateSelf();
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        u0.a<?, Float> aVar;
        u0.a<?, Float> aVar2;
        if (t10 == q0.f4721z) {
            this.f66749j.o(cVar);
        } else if (t10 == q0.A) {
            this.f66751l.o(cVar);
        } else if (t10 == q0.f4709n) {
            this.f66750k.o(cVar);
        } else if (t10 == q0.B && (aVar2 = this.f66752m) != null) {
            aVar2.o(cVar);
        } else if (t10 == q0.C) {
            this.f66753n.o(cVar);
        } else if (t10 == q0.D && (aVar = this.f66754o) != null) {
            aVar.o(cVar);
        } else if (t10 == q0.E) {
            this.f66755p.o(cVar);
        }
    }

    @Override // u0.a.b
    public void f() {
        k();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f66756q.a(uVar);
                    uVar.b(this);
                }
            }
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66744e;
    }

    @Override // t0.m
    public Path getPath() {
        if (this.f66757r) {
            return this.f66740a;
        }
        this.f66740a.reset();
        if (this.f66747h) {
            this.f66757r = true;
            return this.f66740a;
        }
        int i10 = a.f66758a[this.f66746g.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                d();
            }
        } else {
            j();
        }
        this.f66740a.close();
        this.f66756q.b(this.f66740a);
        this.f66757r = true;
        return this.f66740a;
    }
}
