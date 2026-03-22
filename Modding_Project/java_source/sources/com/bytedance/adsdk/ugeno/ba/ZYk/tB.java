package com.bytedance.adsdk.ugeno.ba.ZYk;

import android.view.View;
import com.bytedance.adsdk.ugeno.so.tB;
/* loaded from: classes3.dex */
public class tB implements tB.Pfn {
    final float oJ = 0.8f;
    final float ZYk = 0.5f;

    @Override // com.bytedance.adsdk.ugeno.so.tB.Pfn
    public void oJ(View view, float f10) {
        float f11;
        float f12;
        int i10 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        if (i10 < 0) {
            f11 = 0.19999999f;
        } else {
            f11 = -0.19999999f;
        }
        float f13 = (f11 * f10) + 1.0f;
        if (i10 < 0) {
            f12 = 0.5f;
        } else {
            f12 = -0.5f;
        }
        float f14 = (f10 * f12) + 1.0f;
        if (i10 < 0) {
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight() / 2);
        } else {
            view.setPivotX(0.0f);
            view.setPivotY(view.getHeight() / 2);
        }
        view.setScaleX(f13);
        view.setScaleY(f13);
        view.setAlpha(Math.abs(f14));
    }
}
