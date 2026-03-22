package com.bytedance.adsdk.oJ.ZYk.ZYk.oJ;
/* loaded from: classes3.dex */
public abstract class si implements com.bytedance.adsdk.oJ.ZYk.ZYk.oJ {
    protected com.bytedance.adsdk.oJ.ZYk.ZYk.oJ ZYk;
    protected com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJ;
    protected com.bytedance.adsdk.oJ.ZYk.ex.tB tB;

    /* JADX INFO: Access modifiers changed from: protected */
    public si(com.bytedance.adsdk.oJ.ZYk.ex.tB tBVar) {
        this.tB = tBVar;
    }

    public void ZYk(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar) {
        this.ZYk = oJVar;
    }

    public void oJ(com.bytedance.adsdk.oJ.ZYk.ZYk.oJ oJVar) {
        this.oJ = oJVar;
    }

    public String toString() {
        return ZYk();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public String ZYk() {
        return this.oJ.ZYk() + this.tB.oJ() + this.ZYk.ZYk();
    }

    @Override // com.bytedance.adsdk.oJ.ZYk.ZYk.oJ
    public com.bytedance.adsdk.oJ.ZYk.ex.Pfn oJ() {
        return com.bytedance.adsdk.oJ.ZYk.ex.ba.OPERATOR_RESULT;
    }
}
