package u0;

import android.graphics.PointF;
import java.util.List;
/* compiled from: PointKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class k extends g<PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f67740i;

    public k(List<e1.a<PointF>> list) {
        super(list);
        this.f67740i = new PointF();
    }

    @Override // u0.a
    /* renamed from: r */
    public PointF i(e1.a<PointF> aVar, float f10) {
        return j(aVar, f10, f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // u0.a
    /* renamed from: s */
    public PointF j(e1.a<PointF> aVar, float f10, float f11, float f12) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = aVar.f50724b;
        if (pointF3 != null && (pointF = aVar.f50725c) != null) {
            PointF pointF4 = pointF3;
            PointF pointF5 = pointF;
            e1.c<A> cVar = this.f67709e;
            if (cVar != 0 && (pointF2 = (PointF) cVar.b(aVar.f50729g, aVar.f50730h.floatValue(), pointF4, pointF5, f10, e(), f())) != null) {
                return pointF2;
            }
            PointF pointF6 = this.f67740i;
            float f13 = pointF4.x;
            float f14 = f13 + (f11 * (pointF5.x - f13));
            float f15 = pointF4.y;
            pointF6.set(f14, f15 + (f12 * (pointF5.y - f15)));
            return this.f67740i;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
