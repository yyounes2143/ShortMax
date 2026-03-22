package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Path;
import com.bytedance.adsdk.ZYk.oJ.oJ.RZ;
import java.util.List;
/* loaded from: classes3.dex */
public class PiB extends oJ<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ, Path> {
    private final Path Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private List<RZ> f11523ba;
    private final com.bytedance.adsdk.ZYk.tB.ZYk.WcQ ex;

    public PiB(List<com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ>> list) {
        super(list);
        this.ex = new com.bytedance.adsdk.ZYk.tB.ZYk.WcQ();
        this.Pfn = new Path();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ
    /* renamed from: ZYk */
    public Path oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.WcQ> oJVar, float f10) {
        this.ex.oJ(oJVar.oJ, oJVar.ZYk, f10);
        com.bytedance.adsdk.ZYk.tB.ZYk.WcQ wcQ = this.ex;
        List<RZ> list = this.f11523ba;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                wcQ = this.f11523ba.get(size).oJ(wcQ);
            }
        }
        com.bytedance.adsdk.ZYk.ba.Pfn.oJ(wcQ, this.Pfn);
        return this.Pfn;
    }

    public void oJ(List<RZ> list) {
        this.f11523ba = list;
    }
}
