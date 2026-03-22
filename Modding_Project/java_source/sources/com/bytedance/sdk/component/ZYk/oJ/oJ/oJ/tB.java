package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.so;
import java.io.IOException;
import java.util.List;
/* loaded from: classes3.dex */
public class tB implements so.oJ {
    BTZ ZYk;
    List<com.bytedance.sdk.component.ZYk.oJ.so> oJ;
    int tB = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tB(List<com.bytedance.sdk.component.ZYk.oJ.so> list, BTZ btz) {
        this.oJ = list;
        this.ZYk = btz;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.so.oJ
    public BTZ oJ() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.so.oJ
    public WcQ oJ(BTZ btz) throws IOException {
        this.ZYk = btz;
        int i10 = this.tB + 1;
        this.tB = i10;
        if (i10 >= this.oJ.size()) {
            return null;
        }
        return this.oJ.get(this.tB).oJ(this);
    }
}
