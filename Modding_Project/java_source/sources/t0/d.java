package t0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.utils.OffscreenLayer;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: ContentGroup.java */
/* loaded from: classes2.dex */
public class d implements e, m, a.b, x0.e {

    /* renamed from: a  reason: collision with root package name */
    private final OffscreenLayer.b f66671a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f66672b;

    /* renamed from: c  reason: collision with root package name */
    private final OffscreenLayer f66673c;

    /* renamed from: d  reason: collision with root package name */
    private final Matrix f66674d;

    /* renamed from: e  reason: collision with root package name */
    private final Path f66675e;

    /* renamed from: f  reason: collision with root package name */
    private final RectF f66676f;

    /* renamed from: g  reason: collision with root package name */
    private final String f66677g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f66678h;

    /* renamed from: i  reason: collision with root package name */
    private final List<c> f66679i;

    /* renamed from: j  reason: collision with root package name */
    private final LottieDrawable f66680j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private List<m> f66681k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private u0.s f66682l;

    public d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.k kVar, com.airbnb.lottie.i iVar) {
        this(lottieDrawable, aVar, kVar.c(), kVar.d(), d(lottieDrawable, iVar, aVar, kVar.b()), j(kVar.b()));
    }

    private static List<c> d(LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar, com.airbnb.lottie.model.layer.a aVar, List<z0.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c a10 = list.get(i10).a(lottieDrawable, iVar, aVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    @Nullable
    static y0.n j(List<z0.c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            z0.c cVar = list.get(i10);
            if (cVar instanceof y0.n) {
                return (y0.n) cVar;
            }
        }
        return null;
    }

    private boolean n() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f66679i.size(); i11++) {
            if ((this.f66679i.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        if (!dVar.g(getName(), i10) && !"__container".equals(getName())) {
            return;
        }
        if (!"__container".equals(getName())) {
            dVar2 = dVar2.a(getName());
            if (dVar.c(getName(), i10)) {
                list.add(dVar2.i(this));
            }
        }
        if (dVar.h(getName(), i10)) {
            int e10 = i10 + dVar.e(getName(), i10);
            for (int i11 = 0; i11 < this.f66679i.size(); i11++) {
                c cVar = this.f66679i.get(i11);
                if (cVar instanceof x0.e) {
                    ((x0.e) cVar).b(dVar, e10, list, dVar2);
                }
            }
        }
    }

    @Override // t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f66674d.set(matrix);
        u0.s sVar = this.f66682l;
        if (sVar != null) {
            this.f66674d.preConcat(sVar.i());
        }
        this.f66676f.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f66679i.size() - 1; size >= 0; size--) {
            c cVar = this.f66679i.get(size);
            if (cVar instanceof e) {
                ((e) cVar).c(this.f66676f, this.f66674d, z10);
                rectF.union(this.f66676f);
            }
        }
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        u0.s sVar = this.f66682l;
        if (sVar != null) {
            sVar.f(t10, cVar);
        }
    }

    @Override // u0.a.b
    public void f() {
        this.f66680j.invalidateSelf();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f66679i.size());
        arrayList.addAll(list);
        for (int size = this.f66679i.size() - 1; size >= 0; size--) {
            c cVar = this.f66679i.get(size);
            cVar.g(arrayList, this.f66679i.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66677g;
    }

    @Override // t0.m
    public Path getPath() {
        this.f66674d.reset();
        u0.s sVar = this.f66682l;
        if (sVar != null) {
            this.f66674d.set(sVar.i());
        }
        this.f66675e.reset();
        if (this.f66678h) {
            return this.f66675e;
        }
        for (int size = this.f66679i.size() - 1; size >= 0; size--) {
            c cVar = this.f66679i.get(size);
            if (cVar instanceof m) {
                this.f66675e.addPath(((m) cVar).getPath(), this.f66674d);
            }
        }
        return this.f66675e;
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        boolean z10;
        int intValue;
        if (this.f66678h) {
            return;
        }
        this.f66674d.set(matrix);
        u0.s sVar = this.f66682l;
        if (sVar != null) {
            this.f66674d.preConcat(sVar.i());
            if (this.f66682l.k() == null) {
                intValue = 100;
            } else {
                intValue = this.f66682l.k().h().intValue();
            }
            i10 = (int) ((((intValue / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        int i11 = 255;
        if ((this.f66680j.g0() && n() && i10 != 255) || (aVar != null && this.f66680j.h0() && n())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            i11 = i10;
        }
        if (z10) {
            this.f66672b.set(0.0f, 0.0f, 0.0f, 0.0f);
            c(this.f66672b, matrix, true);
            OffscreenLayer.b bVar = this.f66671a;
            bVar.f4770a = i10;
            if (aVar != null) {
                aVar.b(bVar);
                aVar = null;
            } else {
                bVar.f4773d = null;
            }
            canvas = this.f66673c.j(canvas, this.f66672b, this.f66671a);
        } else if (aVar != null) {
            com.airbnb.lottie.utils.a aVar2 = new com.airbnb.lottie.utils.a(aVar);
            aVar2.i(i11);
            aVar = aVar2;
        }
        for (int size = this.f66679i.size() - 1; size >= 0; size--) {
            c cVar = this.f66679i.get(size);
            if (cVar instanceof e) {
                ((e) cVar).i(canvas, this.f66674d, i11, aVar);
            }
        }
        if (z10) {
            this.f66673c.e();
        }
    }

    public List<c> k() {
        return this.f66679i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<m> l() {
        if (this.f66681k == null) {
            this.f66681k = new ArrayList();
            for (int i10 = 0; i10 < this.f66679i.size(); i10++) {
                c cVar = this.f66679i.get(i10);
                if (cVar instanceof m) {
                    this.f66681k.add((m) cVar);
                }
            }
        }
        return this.f66681k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix m() {
        u0.s sVar = this.f66682l;
        if (sVar != null) {
            return sVar.i();
        }
        this.f66674d.reset();
        return this.f66674d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, String str, boolean z10, List<c> list, @Nullable y0.n nVar) {
        this.f66671a = new OffscreenLayer.b();
        this.f66672b = new RectF();
        this.f66673c = new OffscreenLayer();
        this.f66674d = new Matrix();
        this.f66675e = new Path();
        this.f66676f = new RectF();
        this.f66677g = str;
        this.f66680j = lottieDrawable;
        this.f66678h = z10;
        this.f66679i = list;
        if (nVar != null) {
            u0.s b10 = nVar.b();
            this.f66682l = b10;
            b10.d(aVar);
            this.f66682l.e(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).d(list.listIterator(list.size()));
        }
    }
}
