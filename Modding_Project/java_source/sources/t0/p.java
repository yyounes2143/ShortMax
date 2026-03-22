package t0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.q0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import u0.a;
/* compiled from: RepeaterContent.java */
/* loaded from: classes2.dex */
public class p implements e, m, j, a.b, k {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f66770a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private final Path f66771b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final LottieDrawable f66772c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f66773d;

    /* renamed from: e  reason: collision with root package name */
    private final String f66774e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f66775f;

    /* renamed from: g  reason: collision with root package name */
    private final u0.a<Float, Float> f66776g;

    /* renamed from: h  reason: collision with root package name */
    private final u0.a<Float, Float> f66777h;

    /* renamed from: i  reason: collision with root package name */
    private final u0.s f66778i;

    /* renamed from: j  reason: collision with root package name */
    private d f66779j;

    public p(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.g gVar) {
        this.f66772c = lottieDrawable;
        this.f66773d = aVar;
        this.f66774e = gVar.c();
        this.f66775f = gVar.f();
        u0.d a10 = gVar.b().a();
        this.f66776g = a10;
        aVar.j(a10);
        a10.a(this);
        u0.d a11 = gVar.d().a();
        this.f66777h = a11;
        aVar.j(a11);
        a11.a(this);
        u0.s b10 = gVar.e().b();
        this.f66778i = b10;
        b10.d(aVar);
        b10.e(this);
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
        for (int i11 = 0; i11 < this.f66779j.k().size(); i11++) {
            c cVar = this.f66779j.k().get(i11);
            if (cVar instanceof k) {
                d1.k.k(dVar, i10, list, dVar2, (k) cVar);
            }
        }
    }

    @Override // t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f66779j.c(rectF, matrix, z10);
    }

    @Override // t0.j
    public void d(ListIterator<c> listIterator) {
        if (this.f66779j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f66779j = new d(this.f66772c, this.f66773d, "Repeater", this.f66775f, arrayList, null);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (this.f66778i.f(t10, cVar)) {
            return;
        }
        if (t10 == q0.f4719x) {
            this.f66776g.o(cVar);
        } else if (t10 == q0.f4720y) {
            this.f66777h.o(cVar);
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f66772c.invalidateSelf();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        this.f66779j.g(list, list2);
    }

    @Override // t0.c
    public String getName() {
        return this.f66774e;
    }

    @Override // t0.m
    public Path getPath() {
        Path path = this.f66779j.getPath();
        this.f66771b.reset();
        float floatValue = this.f66776g.h().floatValue();
        float floatValue2 = this.f66777h.h().floatValue();
        for (int i10 = ((int) floatValue) - 1; i10 >= 0; i10--) {
            this.f66770a.set(this.f66778i.j(i10 + floatValue2));
            this.f66771b.addPath(path, this.f66770a);
        }
        return this.f66771b;
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        float floatValue = this.f66776g.h().floatValue();
        float floatValue2 = this.f66777h.h().floatValue();
        float floatValue3 = this.f66778i.l().h().floatValue() / 100.0f;
        float floatValue4 = this.f66778i.h().h().floatValue() / 100.0f;
        for (int i11 = ((int) floatValue) - 1; i11 >= 0; i11--) {
            this.f66770a.set(matrix);
            float f10 = i11;
            this.f66770a.preConcat(this.f66778i.j(f10 + floatValue2));
            this.f66779j.i(canvas, this.f66770a, (int) (i10 * d1.k.i(floatValue3, floatValue4, f10 / floatValue)), aVar);
        }
    }
}
