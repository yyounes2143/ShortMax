package com.bytedance.sdk.component.adexpress.ZYk;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
/* loaded from: classes3.dex */
public class ba implements kkU {
    private oJ ZYk;
    private Context oJ;
    private PiB tB;

    public ba(Context context, PiB piB, oJ oJVar) {
        this.oJ = context;
        this.ZYk = oJVar;
        this.tB = piB;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public void oJ() {
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public boolean oJ(final kkU.oJ oJVar) {
        this.tB.Pfn().ba();
        this.ZYk.oJ(new cFZ() { // from class: com.bytedance.sdk.component.adexpress.ZYk.ba.1
            @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
            public void oJ(View view, WcQ wcQ) {
                if (oJVar.tB()) {
                    return;
                }
                awB ZYk = oJVar.ZYk();
                if (ZYk != null) {
                    ZYk.oJ(ba.this.ZYk, wcQ);
                }
                oJVar.oJ(true);
            }

            @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
            public void oJ(int i10, String str) {
                awB ZYk = oJVar.ZYk();
                if (ZYk != null) {
                    ZYk.a_(i10);
                }
            }
        });
        return true;
    }

    public void oJ(tB tBVar) {
        this.ZYk.oJ(tBVar);
    }
}
