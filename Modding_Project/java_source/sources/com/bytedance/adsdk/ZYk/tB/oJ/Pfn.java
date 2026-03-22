package com.bytedance.adsdk.ZYk.tB.oJ;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn implements PiB<PointF, PointF> {
    private final List<com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> oJ;

    public Pfn(List<com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> list) {
        this.oJ = list;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public boolean ZYk() {
        if (this.oJ.size() != 1 || !this.oJ.get(0).Pfn()) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ() {
        if (this.oJ.get(0).Pfn()) {
            return new com.bytedance.adsdk.ZYk.oJ.ZYk.dLZ(this.oJ);
        }
        return new com.bytedance.adsdk.ZYk.oJ.ZYk.kkU(this.oJ);
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public List<com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> tB() {
        return this.oJ;
    }
}
