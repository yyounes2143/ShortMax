package com.bytedance.adsdk.ZYk.tB.oJ;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes3.dex */
public class jFA implements PiB<PointF, PointF> {
    private final ZYk ZYk;
    private final ZYk oJ;

    public jFA(ZYk zYk, ZYk zYk2) {
        this.oJ = zYk;
        this.ZYk = zYk2;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public boolean ZYk() {
        if (this.oJ.ZYk() && this.ZYk.ZYk()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ() {
        return new com.bytedance.adsdk.ZYk.oJ.ZYk.WcQ(this.oJ.oJ(), this.ZYk.oJ());
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public List<com.bytedance.adsdk.ZYk.cFZ.oJ<PointF>> tB() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }
}
