package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.sdk.component.so.so {
    private final List<? extends com.bytedance.sdk.component.so.so> oJ;

    public ZYk(String str, List<? extends com.bytedance.sdk.component.so.so> list) {
        super(str);
        this.oJ = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<? extends com.bytedance.sdk.component.so.so> list;
        if (Ry.tB(si.oJ()) != 0 && (list = this.oJ) != null) {
            Iterator<? extends com.bytedance.sdk.component.so.so> it = list.iterator();
            while (it.hasNext()) {
                ofl.oJ(it.next(), 1);
                it.remove();
            }
        }
        try {
            com.bytedance.sdk.component.utils.jFA.oJ().removeCallbacks(this);
        } catch (Exception unused) {
        }
    }
}
