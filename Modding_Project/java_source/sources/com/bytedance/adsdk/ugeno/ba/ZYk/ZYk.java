package com.bytedance.adsdk.ugeno.ba.ZYk;

import android.view.View;
import com.bytedance.adsdk.ugeno.so.tB;
/* loaded from: classes3.dex */
public class ZYk implements tB.Pfn {
    @Override // com.bytedance.adsdk.ugeno.so.tB.Pfn
    public void oJ(View view, float f10) {
        int width = view.getWidth();
        if (f10 >= -1.0f && f10 <= 1.0f) {
            if (f10 < 0.0f) {
                view.setTranslationX((-width) * f10);
            } else {
                view.setTranslationX(width);
                view.setTranslationX((-width) * f10);
            }
            view.setAlpha(Math.max(0.0f, 1.0f - Math.abs(f10)));
            return;
        }
        view.setAlpha(0.0f);
    }
}
