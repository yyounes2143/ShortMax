package t0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.q0;
/* compiled from: StrokeContent.java */
/* loaded from: classes2.dex */
public class t extends a {

    /* renamed from: q  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f66791q;

    /* renamed from: r  reason: collision with root package name */
    private final String f66792r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f66793s;

    /* renamed from: t  reason: collision with root package name */
    private final u0.a<Integer, Integer> f66794t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private u0.a<ColorFilter, ColorFilter> f66795u;

    public t(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, ShapeStroke shapeStroke) {
        super(lottieDrawable, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f66791q = aVar;
        this.f66792r = shapeStroke.h();
        this.f66793s = shapeStroke.k();
        u0.a<Integer, Integer> a10 = shapeStroke.c().a();
        this.f66794t = a10;
        a10.a(this);
        aVar.j(a10);
    }

    @Override // t0.a, x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == q0.f4697b) {
            this.f66794t.o(cVar);
        } else if (t10 == q0.N) {
            u0.a<ColorFilter, ColorFilter> aVar = this.f66795u;
            if (aVar != null) {
                this.f66791q.I(aVar);
            }
            if (cVar == null) {
                this.f66795u = null;
                return;
            }
            u0.t tVar = new u0.t(cVar);
            this.f66795u = tVar;
            tVar.a(this);
            this.f66791q.j(this.f66794t);
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66792r;
    }

    @Override // t0.a, t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        if (this.f66793s) {
            return;
        }
        this.f66660i.setColor(((u0.b) this.f66794t).r());
        u0.a<ColorFilter, ColorFilter> aVar2 = this.f66795u;
        if (aVar2 != null) {
            this.f66660i.setColorFilter(aVar2.h());
        }
        super.i(canvas, matrix, i10, aVar);
    }
}
