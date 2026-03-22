package com.bytedance.sdk.component.Pfn.ZYk;

import com.bytedance.sdk.component.Pfn.Pfn;
import com.bytedance.sdk.component.Pfn.WcQ;
/* loaded from: classes3.dex */
public class ZYk implements Pfn {
    private boolean ZYk;
    private WcQ ex;
    private String oJ;
    private boolean tB;

    public ZYk(String str, boolean z10, boolean z11, WcQ wcQ) {
        this.oJ = str;
        this.ZYk = z10;
        this.tB = z11;
        this.ex = wcQ;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn
    public boolean ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn
    public String oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn
    public boolean tB() {
        return this.tB;
    }
}
