package com.bytedance.sdk.openadsdk.core.kkU.ZYk;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.adsdk.ugeno.ZYk.tB<FrameLayout> {
    public Pfn(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public FrameLayout oJ() {
        FrameLayout frameLayout = new FrameLayout(this.ZYk);
        com.bytedance.sdk.openadsdk.core.model.ZYk zYk = new com.bytedance.sdk.openadsdk.core.model.ZYk();
        zYk.oJ(true);
        PAGLogoView pAGLogoView = new PAGLogoView(this.ZYk);
        pAGLogoView.initData(zYk);
        frameLayout.addView(pAGLogoView);
        return frameLayout;
    }
}
