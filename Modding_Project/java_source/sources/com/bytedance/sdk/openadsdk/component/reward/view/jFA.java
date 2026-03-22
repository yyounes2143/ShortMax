package com.bytedance.sdk.openadsdk.component.reward.view;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJ;

    public jFA(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar.Rl);
        this.oJ = oJVar;
        if (oJVar.oCU == null && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk zYk) {
        RFEndCardBackUpLayout so2;
        zYk.oJ(this);
        if (this.oJ.oJ != 1 && (so2 = zYk.so()) != null) {
            addView(so2, new FrameLayout.LayoutParams(-1, -1));
        }
        oJ(zYk.jFA(), this);
        oJ(zYk.kkU(), this);
    }

    private void oJ(View view, ViewGroup viewGroup) {
        if (view != null) {
            viewGroup.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
    }
}
