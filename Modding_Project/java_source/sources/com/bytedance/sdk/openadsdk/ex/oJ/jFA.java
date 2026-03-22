package com.bytedance.sdk.openadsdk.ex.oJ;
/* loaded from: classes3.dex */
class jFA implements com.bytedance.sdk.component.ba.oJ.Pfn.ex {
    private final com.bytedance.sdk.component.cFZ.ZYk oJ;

    public jFA(com.bytedance.sdk.component.cFZ.ZYk zYk) {
        this.oJ = zYk;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.ex
    public int ZYk() {
        com.bytedance.sdk.component.cFZ.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.ex
    public boolean oJ() {
        com.bytedance.sdk.component.cFZ.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.ba();
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.Pfn.ex
    public String tB() {
        com.bytedance.sdk.component.cFZ.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.ZYk();
        }
        return "";
    }
}
