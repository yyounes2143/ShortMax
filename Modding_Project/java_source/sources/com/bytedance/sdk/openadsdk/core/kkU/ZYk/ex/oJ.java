package com.bytedance.sdk.openadsdk.core.kkU.ZYk.ex;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.jFA.ZYk.oJ {
    private final com.bytedance.adsdk.ugeno.jFA.ZYk.oJ ZYk;
    private final com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJ;

    public oJ(Context context) {
        super(context);
        com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJVar = new com.bytedance.adsdk.ugeno.jFA.ZYk.oJ(context);
        this.oJ = oJVar;
        addView(oJVar, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJVar2 = new com.bytedance.adsdk.ugeno.jFA.ZYk.oJ(context);
        this.ZYk = oJVar2;
        oJVar2.setBackgroundColor(0);
        addView(oJVar2, new FrameLayout.LayoutParams(-1, -1));
    }

    public com.bytedance.adsdk.ugeno.jFA.ZYk.oJ getVideoView() {
        return this.oJ;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.ZYk.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.ZYk.setOnTouchListener(onTouchListener);
    }
}
