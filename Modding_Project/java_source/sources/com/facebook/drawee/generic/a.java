package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import c3.f;
import c3.g;
import c3.h;
import c3.o;
import c3.q;
import com.facebook.fresco.ui.common.OnFadeListener;
/* compiled from: GenericDraweeHierarchy.java */
/* loaded from: classes3.dex */
public class a implements f3.c {

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f15478a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f15479b;

    /* renamed from: c  reason: collision with root package name */
    private RoundingParams f15480c;

    /* renamed from: d  reason: collision with root package name */
    private final d3.b f15481d;

    /* renamed from: e  reason: collision with root package name */
    private final f f15482e;

    /* renamed from: f  reason: collision with root package name */
    private final g f15483f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        int i10;
        int i11;
        ColorDrawable colorDrawable = new ColorDrawable(0);
        this.f15478a = colorDrawable;
        if (f4.b.d()) {
            f4.b.a("GenericDraweeHierarchy()");
        }
        this.f15479b = bVar.p();
        this.f15480c = bVar.s();
        g gVar = new g(colorDrawable);
        this.f15483f = gVar;
        int i12 = 1;
        if (bVar.j() != null) {
            i10 = bVar.j().size();
        } else {
            i10 = 1;
        }
        i10 = i10 == 0 ? 1 : i10;
        if (bVar.m() != null) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i13 = i10 + i11;
        Drawable[] drawableArr = new Drawable[i13 + 6];
        drawableArr[0] = h(bVar.e(), null);
        drawableArr[1] = h(bVar.k(), bVar.l());
        drawableArr[2] = g(gVar, bVar.d(), bVar.c(), bVar.b());
        drawableArr[3] = h(bVar.n(), bVar.o());
        drawableArr[4] = h(bVar.q(), bVar.r());
        drawableArr[5] = h(bVar.h(), bVar.i());
        if (i13 > 0) {
            if (bVar.j() != null) {
                i12 = 0;
                for (Drawable drawable : bVar.j()) {
                    drawableArr[i12 + 6] = h(drawable, null);
                    i12++;
                }
            }
            if (bVar.m() != null) {
                drawableArr[i12 + 6] = h(bVar.m(), null);
            }
        }
        f fVar = new f(drawableArr, false, 2);
        this.f15482e = fVar;
        fVar.v(bVar.g());
        d3.b bVar2 = new d3.b(c.e(fVar, this.f15480c));
        this.f15481d = bVar2;
        bVar2.mutate();
        r();
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    private void A(float f10) {
        Drawable b10 = this.f15482e.b(3);
        if (b10 == null) {
            return;
        }
        if (f10 >= 0.999f) {
            if (b10 instanceof Animatable) {
                ((Animatable) b10).stop();
            }
            k(3);
        } else {
            if (b10 instanceof Animatable) {
                ((Animatable) b10).start();
            }
            i(3);
        }
        b10.setLevel(Math.round(f10 * 10000.0f));
    }

    private Drawable g(Drawable drawable, q qVar, PointF pointF, ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return c.g(drawable, qVar, pointF);
    }

    private Drawable h(Drawable drawable, q qVar) {
        return c.f(c.d(drawable, this.f15480c, this.f15479b), qVar);
    }

    private void i(int i10) {
        if (i10 >= 0) {
            this.f15482e.l(i10);
        }
    }

    private void j() {
        k(1);
        k(2);
        k(3);
        k(4);
        k(5);
    }

    private void k(int i10) {
        if (i10 >= 0) {
            this.f15482e.n(i10);
        }
    }

    private c3.c n(int i10) {
        c3.c c10 = this.f15482e.c(i10);
        if (c10.a() instanceof h) {
            c10 = (h) c10.a();
        }
        if (c10.a() instanceof o) {
            return (o) c10.a();
        }
        return c10;
    }

    private o o(int i10) {
        c3.c n10 = n(i10);
        if (n10 instanceof o) {
            return (o) n10;
        }
        return c.k(n10, q.f3019a);
    }

    private boolean p(int i10) {
        return n(i10) instanceof o;
    }

    private void q() {
        this.f15483f.k(this.f15478a);
    }

    private void r() {
        f fVar = this.f15482e;
        if (fVar != null) {
            fVar.f();
            this.f15482e.k();
            j();
            i(1);
            this.f15482e.o();
            this.f15482e.h();
        }
    }

    private void t(int i10, Drawable drawable) {
        if (drawable == null) {
            this.f15482e.e(i10, null);
            return;
        }
        n(i10).k(c.d(drawable, this.f15480c, this.f15479b));
    }

    public void B(RoundingParams roundingParams) {
        this.f15480c = roundingParams;
        c.j(this.f15481d, roundingParams);
        for (int i10 = 0; i10 < this.f15482e.d(); i10++) {
            c.i(n(i10), this.f15480c, this.f15479b);
        }
    }

    @Override // f3.c
    public void a(Throwable th2) {
        this.f15482e.f();
        j();
        if (this.f15482e.b(4) != null) {
            i(4);
        } else {
            i(1);
        }
        this.f15482e.h();
    }

    @Override // f3.b
    public Drawable b() {
        return this.f15481d;
    }

    @Override // f3.c
    public void c(Drawable drawable) {
        this.f15481d.t(drawable);
    }

    @Override // f3.c
    public void d(Throwable th2) {
        this.f15482e.f();
        j();
        if (this.f15482e.b(5) != null) {
            i(5);
        } else {
            i(1);
        }
        this.f15482e.h();
    }

    @Override // f3.c
    public void e(float f10, boolean z10) {
        if (this.f15482e.b(3) == null) {
            return;
        }
        this.f15482e.f();
        A(f10);
        if (z10) {
            this.f15482e.o();
        }
        this.f15482e.h();
    }

    @Override // f3.c
    public void f(Drawable drawable, float f10, boolean z10) {
        Drawable d10 = c.d(drawable, this.f15480c, this.f15479b);
        d10.mutate();
        this.f15483f.k(d10);
        this.f15482e.f();
        j();
        i(2);
        A(f10);
        if (z10) {
            this.f15482e.o();
        }
        this.f15482e.h();
    }

    @Override // f3.b
    public Rect getBounds() {
        return this.f15481d.getBounds();
    }

    public PointF l() {
        if (!p(2)) {
            return null;
        }
        return o(2).v();
    }

    public q m() {
        if (!p(2)) {
            return null;
        }
        return o(2).w();
    }

    @Override // f3.c
    public void reset() {
        q();
        r();
    }

    public void s(q qVar) {
        k2.h.g(qVar);
        o(2).y(qVar);
    }

    public void u(int i10) {
        this.f15482e.v(i10);
    }

    public void v(int i10) {
        w(this.f15479b.getDrawable(i10));
    }

    public void w(Drawable drawable) {
        t(5, drawable);
    }

    public void x(OnFadeListener onFadeListener) {
        this.f15482e.u(onFadeListener);
    }

    public void y(int i10, q qVar) {
        z(this.f15479b.getDrawable(i10), qVar);
    }

    public void z(Drawable drawable, q qVar) {
        t(1, drawable);
        o(1).y(qVar);
    }
}
