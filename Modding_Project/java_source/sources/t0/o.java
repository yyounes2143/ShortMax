package t0;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.q0;
import java.util.List;
import u0.a;
/* compiled from: RectangleContent.java */
/* loaded from: classes2.dex */
public class o implements a.b, k, m {

    /* renamed from: c  reason: collision with root package name */
    private final String f66761c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f66762d;

    /* renamed from: e  reason: collision with root package name */
    private final LottieDrawable f66763e;

    /* renamed from: f  reason: collision with root package name */
    private final u0.a<?, PointF> f66764f;

    /* renamed from: g  reason: collision with root package name */
    private final u0.a<?, PointF> f66765g;

    /* renamed from: h  reason: collision with root package name */
    private final u0.a<?, Float> f66766h;

    /* renamed from: k  reason: collision with root package name */
    private boolean f66769k;

    /* renamed from: a  reason: collision with root package name */
    private final Path f66759a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f66760b = new RectF();

    /* renamed from: i  reason: collision with root package name */
    private final b f66767i = new b();
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private u0.a<Float, Float> f66768j = null;

    public o(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.f fVar) {
        this.f66761c = fVar.c();
        this.f66762d = fVar.f();
        this.f66763e = lottieDrawable;
        u0.a<PointF, PointF> a10 = fVar.d().a();
        this.f66764f = a10;
        u0.a<PointF, PointF> a11 = fVar.e().a();
        this.f66765g = a11;
        u0.d a12 = fVar.b().a();
        this.f66766h = a12;
        aVar.j(a10);
        aVar.j(a11);
        aVar.j(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    private void d() {
        this.f66769k = false;
        this.f66763e.invalidateSelf();
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4707l) {
            this.f66765g.o(cVar);
        } else if (t10 == q0.f4709n) {
            this.f66764f.o(cVar);
        } else if (t10 == q0.f4708m) {
            this.f66766h.o(cVar);
        }
    }

    @Override // u0.a.b
    public void f() {
        d();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f66767i.a(uVar);
                    uVar.b(this);
                }
            }
            if (cVar instanceof q) {
                this.f66768j = ((q) cVar).e();
            }
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66761c;
    }

    @Override // t0.m
    public Path getPath() {
        float r10;
        u0.a<Float, Float> aVar;
        if (this.f66769k) {
            return this.f66759a;
        }
        this.f66759a.reset();
        if (this.f66762d) {
            this.f66769k = true;
            return this.f66759a;
        }
        PointF h10 = this.f66765g.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        u0.a<?, Float> aVar2 = this.f66766h;
        if (aVar2 == null) {
            r10 = 0.0f;
        } else {
            r10 = ((u0.d) aVar2).r();
        }
        if (r10 == 0.0f && (aVar = this.f66768j) != null) {
            r10 = Math.min(aVar.h().floatValue(), Math.min(f10, f11));
        }
        float min = Math.min(f10, f11);
        if (r10 > min) {
            r10 = min;
        }
        PointF h11 = this.f66764f.h();
        this.f66759a.moveTo(h11.x + f10, (h11.y - f11) + r10);
        this.f66759a.lineTo(h11.x + f10, (h11.y + f11) - r10);
        int i10 = (r10 > 0.0f ? 1 : (r10 == 0.0f ? 0 : -1));
        if (i10 > 0) {
            RectF rectF = this.f66760b;
            float f12 = h11.x;
            float f13 = r10 * 2.0f;
            float f14 = h11.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f66759a.arcTo(this.f66760b, 0.0f, 90.0f, false);
        }
        this.f66759a.lineTo((h11.x - f10) + r10, h11.y + f11);
        if (i10 > 0) {
            RectF rectF2 = this.f66760b;
            float f15 = h11.x;
            float f16 = h11.y;
            float f17 = r10 * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f66759a.arcTo(this.f66760b, 90.0f, 90.0f, false);
        }
        this.f66759a.lineTo(h11.x - f10, (h11.y - f11) + r10);
        if (i10 > 0) {
            RectF rectF3 = this.f66760b;
            float f18 = h11.x;
            float f19 = h11.y;
            float f20 = r10 * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f66759a.arcTo(this.f66760b, 180.0f, 90.0f, false);
        }
        this.f66759a.lineTo((h11.x + f10) - r10, h11.y - f11);
        if (i10 > 0) {
            RectF rectF4 = this.f66760b;
            float f21 = h11.x;
            float f22 = r10 * 2.0f;
            float f23 = h11.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f66759a.arcTo(this.f66760b, 270.0f, 90.0f, false);
        }
        this.f66759a.close();
        this.f66767i.b(this.f66759a);
        this.f66769k = true;
        return this.f66759a;
    }
}
