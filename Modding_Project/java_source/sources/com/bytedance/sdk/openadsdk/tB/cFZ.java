package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.graphics.Color;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class cFZ extends LinearLayout {
    private so ZYk;
    private final FilterWord oJ;
    private final kkU tB;

    public cFZ(Context context, FilterWord filterWord, kkU kku) {
        super(context);
        setOrientation(1);
        this.oJ = filterWord;
        this.tB = kku;
        oJ();
    }

    private void ZYk() {
        this.ZYk = new so(getContext(), this.tB);
        new LinearLayout.LayoutParams(-1, -2);
        this.ZYk.oJ(this.oJ.getOptions());
        addView(this.ZYk);
    }

    private void oJ() {
        tB();
        ZYk();
    }

    private void tB() {
        int i10;
        String name = this.oJ.getName();
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.bottomMargin = cdg.ZYk(getContext(), 12.0f);
        layoutParams.gravity = 17;
        soVar.setGravity(17);
        soVar.setText(name);
        soVar.setTextColor(Color.argb(85, 22, 24, 35));
        if (this.tB.jFA()) {
            i10 = 14;
        } else {
            i10 = 10;
        }
        soVar.setTextSize(i10);
        addView(soVar, layoutParams);
    }
}
