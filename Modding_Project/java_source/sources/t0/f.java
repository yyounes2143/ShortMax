package t0;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.q0;
import java.util.List;
import u0.a;
/* compiled from: EllipseContent.java */
/* loaded from: classes2.dex */
public class f implements m, a.b, k {

    /* renamed from: b  reason: collision with root package name */
    private final String f66684b;

    /* renamed from: c  reason: collision with root package name */
    private final LottieDrawable f66685c;

    /* renamed from: d  reason: collision with root package name */
    private final u0.a<?, PointF> f66686d;

    /* renamed from: e  reason: collision with root package name */
    private final u0.a<?, PointF> f66687e;

    /* renamed from: f  reason: collision with root package name */
    private final z0.b f66688f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f66690h;

    /* renamed from: a  reason: collision with root package name */
    private final Path f66683a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private final b f66689g = new b();

    public f(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.b bVar) {
        this.f66684b = bVar.b();
        this.f66685c = lottieDrawable;
        u0.a<PointF, PointF> a10 = bVar.d().a();
        this.f66686d = a10;
        u0.a<PointF, PointF> a11 = bVar.c().a();
        this.f66687e = a11;
        this.f66688f = bVar;
        aVar.j(a10);
        aVar.j(a11);
        a10.a(this);
        a11.a(this);
    }

    private void d() {
        this.f66690h = false;
        this.f66685c.invalidateSelf();
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.f4706k) {
            this.f66686d.o(cVar);
        } else if (t10 == q0.f4709n) {
            this.f66687e.o(cVar);
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
                    this.f66689g.a(uVar);
                    uVar.b(this);
                }
            }
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66684b;
    }

    @Override // t0.m
    public Path getPath() {
        if (this.f66690h) {
            return this.f66683a;
        }
        this.f66683a.reset();
        if (this.f66688f.e()) {
            this.f66690h = true;
            return this.f66683a;
        }
        PointF h10 = this.f66686d.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f66683a.reset();
        if (this.f66688f.f()) {
            float f14 = -f11;
            this.f66683a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f66683a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f66683a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f66683a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f66683a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f66683a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f66683a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f66683a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f66683a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f66683a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF h11 = this.f66687e.h();
        this.f66683a.offset(h11.x, h11.y);
        this.f66683a.close();
        this.f66689g.b(this.f66683a);
        this.f66690h = true;
        return this.f66683a;
    }
}
