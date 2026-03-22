package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class tB extends ZYk {
    private int ex;

    public tB(Integer num, View view, cY cYVar, Pfn.oJ oJVar) {
        super(num, view, cYVar, 1000, oJVar);
        this.ex = -1;
        ZYk(view);
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    protected void ZYk(int i10) {
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public int ba() {
        cY cYVar = this.ZYk;
        if (cYVar != null && cYVar.wd() && this.ZYk.qnr() == 1) {
            return 1000;
        }
        return 100;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public void ex() {
        super.ex();
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    protected boolean tB() {
        WeakReference<View> weakReference = this.oJ;
        boolean z10 = false;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        View view = this.oJ.get();
        if (this.ex == -1) {
            ZYk(view);
        }
        if (this.ex == 1) {
            z10 = true;
        }
        return ba.oJ(view, z10, this.ZYk.TxP());
    }

    private void ZYk(View view) {
        if (view != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            this.ex = width * height >= 242500 ? 1 : 0;
        }
    }
}
