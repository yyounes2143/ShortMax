package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class dLZ {
    private com.bytedance.sdk.openadsdk.core.Pfn.so Pfn;
    protected Context ZYk;
    private com.bytedance.sdk.openadsdk.core.widget.si ex;
    protected View oJ = Pfn();
    private com.bytedance.sdk.openadsdk.core.widget.so tB;

    public dLZ(Context context) {
        this.ZYk = context;
    }

    private View Pfn() {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(this.ZYk);
        pfn.setGravity(1);
        pfn.setOrientation(1);
        com.bytedance.sdk.openadsdk.core.widget.si siVar = new com.bytedance.sdk.openadsdk.core.widget.si(this.ZYk);
        this.ex = siVar;
        siVar.setId(520093745);
        int ZYk = cdg.ZYk(this.ZYk, 64.0f);
        pfn.addView(this.ex, new LinearLayout.LayoutParams(ZYk, ZYk));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(this.ZYk);
        this.Pfn = soVar;
        soVar.setId(520093746);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 219.0f), -2);
        layoutParams.topMargin = cdg.ZYk(this.ZYk, 16.0f);
        this.Pfn.setLayoutParams(layoutParams);
        this.Pfn.setEllipsize(TextUtils.TruncateAt.END);
        this.Pfn.setGravity(17);
        this.Pfn.setMaxWidth(cdg.ZYk(this.ZYk, 150.0f));
        this.Pfn.setMaxLines(2);
        this.Pfn.setTextColor(-1);
        this.Pfn.setTextSize(1, 16.0f);
        pfn.addView(this.Pfn);
        this.tB = new com.bytedance.sdk.openadsdk.core.widget.so(this.ZYk);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 219.0f), cdg.ZYk(this.ZYk, 6.0f));
        layoutParams2.topMargin = cdg.ZYk(this.ZYk, 32.0f);
        pfn.addView(this.tB, layoutParams2);
        return pfn;
    }

    public com.bytedance.sdk.openadsdk.core.widget.si ZYk() {
        return this.ex;
    }

    public void ex() {
        this.oJ = null;
        this.ZYk = null;
    }

    public View oJ() {
        return this.oJ;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so tB() {
        return this.Pfn;
    }

    public void oJ(int i10) {
        this.tB.setProgress(i10);
    }
}
