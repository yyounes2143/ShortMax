package y0;

import android.graphics.PointF;
import java.util.List;
/* compiled from: AnimatableSplitDimensionPathValue.java */
/* loaded from: classes2.dex */
public class i implements o<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final b f70533a;

    /* renamed from: b  reason: collision with root package name */
    private final b f70534b;

    public i(b bVar, b bVar2) {
        this.f70533a = bVar;
        this.f70534b = bVar2;
    }

    @Override // y0.o
    public u0.a<PointF, PointF> a() {
        return new u0.n(this.f70533a.a(), this.f70534b.a());
    }

    @Override // y0.o
    public List<e1.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // y0.o
    public boolean c() {
        if (this.f70533a.c() && this.f70534b.c()) {
            return true;
        }
        return false;
    }
}
