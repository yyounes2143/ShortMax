package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.PointF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class si implements oJ.InterfaceC0139oJ, RZ {
    private final String ZYk;
    private com.bytedance.adsdk.ZYk.tB.ZYk.WcQ ex;
    private final com.bytedance.adsdk.ZYk.jFA oJ;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> tB;

    public si(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.PiB piB) {
        this.oJ = jfa;
        this.ZYk = piB.oJ();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = piB.ZYk().oJ();
        this.tB = oJ;
        oJVar.oJ(oJ);
        oJ.oJ(this);
    }

    public com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> ZYk() {
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
    }

    private com.bytedance.adsdk.ZYk.tB.ZYk.WcQ ZYk(com.bytedance.adsdk.ZYk.tB.ZYk.WcQ wcQ) {
        List<com.bytedance.adsdk.ZYk.tB.oJ> tB = wcQ.tB();
        boolean ZYk = wcQ.ZYk();
        int size = tB.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            com.bytedance.adsdk.ZYk.tB.oJ oJVar = tB.get(size);
            com.bytedance.adsdk.ZYk.tB.oJ oJVar2 = tB.get(oJ(size - 1, tB.size()));
            PointF tB2 = (size != 0 || ZYk) ? oJVar2.tB() : wcQ.oJ();
            i10 = (((size != 0 || ZYk) ? oJVar2.ZYk() : tB2).equals(tB2) && oJVar.oJ().equals(tB2) && !(!wcQ.ZYk() && size == 0 && size == tB.size() - 1)) ? i10 + 2 : i10 + 1;
            size--;
        }
        com.bytedance.adsdk.ZYk.tB.ZYk.WcQ wcQ2 = this.ex;
        if (wcQ2 == null || wcQ2.tB().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new com.bytedance.adsdk.ZYk.tB.oJ());
            }
            this.ex = new com.bytedance.adsdk.ZYk.tB.ZYk.WcQ(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.ex.oJ(ZYk);
        return this.ex;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.oJ.invalidateSelf();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
        if (r7 == (r0.size() - 1)) goto L23;
     */
    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.RZ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.adsdk.ZYk.tB.ZYk.WcQ oJ(com.bytedance.adsdk.ZYk.tB.ZYk.WcQ r19) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.oJ.oJ.si.oJ(com.bytedance.adsdk.ZYk.tB.ZYk.WcQ):com.bytedance.adsdk.ZYk.tB.ZYk.WcQ");
    }

    private static int ZYk(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int oJ(int i10, int i11) {
        return i10 - (ZYk(i10, i11) * i11);
    }
}
