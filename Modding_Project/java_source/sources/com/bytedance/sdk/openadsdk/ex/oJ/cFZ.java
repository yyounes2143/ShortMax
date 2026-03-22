package com.bytedance.sdk.openadsdk.ex.oJ;
/* loaded from: classes3.dex */
class cFZ implements com.bytedance.sdk.component.ba.oJ.Pfn.tB {
    private final com.bytedance.sdk.component.cFZ.ZYk.ZYk oJ;

    public cFZ() {
        com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
        this.oJ = tB;
        tB.oJ(7);
        tB.oJ("track_url");
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.tB
    public void oJ(String str) {
        this.oJ.ZYk(str);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.tB
    public void oJ(String str, String str2) {
        this.oJ.ZYk(str, str2);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.tB
    public com.bytedance.sdk.component.ba.oJ.Pfn.ex oJ() {
        return new jFA(this.oJ.oJ());
    }
}
