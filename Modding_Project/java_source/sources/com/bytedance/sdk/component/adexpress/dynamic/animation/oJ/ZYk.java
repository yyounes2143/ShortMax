package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk implements XAo {
    List<ex> oJ = new ArrayList();

    public ZYk(View view, List<com.bytedance.sdk.component.adexpress.dynamic.ex.oJ> list) {
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar : list) {
            ex oJ = tB.oJ().oJ(view, oJVar);
            if (oJ != null) {
                this.oJ.add(oJ);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo
    public void ZYk() {
        for (ex exVar : this.oJ) {
            try {
                exVar.ZYk();
            } catch (Exception unused) {
            }
        }
    }

    public void oJ() {
        for (ex exVar : this.oJ) {
            try {
                exVar.tB();
            } catch (Exception unused) {
            }
        }
    }
}
