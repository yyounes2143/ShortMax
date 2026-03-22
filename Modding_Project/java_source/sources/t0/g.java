package t0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.q0;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: FillContent.java */
/* loaded from: classes2.dex */
public class g implements e, a.b, k {

    /* renamed from: a  reason: collision with root package name */
    private final Path f66691a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f66692b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f66693c;

    /* renamed from: d  reason: collision with root package name */
    private final String f66694d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f66695e;

    /* renamed from: f  reason: collision with root package name */
    private final List<m> f66696f;

    /* renamed from: g  reason: collision with root package name */
    private final u0.a<Integer, Integer> f66697g;

    /* renamed from: h  reason: collision with root package name */
    private final u0.a<Integer, Integer> f66698h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private u0.a<ColorFilter, ColorFilter> f66699i;

    /* renamed from: j  reason: collision with root package name */
    private final LottieDrawable f66700j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private u0.a<Float, Float> f66701k;

    /* renamed from: l  reason: collision with root package name */
    float f66702l;

    public g(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.j jVar) {
        Path path = new Path();
        this.f66691a = path;
        this.f66692b = new s0.a(1);
        this.f66696f = new ArrayList();
        this.f66693c = aVar;
        this.f66694d = jVar.d();
        this.f66695e = jVar.f();
        this.f66700j = lottieDrawable;
        if (aVar.x() != null) {
            u0.d a10 = aVar.x().a().a();
            this.f66701k = a10;
            a10.a(this);
            aVar.j(this.f66701k);
        }
        if (jVar.b() != null && jVar.e() != null) {
            path.setFillType(jVar.c());
            u0.a<Integer, Integer> a11 = jVar.b().a();
            this.f66697g = a11;
            a11.a(this);
            aVar.j(a11);
            u0.a<Integer, Integer> a12 = jVar.e().a();
            this.f66698h = a12;
            a12.a(this);
            aVar.j(a12);
            return;
        }
        this.f66697g = null;
        this.f66698h = null;
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f66691a.reset();
        for (int i10 = 0; i10 < this.f66696f.size(); i10++) {
            this.f66691a.addPath(this.f66696f.get(i10).getPath(), matrix);
        }
        this.f66691a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4696a) {
            this.f66697g.o(cVar);
        } else if (t10 == q0.f4699d) {
            this.f66698h.o(cVar);
        } else if (t10 == q0.N) {
            u0.a<ColorFilter, ColorFilter> aVar = this.f66699i;
            if (aVar != null) {
                this.f66693c.I(aVar);
            }
            if (cVar == null) {
                this.f66699i = null;
                return;
            }
            u0.t tVar = new u0.t(cVar);
            this.f66699i = tVar;
            tVar.a(this);
            this.f66693c.j(this.f66699i);
        } else if (t10 == q0.f4705j) {
            u0.a<Float, Float> aVar2 = this.f66701k;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            u0.t tVar2 = new u0.t(cVar);
            this.f66701k = tVar2;
            tVar2.a(this);
            this.f66693c.j(this.f66701k);
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f66700j.invalidateSelf();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof m) {
                this.f66696f.add((m) cVar);
            }
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66694d;
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        if (this.f66695e) {
            return;
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("FillContent#draw");
        }
        int r10 = ((u0.b) this.f66697g).r();
        float intValue = this.f66698h.h().intValue() / 100.0f;
        this.f66692b.setColor((d1.k.c((int) (i10 * intValue), 0, 255) << 24) | (r10 & ViewCompat.MEASURED_SIZE_MASK));
        u0.a<ColorFilter, ColorFilter> aVar2 = this.f66699i;
        if (aVar2 != null) {
            this.f66692b.setColorFilter(aVar2.h());
        }
        u0.a<Float, Float> aVar3 = this.f66701k;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            if (floatValue == 0.0f) {
                this.f66692b.setMaskFilter(null);
            } else if (floatValue != this.f66702l) {
                this.f66692b.setMaskFilter(this.f66693c.y(floatValue));
            }
            this.f66702l = floatValue;
        }
        if (aVar != null) {
            aVar.c((int) (intValue * 255.0f), this.f66692b);
        } else {
            this.f66692b.clearShadowLayer();
        }
        this.f66691a.reset();
        for (int i11 = 0; i11 < this.f66696f.size(); i11++) {
            this.f66691a.addPath(this.f66696f.get(i11).getPath(), matrix);
        }
        canvas.drawPath(this.f66691a, this.f66692b);
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("FillContent#draw");
        }
    }
}
