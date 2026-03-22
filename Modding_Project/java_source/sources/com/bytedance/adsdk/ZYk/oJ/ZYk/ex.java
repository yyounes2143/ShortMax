package com.bytedance.adsdk.ZYk.oJ.ZYk;

import java.util.List;
/* loaded from: classes3.dex */
public class ex extends cFZ<Float> {
    public ex(List<com.bytedance.adsdk.ZYk.cFZ.oJ<Float>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public Float oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<Float> oJVar, float f10) {
        return Float.valueOf(tB(oJVar, f10));
    }

    public float jFA() {
        return tB(tB(), Pfn());
    }

    float tB(com.bytedance.adsdk.ZYk.cFZ.oJ<Float> oJVar, float f10) {
        if (oJVar.oJ != null && oJVar.ZYk != null) {
            if (this.tB == null) {
                return com.bytedance.adsdk.ZYk.ba.Pfn.oJ(oJVar.ba(), oJVar.cFZ(), f10);
            }
            oJVar.cFZ.floatValue();
            ex();
            so();
            throw null;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
