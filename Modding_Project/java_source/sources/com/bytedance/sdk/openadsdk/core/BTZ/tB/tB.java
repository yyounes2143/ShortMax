package com.bytedance.sdk.openadsdk.core.BTZ.tB;

import com.bytedance.sdk.component.utils.cFZ;
import java.io.File;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.sdk.openadsdk.ZYk.ZYk {
    public tB(int i10, int i11) {
        super(i10, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.ZYk.ZYk, com.bytedance.sdk.openadsdk.ZYk.oJ
    protected void oJ(List<File> list) {
        int size = list.size();
        if (!oJ(0L, size)) {
            for (File file : list) {
                cFZ.tB(file);
                size--;
                if (oJ(file, 0L, size)) {
                    return;
                }
            }
        }
    }

    public tB(int i10, int i11, boolean z10) {
        super(i10, i11);
        this.oJ = z10;
    }
}
