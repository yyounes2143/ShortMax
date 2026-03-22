package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.component.ZYk.oJ.ex {
    public static volatile kkU oJ;
    private ExecutorService ex;
    private List<com.bytedance.sdk.component.ZYk.oJ.ZYk> ZYk = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.ZYk.oJ.ZYk> tB = new CopyOnWriteArrayList();

    public oJ(ExecutorService executorService) {
        this.ex = executorService;
    }

    public boolean Pfn() {
        if (oJ != null && oJ.oJ() != null) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public ExecutorService ZYk() {
        ExecutorService executorService;
        if (oJ != null) {
            executorService = oJ.oJ();
        } else {
            executorService = null;
        }
        if (executorService != null) {
            return executorService;
        }
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public List<com.bytedance.sdk.component.ZYk.oJ.ZYk> ex() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public int oJ() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public List<com.bytedance.sdk.component.ZYk.oJ.ZYk> tB() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ex
    public void oJ(int i10) {
    }

    public static void oJ(kkU kku) {
        oJ = kku;
    }
}
