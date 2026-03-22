package t0;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.q0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: GradientFillContent.java */
/* loaded from: classes2.dex */
public class h implements e, a.b, k {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66703a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f66704b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f66705c;

    /* renamed from: d  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f66706d = new LongSparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f66707e = new LongSparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private final Path f66708f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f66709g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f66710h;

    /* renamed from: i  reason: collision with root package name */
    private final List<m> f66711i;

    /* renamed from: j  reason: collision with root package name */
    private final GradientType f66712j;

    /* renamed from: k  reason: collision with root package name */
    private final u0.a<z0.d, z0.d> f66713k;

    /* renamed from: l  reason: collision with root package name */
    private final u0.a<Integer, Integer> f66714l;

    /* renamed from: m  reason: collision with root package name */
    private final u0.a<PointF, PointF> f66715m;

    /* renamed from: n  reason: collision with root package name */
    private final u0.a<PointF, PointF> f66716n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private u0.a<ColorFilter, ColorFilter> f66717o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private u0.t f66718p;

    /* renamed from: q  reason: collision with root package name */
    private final LottieDrawable f66719q;

    /* renamed from: r  reason: collision with root package name */
    private final int f66720r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private u0.a<Float, Float> f66721s;

    /* renamed from: t  reason: collision with root package name */
    float f66722t;

    public h(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar, z0.e eVar) {
        Path path = new Path();
        this.f66708f = path;
        this.f66709g = new s0.a(1);
        this.f66710h = new RectF();
        this.f66711i = new ArrayList();
        this.f66722t = 0.0f;
        this.f66705c = aVar;
        this.f66703a = eVar.f();
        this.f66704b = eVar.i();
        this.f66719q = lottieDrawable;
        this.f66712j = eVar.e();
        path.setFillType(eVar.c());
        this.f66720r = (int) (iVar.d() / 32.0f);
        u0.a<z0.d, z0.d> a10 = eVar.d().a();
        this.f66713k = a10;
        a10.a(this);
        aVar.j(a10);
        u0.a<Integer, Integer> a11 = eVar.g().a();
        this.f66714l = a11;
        a11.a(this);
        aVar.j(a11);
        u0.a<PointF, PointF> a12 = eVar.h().a();
        this.f66715m = a12;
        a12.a(this);
        aVar.j(a12);
        u0.a<PointF, PointF> a13 = eVar.b().a();
        this.f66716n = a13;
        a13.a(this);
        aVar.j(a13);
        if (aVar.x() != null) {
            u0.d a14 = aVar.x().a().a();
            this.f66721s = a14;
            a14.a(this);
            aVar.j(this.f66721s);
        }
    }

    private int[] d(int[] iArr) {
        u0.t tVar = this.f66718p;
        if (tVar != null) {
            Integer[] numArr = (Integer[]) tVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int j() {
        int i10;
        int round = Math.round(this.f66715m.f() * this.f66720r);
        int round2 = Math.round(this.f66716n.f() * this.f66720r);
        int round3 = Math.round(this.f66713k.f() * this.f66720r);
        if (round != 0) {
            i10 = TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER * round;
        } else {
            i10 = 17;
        }
        if (round2 != 0) {
            i10 = i10 * 31 * round2;
        }
        if (round3 != 0) {
            return i10 * 31 * round3;
        }
        return i10;
    }

    private LinearGradient k() {
        float[] fArr;
        int[] iArr;
        long j10 = j();
        LinearGradient linearGradient = this.f66706d.get(j10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h10 = this.f66715m.h();
        PointF h11 = this.f66716n.h();
        z0.d h12 = this.f66713k.h();
        int[] d10 = d(h12.d());
        float[] e10 = h12.e();
        if (d10.length < 2) {
            iArr = new int[]{d10[0], d10[0]};
            fArr = new float[]{0.0f, 1.0f};
        } else {
            fArr = e10;
            iArr = d10;
        }
        LinearGradient linearGradient2 = new LinearGradient(h10.x, h10.y, h11.x, h11.y, iArr, fArr, Shader.TileMode.CLAMP);
        this.f66706d.put(j10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient l() {
        float[] fArr;
        int[] iArr;
        long j10 = j();
        RadialGradient radialGradient = this.f66707e.get(j10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h10 = this.f66715m.h();
        PointF h11 = this.f66716n.h();
        z0.d h12 = this.f66713k.h();
        int[] d10 = d(h12.d());
        float[] e10 = h12.e();
        if (d10.length < 2) {
            iArr = new int[]{d10[0], d10[0]};
            fArr = new float[]{0.0f, 1.0f};
        } else {
            fArr = e10;
            iArr = d10;
        }
        float f10 = h10.x;
        float f11 = h10.y;
        float hypot = (float) Math.hypot(h11.x - f10, h11.y - f11);
        if (hypot <= 0.0f) {
            hypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, hypot, iArr, fArr, Shader.TileMode.CLAMP);
        this.f66707e.put(j10, radialGradient2);
        return radialGradient2;
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f66708f.reset();
        for (int i10 = 0; i10 < this.f66711i.size(); i10++) {
            this.f66708f.addPath(this.f66711i.get(i10).getPath(), matrix);
        }
        this.f66708f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4699d) {
            this.f66714l.o(cVar);
        } else if (t10 == q0.N) {
            u0.a<ColorFilter, ColorFilter> aVar = this.f66717o;
            if (aVar != null) {
                this.f66705c.I(aVar);
            }
            if (cVar == null) {
                this.f66717o = null;
                return;
            }
            u0.t tVar = new u0.t(cVar);
            this.f66717o = tVar;
            tVar.a(this);
            this.f66705c.j(this.f66717o);
        } else if (t10 == q0.O) {
            u0.t tVar2 = this.f66718p;
            if (tVar2 != null) {
                this.f66705c.I(tVar2);
            }
            if (cVar == null) {
                this.f66718p = null;
                return;
            }
            this.f66706d.clear();
            this.f66707e.clear();
            u0.t tVar3 = new u0.t(cVar);
            this.f66718p = tVar3;
            tVar3.a(this);
            this.f66705c.j(this.f66718p);
        } else if (t10 == q0.f4705j) {
            u0.a<Float, Float> aVar2 = this.f66721s;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            u0.t tVar4 = new u0.t(cVar);
            this.f66721s = tVar4;
            tVar4.a(this);
            this.f66705c.j(this.f66721s);
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f66719q.invalidateSelf();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof m) {
                this.f66711i.add((m) cVar);
            }
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66703a;
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        Shader l10;
        if (this.f66704b) {
            return;
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("GradientFillContent#draw");
        }
        this.f66708f.reset();
        for (int i11 = 0; i11 < this.f66711i.size(); i11++) {
            this.f66708f.addPath(this.f66711i.get(i11).getPath(), matrix);
        }
        this.f66708f.computeBounds(this.f66710h, false);
        if (this.f66712j == GradientType.LINEAR) {
            l10 = k();
        } else {
            l10 = l();
        }
        l10.setLocalMatrix(matrix);
        this.f66709g.setShader(l10);
        u0.a<ColorFilter, ColorFilter> aVar2 = this.f66717o;
        if (aVar2 != null) {
            this.f66709g.setColorFilter(aVar2.h());
        }
        u0.a<Float, Float> aVar3 = this.f66721s;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            if (floatValue == 0.0f) {
                this.f66709g.setMaskFilter(null);
            } else if (floatValue != this.f66722t) {
                this.f66709g.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f66722t = floatValue;
        }
        float intValue = this.f66714l.h().intValue() / 100.0f;
        this.f66709g.setAlpha(d1.k.c((int) (i10 * intValue), 0, 255));
        if (aVar != null) {
            aVar.c((int) (intValue * 255.0f), this.f66709g);
        }
        canvas.drawPath(this.f66708f, this.f66709g);
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("GradientFillContent#draw");
        }
    }
}
