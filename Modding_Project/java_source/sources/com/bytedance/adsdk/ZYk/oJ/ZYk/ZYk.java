package com.bytedance.adsdk.ZYk.oJ.ZYk;

import java.util.List;
/* loaded from: classes3.dex */
public class ZYk extends cFZ<Integer> {
    public ZYk(List<com.bytedance.adsdk.ZYk.cFZ.oJ<Integer>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public Integer oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<Integer> oJVar, float f10) {
        return Integer.valueOf(tB(oJVar, f10));
    }

    public int jFA() {
        return tB(tB(), Pfn());
    }

    public int tB(com.bytedance.adsdk.ZYk.cFZ.oJ<Integer> oJVar, float f10) {
        if (oJVar.oJ != null && oJVar.ZYk != null) {
            if (this.tB == null) {
                return com.bytedance.adsdk.ZYk.ba.ZYk.oJ(com.bytedance.adsdk.ZYk.ba.Pfn.ZYk(f10, 0.0f, 1.0f), oJVar.oJ.intValue(), oJVar.ZYk.intValue());
            }
            oJVar.cFZ.floatValue();
            ex();
            so();
            throw null;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
