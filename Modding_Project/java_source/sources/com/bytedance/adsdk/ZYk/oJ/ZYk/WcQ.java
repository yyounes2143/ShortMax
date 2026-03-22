package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.PointF;
import java.util.Collections;
/* loaded from: classes3.dex */
public class WcQ extends oJ<PointF, PointF> {
    protected com.bytedance.adsdk.ZYk.cFZ.ZYk<Float> Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final PointF f11524ba;
    private final PointF cFZ;
    protected com.bytedance.adsdk.ZYk.cFZ.ZYk<Float> ex;
    private final oJ<Float, Float> jFA;

    /* renamed from: so  reason: collision with root package name */
    private final oJ<Float, Float> f11525so;

    public WcQ(oJ<Float, Float> oJVar, oJ<Float, Float> oJVar2) {
        super(Collections.emptyList());
        this.f11524ba = new PointF();
        this.cFZ = new PointF();
        this.f11525so = oJVar;
        this.jFA = oJVar2;
        oJ(so());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public PointF oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<PointF> oJVar, float f10) {
        if (this.ex != null && this.f11525so.tB() != null) {
            this.f11525so.Pfn();
            throw null;
        } else if (this.Pfn != null && this.jFA.tB() != null) {
            this.jFA.Pfn();
            throw null;
        } else {
            this.cFZ.set(this.f11524ba.x, 0.0f);
            PointF pointF = this.cFZ;
            pointF.set(pointF.x, this.f11524ba.y);
            return this.cFZ;
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: jFA */
    public PointF cFZ() {
        return oJ(null, 0.0f);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    public void oJ(float f10) {
        this.f11525so.oJ(f10);
        this.jFA.oJ(f10);
        this.f11524ba.set(this.f11525so.cFZ().floatValue(), this.jFA.cFZ().floatValue());
        for (int i10 = 0; i10 < this.oJ.size(); i10++) {
            this.oJ.get(i10).oJ();
        }
    }
}
