package com.bytedance.sdk.openadsdk.jFA;

import com.bytedance.sdk.component.Pfn.RZ;
import com.bytedance.sdk.component.Pfn.jFA;
/* loaded from: classes3.dex */
public class Pfn implements RZ {
    private static int oJ;
    private final String Pfn;
    private long ZYk = 0;
    private boolean ex;
    private long tB;

    public Pfn() {
        oJ++;
        this.Pfn = "image_request_" + oJ;
    }

    @Override // com.bytedance.sdk.component.Pfn.RZ
    public void ZYk(String str, jFA jfa) {
        this.tB += System.currentTimeMillis() - this.ZYk;
        tB(str, jfa);
    }

    @Override // com.bytedance.sdk.component.Pfn.RZ
    public void oJ(String str, jFA jfa) {
        if (!this.ex) {
            jfa.oJ();
            jfa.ZYk();
            jfa.tB();
            this.ex = true;
        }
        this.ZYk = System.currentTimeMillis();
        tB(str, jfa);
    }

    private String tB(String str, jFA jfa) {
        return str;
    }
}
