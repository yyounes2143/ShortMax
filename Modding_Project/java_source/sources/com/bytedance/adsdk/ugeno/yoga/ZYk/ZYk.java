package com.bytedance.adsdk.ugeno.yoga.ZYk;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.yoga.ZYk.tB;
import com.bytedance.adsdk.ugeno.yoga.cFZ;
import com.bytedance.adsdk.ugeno.yoga.dLZ;
import com.bytedance.adsdk.ugeno.yoga.kkU;
/* loaded from: classes3.dex */
public class ZYk extends ViewGroup {
    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof ZYk) {
            throw null;
        }
        kkU oJ = dLZ.oJ();
        tB.oJ(new tB.oJ(layoutParams), oJ, view);
        oJ.oJ(view);
        oJ.oJ((cFZ) new tB.ZYk());
        throw null;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof tB.oJ;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new tB.oJ(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new tB.oJ(layoutParams);
    }

    public kkU getYogaNode() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }
}
