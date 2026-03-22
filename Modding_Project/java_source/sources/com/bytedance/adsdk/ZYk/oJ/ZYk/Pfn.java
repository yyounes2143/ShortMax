package com.bytedance.adsdk.ZYk.oJ.ZYk;

import java.util.List;
/* loaded from: classes3.dex */
public class Pfn extends cFZ<com.bytedance.adsdk.ZYk.tB.ZYk.ex> {
    private final com.bytedance.adsdk.ZYk.tB.ZYk.ex ex;

    public Pfn(List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex>> list) {
        super(list);
        com.bytedance.adsdk.ZYk.tB.ZYk.ex exVar = list.get(0).oJ;
        int tB = exVar != null ? exVar.tB() : 0;
        this.ex = new com.bytedance.adsdk.ZYk.tB.ZYk.ex(new float[tB], new int[tB]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public com.bytedance.adsdk.ZYk.tB.ZYk.ex oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJVar, float f10) {
        this.ex.oJ(oJVar.oJ, oJVar.ZYk, f10);
        return this.ex;
    }
}
