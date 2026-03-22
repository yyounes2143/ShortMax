package com.bytedance.adsdk.ugeno.ex.oJ;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class ZYk implements tB {
    private List<ex> oJ = new CopyOnWriteArrayList();

    @Override // com.bytedance.adsdk.ugeno.ex.oJ.tB
    public void oJ(ex exVar) {
        this.oJ.add(exVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.oJ.tB
    public void oJ(String str) {
        if (this.oJ.isEmpty()) {
            return;
        }
        for (ex exVar : this.oJ) {
            exVar.oJ(str);
        }
    }
}
