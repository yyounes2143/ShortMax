package com.bytedance.adsdk.ugeno.ba.ZYk;

import android.view.View;
import com.bytedance.adsdk.ugeno.so.tB;
/* loaded from: classes3.dex */
public class oJ implements tB.Pfn {
    @Override // com.bytedance.adsdk.ugeno.so.tB.Pfn
    public void oJ(View view, float f10) {
        float f11 = 0.0f;
        if (f10 < 0.0f) {
            f11 = view.getWidth();
        }
        view.setPivotX(f11);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f10 * 90.0f);
    }
}
