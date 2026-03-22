package com.bytedance.adsdk.ZYk.tB.oJ;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
abstract class WcQ<V, O> implements PiB<V, O> {
    final List<com.bytedance.adsdk.ZYk.cFZ.oJ<V>> oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WcQ(List<com.bytedance.adsdk.ZYk.cFZ.oJ<V>> list) {
        this.oJ = list;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public boolean ZYk() {
        if (this.oJ.isEmpty() || (this.oJ.size() == 1 && this.oJ.get(0).Pfn())) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.oJ.PiB
    public List<com.bytedance.adsdk.ZYk.cFZ.oJ<V>> tB() {
        return this.oJ;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.oJ.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.oJ.toArray()));
        }
        return sb2.toString();
    }
}
