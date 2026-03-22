package t0;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.q0;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: ShapeContent.java */
/* loaded from: classes2.dex */
public class r implements m, a.b, k {

    /* renamed from: b  reason: collision with root package name */
    private final String f66785b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f66786c;

    /* renamed from: d  reason: collision with root package name */
    private final LottieDrawable f66787d;

    /* renamed from: e  reason: collision with root package name */
    private final u0.m f66788e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f66789f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f66784a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private final b f66790g = new b();

    public r(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.l lVar) {
        this.f66785b = lVar.b();
        this.f66786c = lVar.d();
        this.f66787d = lottieDrawable;
        u0.m a10 = lVar.c().a();
        this.f66788e = a10;
        aVar.j(a10);
        a10.a(this);
    }

    private void d() {
        this.f66789f = false;
        this.f66787d.invalidateSelf();
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        d1.k.k(dVar, i10, list, dVar2, this);
    }

    @Override // x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        if (t10 == q0.S) {
            this.f66788e.o(cVar);
        }
    }

    @Override // u0.a.b
    public void f() {
        d();
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f66790g.a(uVar);
                    uVar.b(this);
                }
            }
            if (cVar instanceof s) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                s sVar = (s) cVar;
                sVar.a(this);
                arrayList.add(sVar);
            }
        }
        this.f66788e.s(arrayList);
    }

    @Override // t0.c
    public String getName() {
        return this.f66785b;
    }

    @Override // t0.m
    public Path getPath() {
        if (this.f66789f && !this.f66788e.k()) {
            return this.f66784a;
        }
        this.f66784a.reset();
        if (this.f66786c) {
            this.f66789f = true;
            return this.f66784a;
        }
        Path h10 = this.f66788e.h();
        if (h10 == null) {
            return this.f66784a;
        }
        this.f66784a.set(h10);
        this.f66784a.setFillType(Path.FillType.EVEN_ODD);
        this.f66790g.b(this.f66784a);
        this.f66789f = true;
        return this.f66784a;
    }
}
