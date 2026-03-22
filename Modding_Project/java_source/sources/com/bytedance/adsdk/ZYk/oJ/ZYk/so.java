package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class so {
    private final List<oJ<Integer, Integer>> ZYk;
    private final List<oJ<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ, Path>> oJ;
    private final List<com.bytedance.adsdk.ZYk.tB.ZYk.so> tB;

    public so(List<com.bytedance.adsdk.ZYk.tB.ZYk.so> list) {
        this.tB = list;
        this.oJ = new ArrayList(list.size());
        this.ZYk = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.oJ.add(list.get(i10).ZYk().oJ());
            this.ZYk.add(list.get(i10).tB().oJ());
        }
    }

    public List<oJ<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ, Path>> ZYk() {
        return this.oJ;
    }

    public List<com.bytedance.adsdk.ZYk.tB.ZYk.so> oJ() {
        return this.tB;
    }

    public List<oJ<Integer, Integer>> tB() {
        return this.ZYk;
    }
}
