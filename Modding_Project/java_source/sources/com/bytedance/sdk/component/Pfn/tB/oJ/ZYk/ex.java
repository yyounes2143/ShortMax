package com.bytedance.sdk.component.Pfn.tB.oJ.ZYk;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.Pfn.si;
/* loaded from: classes3.dex */
public class ex implements si {
    private final com.bytedance.sdk.component.Pfn.tB.oJ.ZYk ZYk;
    private final si oJ;

    public ex(si siVar) {
        this(siVar, null);
    }

    public ex(si siVar, com.bytedance.sdk.component.Pfn.tB.oJ.ZYk zYk) {
        this.oJ = siVar;
        this.ZYk = zYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean ZYk(String str) {
        return this.oJ.ZYk(str);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public boolean oJ(String str, Bitmap bitmap) {
        return this.oJ.oJ(str, bitmap);
    }

    @Override // com.bytedance.sdk.component.Pfn.oJ
    public Bitmap oJ(String str) {
        return this.oJ.oJ(str);
    }
}
