package u0;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
/* compiled from: PathKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class j extends g<PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f67735i;

    /* renamed from: j  reason: collision with root package name */
    private final float[] f67736j;

    /* renamed from: k  reason: collision with root package name */
    private final float[] f67737k;

    /* renamed from: l  reason: collision with root package name */
    private final PathMeasure f67738l;

    /* renamed from: m  reason: collision with root package name */
    private i f67739m;

    public j(List<? extends e1.a<PointF>> list) {
        super(list);
        this.f67735i = new PointF();
        this.f67736j = new float[2];
        this.f67737k = new float[2];
        this.f67738l = new PathMeasure();
    }

    @Override // u0.a
    /* renamed from: r */
    public PointF i(e1.a<PointF> aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path k10 = iVar.k();
        e1.c<A> cVar = this.f67709e;
        if (cVar != 0 && aVar.f50730h != null && (pointF = (PointF) cVar.b(iVar.f50729g, iVar.f50730h.floatValue(), (PointF) iVar.f50724b, (PointF) iVar.f50725c, e(), f10, f())) != null) {
            return pointF;
        }
        if (k10 == null) {
            return aVar.f50724b;
        }
        if (this.f67739m != iVar) {
            this.f67738l.setPath(k10, false);
            this.f67739m = iVar;
        }
        float length = this.f67738l.getLength();
        float f11 = f10 * length;
        this.f67738l.getPosTan(f11, this.f67736j, this.f67737k);
        PointF pointF2 = this.f67735i;
        float[] fArr = this.f67736j;
        pointF2.set(fArr[0], fArr[1]);
        if (f11 < 0.0f) {
            PointF pointF3 = this.f67735i;
            float[] fArr2 = this.f67737k;
            pointF3.offset(fArr2[0] * f11, fArr2[1] * f11);
        } else if (f11 > length) {
            PointF pointF4 = this.f67735i;
            float[] fArr3 = this.f67737k;
            float f12 = f11 - length;
            pointF4.offset(fArr3[0] * f12, fArr3[1] * f12);
        }
        return this.f67735i;
    }
}
