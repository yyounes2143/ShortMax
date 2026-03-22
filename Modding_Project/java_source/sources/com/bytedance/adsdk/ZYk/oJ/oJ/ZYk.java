package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk {
    private final List<oq> oJ = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(oq oqVar) {
        this.oJ.add(oqVar);
    }

    public void oJ(Path path) {
        for (int size = this.oJ.size() - 1; size >= 0; size--) {
            com.bytedance.adsdk.ZYk.ba.ba.oJ(path, this.oJ.get(size));
        }
    }
}
