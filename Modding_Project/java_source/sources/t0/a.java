package t0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.q0;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: BaseStrokeContent.java */
/* loaded from: classes2.dex */
public abstract class a implements a.b, k, e {

    /* renamed from: e  reason: collision with root package name */
    private final LottieDrawable f66656e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.airbnb.lottie.model.layer.a f66657f;

    /* renamed from: h  reason: collision with root package name */
    private final float[] f66659h;

    /* renamed from: i  reason: collision with root package name */
    final Paint f66660i;

    /* renamed from: j  reason: collision with root package name */
    private final u0.a<?, Float> f66661j;

    /* renamed from: k  reason: collision with root package name */
    private final u0.a<?, Integer> f66662k;

    /* renamed from: l  reason: collision with root package name */
    private final List<u0.a<?, Float>> f66663l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final u0.a<?, Float> f66664m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private u0.a<ColorFilter, ColorFilter> f66665n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private u0.a<Float, Float> f66666o;

    /* renamed from: p  reason: collision with root package name */
    float f66667p;

    /* renamed from: a  reason: collision with root package name */
    private final PathMeasure f66652a = new PathMeasure();

    /* renamed from: b  reason: collision with root package name */
    private final Path f66653b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f66654c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final RectF f66655d = new RectF();

    /* renamed from: g  reason: collision with root package name */
    private final List<b> f66658g = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseStrokeContent.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<m> f66668a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final u f66669b;

        private b(@Nullable u uVar) {
            this.f66668a = new ArrayList();
            this.f66669b = uVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f10, y0.d dVar, y0.b bVar, List<y0.b> list, y0.b bVar2) {
        s0.a aVar2 = new s0.a(1);
        this.f66660i = aVar2;
        this.f66667p = 0.0f;
        this.f66656e = lottieDrawable;
        this.f66657f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f10);
        this.f66662k = dVar.a();
        this.f66661j = bVar.a();
        if (bVar2 == null) {
            this.f66664m = null;
        } else {
            this.f66664m = bVar2.a();
        }
        this.f66663l = new ArrayList(list.size());
        this.f66659h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f66663l.add(list.get(i10).a());
        }
        aVar.j(this.f66662k);
        aVar.j(this.f66661j);
        for (int i11 = 0; i11 < this.f66663l.size(); i11++) {
            aVar.j(this.f66663l.get(i11));
        }
        u0.a<?, Float> aVar3 = this.f66664m;
        if (aVar3 != null) {
            aVar.j(aVar3);
        }
        this.f66662k.a(this);
        this.f66661j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f66663l.get(i12).a(this);
        }
        u0.a<?, Float> aVar4 = this.f66664m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
        if (aVar.x() != null) {
            u0.d a10 = aVar.x().a().a();
            this.f66666o = a10;
            a10.a(this);
            aVar.j(this.f66666o);
        }
    }

    private void d() {
        float floatValue;
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("StrokeContent#applyDashPattern");
        }
        if (this.f66663l.isEmpty()) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.f66663l.size(); i10++) {
            this.f66659h[i10] = this.f66663l.get(i10).h().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f66659h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f66659h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
        }
        u0.a<?, Float> aVar = this.f66664m;
        if (aVar == null) {
            floatValue = 0.0f;
        } else {
            floatValue = aVar.h().floatValue();
        }
        this.f66660i.setPathEffect(new DashPathEffect(this.f66659h, floatValue));
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
        }
    }

    private void j(Canvas canvas, b bVar) {
        float f10;
        float f11;
        float f12;
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("StrokeContent#applyTrimPath");
        }
        if (bVar.f66669b == null) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f66653b.reset();
        for (int size = bVar.f66668a.size() - 1; size >= 0; size--) {
            this.f66653b.addPath(((m) bVar.f66668a.get(size)).getPath());
        }
        float floatValue = bVar.f66669b.j().h().floatValue() / 100.0f;
        float floatValue2 = bVar.f66669b.d().h().floatValue() / 100.0f;
        float floatValue3 = bVar.f66669b.e().h().floatValue() / 360.0f;
        if (floatValue < 0.01f && floatValue2 > 0.99f) {
            canvas.drawPath(this.f66653b, this.f66660i);
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f66652a.setPath(this.f66653b, false);
        float length = this.f66652a.getLength();
        while (this.f66652a.nextContour()) {
            length += this.f66652a.getLength();
        }
        float f13 = floatValue3 * length;
        float f14 = (floatValue * length) + f13;
        float min = Math.min((floatValue2 * length) + f13, (f14 + length) - 1.0f);
        float f15 = 0.0f;
        for (int size2 = bVar.f66668a.size() - 1; size2 >= 0; size2--) {
            this.f66654c.set(((m) bVar.f66668a.get(size2)).getPath());
            this.f66652a.setPath(this.f66654c, false);
            float length2 = this.f66652a.getLength();
            if (min > length) {
                float f16 = min - length;
                if (f16 < f15 + length2 && f15 < f16) {
                    if (f14 > length) {
                        f12 = (f14 - length) / length2;
                    } else {
                        f12 = 0.0f;
                    }
                    d1.p.a(this.f66654c, f12, Math.min(f16 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f66654c, this.f66660i);
                    f15 += length2;
                }
            }
            float f17 = f15 + length2;
            if (f17 >= f14 && f15 <= min) {
                if (f17 <= min && f14 < f15) {
                    canvas.drawPath(this.f66654c, this.f66660i);
                } else {
                    if (f14 < f15) {
                        f10 = 0.0f;
                    } else {
                        f10 = (f14 - f15) / length2;
                    }
                    if (min > f17) {
                        f11 = 1.0f;
                    } else {
                        f11 = (min - f15) / length2;
                    }
                    d1.p.a(this.f66654c, f10, f11, 0.0f);
                    canvas.drawPath(this.f66654c, this.f66660i);
                }
            }
            f15 += length2;
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
        }
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("StrokeContent#getBounds");
        }
        this.f66653b.reset();
        for (int i10 = 0; i10 < this.f66658g.size(); i10++) {
            b bVar = this.f66658g.get(i10);
            for (int i11 = 0; i11 < bVar.f66668a.size(); i11++) {
                this.f66653b.addPath(((m) bVar.f66668a.get(i11)).getPath(), matrix);
            }
        }
        this.f66653b.computeBounds(this.f66655d, false);
        float r10 = ((u0.d) this.f66661j).r();
        RectF rectF2 = this.f66655d;
        float f10 = r10 / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f66655d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("StrokeContent#getBounds");
        }
    }

    @Override // x0.e
    @CallSuper
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4699d) {
            this.f66662k.o(cVar);
        } else if (t10 == q0.f4717v) {
            this.f66661j.o(cVar);
        } else if (t10 == q0.N) {
            u0.a<ColorFilter, ColorFilter> aVar = this.f66665n;
            if (aVar != null) {
                this.f66657f.I(aVar);
            }
            if (cVar == null) {
                this.f66665n = null;
                return;
            }
            u0.t tVar = new u0.t(cVar);
            this.f66665n = tVar;
            tVar.a(this);
            this.f66657f.j(this.f66665n);
        } else if (t10 == q0.f4705j) {
            u0.a<Float, Float> aVar2 = this.f66666o;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            u0.t tVar2 = new u0.t(cVar);
            this.f66666o = tVar2;
            tVar2.a(this);
            this.f66657f.j(this.f66666o);
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f66656e.invalidateSelf();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        u uVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof u) {
                u uVar2 = (u) cVar;
                if (uVar2.k() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    uVar = uVar2;
                }
            }
        }
        if (uVar != null) {
            uVar.b(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof u) {
                u uVar3 = (u) cVar2;
                if (uVar3.k() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f66658g.add(bVar);
                    }
                    bVar = new b(uVar3);
                    uVar3.b(this);
                }
            }
            if (cVar2 instanceof m) {
                if (bVar == null) {
                    bVar = new b(uVar);
                }
                bVar.f66668a.add((m) cVar2);
            }
        }
        if (bVar != null) {
            this.f66658g.add(bVar);
        }
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("StrokeContent#draw");
        }
        if (d1.p.h(matrix)) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        float intValue = this.f66662k.h().intValue() / 100.0f;
        this.f66660i.setAlpha(d1.k.c((int) (i10 * intValue), 0, 255));
        this.f66660i.setStrokeWidth(((u0.d) this.f66661j).r());
        if (this.f66660i.getStrokeWidth() <= 0.0f) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        d();
        u0.a<ColorFilter, ColorFilter> aVar2 = this.f66665n;
        if (aVar2 != null) {
            this.f66660i.setColorFilter(aVar2.h());
        }
        u0.a<Float, Float> aVar3 = this.f66666o;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            if (floatValue == 0.0f) {
                this.f66660i.setMaskFilter(null);
            } else if (floatValue != this.f66667p) {
                this.f66660i.setMaskFilter(this.f66657f.y(floatValue));
            }
            this.f66667p = floatValue;
        }
        if (aVar != null) {
            aVar.c((int) (intValue * 255.0f), this.f66660i);
        }
        canvas.save();
        canvas.concat(matrix);
        for (int i11 = 0; i11 < this.f66658g.size(); i11++) {
            b bVar = this.f66658g.get(i11);
            if (bVar.f66669b != null) {
                j(canvas, bVar);
            } else {
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.b("StrokeContent#buildPath");
                }
                this.f66653b.reset();
                for (int size = bVar.f66668a.size() - 1; size >= 0; size--) {
                    this.f66653b.addPath(((m) bVar.f66668a.get(size)).getPath());
                }
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("StrokeContent#buildPath");
                    com.airbnb.lottie.d.b("StrokeContent#drawPath");
                }
                canvas.drawPath(this.f66653b, this.f66660i);
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("StrokeContent#drawPath");
                }
            }
        }
        canvas.restore();
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("StrokeContent#draw");
        }
    }
}
