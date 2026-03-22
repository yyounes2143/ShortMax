package com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.jFA.ZYk.oJ {
    private final com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJ;

    public oJ(Context context) {
        super(context);
        com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJVar = new com.bytedance.adsdk.ugeno.jFA.ZYk.oJ(context);
        this.oJ = oJVar;
        addView(oJVar, new FrameLayout.LayoutParams(-1, -1));
    }

    public com.bytedance.adsdk.ugeno.jFA.ZYk.oJ getPlayableView() {
        return this.oJ;
    }
}
