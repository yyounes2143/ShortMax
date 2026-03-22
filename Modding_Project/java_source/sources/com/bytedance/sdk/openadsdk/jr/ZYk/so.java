package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
/* loaded from: classes3.dex */
public class so extends ZYk {
    private int ex;

    public so(Integer num, View view, cY cYVar, Pfn.oJ oJVar) {
        super(num, view, cYVar, 2000, oJVar);
        this.ex = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public boolean BTZ() {
        boolean z10;
        int i10 = this.ex;
        if (i10 != 2 && i10 != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            this.tB.set(false);
        }
        if (!z10 || super.BTZ()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    protected void ZYk(int i10) {
        if (jFA()) {
            return;
        }
        if (i10 == 6 || i10 == 5) {
            this.ex = 0;
            so();
        }
        if (i10 == 3 || i10 == 2) {
            this.ex = 2;
            so();
        }
        if (this.ex != 1 && i10 == 0) {
            this.ex = 1;
            oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public int ba() {
        return 200;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public void ex() {
        super.ex();
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    public void oJ() {
        if (this.ex != 1) {
            return;
        }
        super.oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.jr.ZYk.ZYk
    protected boolean tB() {
        if (ba.oJ(this.oJ.get(), this.ZYk.TxP()) && this.ex == 1) {
            return true;
        }
        return false;
    }
}
