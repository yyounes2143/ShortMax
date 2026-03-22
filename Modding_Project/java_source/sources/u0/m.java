package u0;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: ShapeKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class m extends a<z0.i, Path> {

    /* renamed from: i  reason: collision with root package name */
    private final z0.i f67742i;

    /* renamed from: j  reason: collision with root package name */
    private final Path f67743j;

    /* renamed from: k  reason: collision with root package name */
    private Path f67744k;

    /* renamed from: l  reason: collision with root package name */
    private Path f67745l;

    /* renamed from: m  reason: collision with root package name */
    private List<t0.s> f67746m;

    public m(List<e1.a<z0.i>> list) {
        super(list);
        this.f67742i = new z0.i();
        this.f67743j = new Path();
    }

    @Override // u0.a
    protected boolean p() {
        List<t0.s> list = this.f67746m;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // u0.a
    /* renamed from: r */
    public Path i(e1.a<z0.i> aVar, float f10) {
        z0.i iVar;
        Path path;
        z0.i iVar2 = aVar.f50724b;
        z0.i iVar3 = aVar.f50725c;
        z0.i iVar4 = this.f67742i;
        if (iVar3 == null) {
            iVar = iVar2;
        } else {
            iVar = iVar3;
        }
        iVar4.c(iVar2, iVar, f10);
        z0.i iVar5 = this.f67742i;
        List<t0.s> list = this.f67746m;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                iVar5 = this.f67746m.get(size).h(iVar5);
            }
        }
        d1.k.h(iVar5, this.f67743j);
        if (this.f67709e != null) {
            if (this.f67744k == null) {
                this.f67744k = new Path();
                this.f67745l = new Path();
            }
            d1.k.h(iVar2, this.f67744k);
            if (iVar3 != null) {
                d1.k.h(iVar3, this.f67745l);
            }
            e1.c<A> cVar = this.f67709e;
            float f11 = aVar.f50729g;
            float floatValue = aVar.f50730h.floatValue();
            Path path2 = this.f67744k;
            if (iVar3 == null) {
                path = path2;
            } else {
                path = this.f67745l;
            }
            return (Path) cVar.b(f11, floatValue, path2, path, f10, e(), f());
        }
        return this.f67743j;
    }

    public void s(@Nullable List<t0.s> list) {
        this.f67746m = list;
    }
}
