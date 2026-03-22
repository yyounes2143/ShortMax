package y0;

import android.graphics.PointF;
import java.util.List;
/* compiled from: AnimatablePathValue.java */
/* loaded from: classes2.dex */
public class e implements o<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final List<e1.a<PointF>> f70532a;

    public e(List<e1.a<PointF>> list) {
        this.f70532a = list;
    }

    @Override // y0.o
    public u0.a<PointF, PointF> a() {
        if (this.f70532a.get(0).i()) {
            return new u0.k(this.f70532a);
        }
        return new u0.j(this.f70532a);
    }

    @Override // y0.o
    public List<e1.a<PointF>> b() {
        return this.f70532a;
    }

    @Override // y0.o
    public boolean c() {
        if (this.f70532a.size() != 1 || !this.f70532a.get(0).i()) {
            return false;
        }
        return true;
    }
}
