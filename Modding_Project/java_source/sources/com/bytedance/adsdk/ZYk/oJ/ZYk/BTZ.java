package com.bytedance.adsdk.ZYk.oJ.ZYk;

import java.util.List;
/* loaded from: classes3.dex */
public class BTZ extends cFZ<com.bytedance.adsdk.ZYk.cFZ.tB> {
    private final com.bytedance.adsdk.ZYk.cFZ.tB ex;

    public BTZ(List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.cFZ.tB>> list) {
        super(list);
        this.ex = new com.bytedance.adsdk.ZYk.cFZ.tB();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public com.bytedance.adsdk.ZYk.cFZ.tB oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.cFZ.tB> oJVar, float f10) {
        com.bytedance.adsdk.ZYk.cFZ.tB tBVar;
        com.bytedance.adsdk.ZYk.cFZ.tB tBVar2 = oJVar.oJ;
        if (tBVar2 != null && (tBVar = oJVar.ZYk) != null) {
            com.bytedance.adsdk.ZYk.cFZ.tB tBVar3 = tBVar2;
            com.bytedance.adsdk.ZYk.cFZ.tB tBVar4 = tBVar;
            if (this.tB == null) {
                this.ex.oJ(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(tBVar3.oJ(), tBVar4.oJ(), f10), com.bytedance.adsdk.ZYk.ba.Pfn.oJ(tBVar3.ZYk(), tBVar4.ZYk(), f10));
                return this.ex;
            }
            oJVar.cFZ.floatValue();
            ex();
            so();
            throw null;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
