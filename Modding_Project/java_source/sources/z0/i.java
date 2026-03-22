package z0;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ShapeData.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final List<x0.a> f71201a;

    /* renamed from: b  reason: collision with root package name */
    private PointF f71202b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f71203c;

    public i(PointF pointF, boolean z10, List<x0.a> list) {
        this.f71202b = pointF;
        this.f71203c = z10;
        this.f71201a = new ArrayList(list);
    }

    public List<x0.a> a() {
        return this.f71201a;
    }

    public PointF b() {
        return this.f71202b;
    }

    public void c(i iVar, i iVar2, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        boolean z10;
        if (this.f71202b == null) {
            this.f71202b = new PointF();
        }
        if (!iVar.d() && !iVar2.d()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.f71203c = z10;
        if (iVar.a().size() != iVar2.a().size()) {
            d1.f.c("Curves must have the same number of control points. Shape 1: " + iVar.a().size() + "\tShape 2: " + iVar2.a().size());
        }
        int min = Math.min(iVar.a().size(), iVar2.a().size());
        if (this.f71201a.size() < min) {
            for (int size = this.f71201a.size(); size < min; size++) {
                this.f71201a.add(new x0.a());
            }
        } else if (this.f71201a.size() > min) {
            for (int size2 = this.f71201a.size() - 1; size2 >= min; size2--) {
                List<x0.a> list = this.f71201a;
                list.remove(list.size() - 1);
            }
        }
        PointF b10 = iVar.b();
        PointF b11 = iVar2.b();
        f(d1.k.i(b10.x, b11.x, f10), d1.k.i(b10.y, b11.y, f10));
        for (int size3 = this.f71201a.size() - 1; size3 >= 0; size3--) {
            x0.a aVar = iVar.a().get(size3);
            x0.a aVar2 = iVar2.a().get(size3);
            PointF a10 = aVar.a();
            PointF b12 = aVar.b();
            PointF c10 = aVar.c();
            PointF a11 = aVar2.a();
            PointF b13 = aVar2.b();
            PointF c11 = aVar2.c();
            this.f71201a.get(size3).d(d1.k.i(a10.x, a11.x, f10), d1.k.i(a10.y, a11.y, f10));
            this.f71201a.get(size3).e(d1.k.i(b12.x, b13.x, f10), d1.k.i(b12.y, b13.y, f10));
            this.f71201a.get(size3).f(d1.k.i(c10.x, c11.x, f10), d1.k.i(c10.y, c11.y, f10));
        }
    }

    public boolean d() {
        return this.f71203c;
    }

    public void e(boolean z10) {
        this.f71203c = z10;
    }

    public void f(float f10, float f11) {
        if (this.f71202b == null) {
            this.f71202b = new PointF();
        }
        this.f71202b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f71201a.size() + "closed=" + this.f71203c + '}';
    }

    public i() {
        this.f71201a = new ArrayList();
    }
}
