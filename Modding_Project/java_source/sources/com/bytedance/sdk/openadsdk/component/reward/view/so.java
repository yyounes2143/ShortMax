package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.component.reward.oJ.Ry;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class so {
    private boolean Pfn;
    @Nullable
    private RFEndCardBackUpLayout ZYk;
    private Ry ex;
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJ;
    private boolean tB;

    public so(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.oJ = oJVar;
    }

    public boolean Pfn() {
        return this.Pfn;
    }

    public void ZYk() {
        this.Pfn = true;
        cdg.oJ((View) this.ZYk, 0);
    }

    public void ex() {
        Ry ry = this.ex;
        if (ry != null) {
            ry.ZYk();
        }
    }

    public void oJ() {
        if (this.tB) {
            return;
        }
        this.tB = true;
        RFEndCardBackUpLayout rFEndCardBackUpLayout = (RFEndCardBackUpLayout) this.oJ.f13027wd.findViewById(eZI.zGT);
        this.ZYk = rFEndCardBackUpLayout;
        if (rFEndCardBackUpLayout != null) {
            rFEndCardBackUpLayout.init(this.oJ);
        }
        if (this.oJ.ZYk.Br()) {
            this.ex = new Ry(this.oJ);
        }
    }

    public void tB() {
        Ry ry = this.ex;
        if (ry != null) {
            ry.oJ();
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        RFEndCardBackUpLayout rFEndCardBackUpLayout = this.ZYk;
        if (rFEndCardBackUpLayout == null) {
            return;
        }
        cdg.oJ(rFEndCardBackUpLayout, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.so.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mFLEndCardBackupContainer");
        Ry ry = this.ex;
        if (ry != null) {
            ry.oJ(pfn);
        }
    }

    public boolean oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.eZI ezi) {
        this.Pfn = true;
        Ry ry = this.ex;
        if (ry != null && ry.oJ(ezi)) {
            cdg.oJ((View) this.ZYk, 0);
            return true;
        }
        return false;
    }

    public void oJ(int i10) {
        RFEndCardBackUpLayout rFEndCardBackUpLayout = this.ZYk;
        if (rFEndCardBackUpLayout == null) {
            return;
        }
        rFEndCardBackUpLayout.setShownAdCount(i10);
    }
}
