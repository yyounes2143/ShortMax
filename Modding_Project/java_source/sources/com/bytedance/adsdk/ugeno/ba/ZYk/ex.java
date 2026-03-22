package com.bytedance.adsdk.ugeno.ba.ZYk;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.adsdk.ugeno.so.tB;
/* loaded from: classes3.dex */
public class ex implements tB.Pfn {
    private String oJ;

    public void oJ(String str) {
        this.oJ = str;
    }

    @Override // com.bytedance.adsdk.ugeno.so.tB.Pfn
    public void oJ(View view, float f10) {
        if (f10 >= -1.0f && f10 <= 1.0f) {
            view.setAlpha(1.0f);
            view.setTranslationX(view.getWidth() * (-f10));
            view.setTranslationY(view.getHeight() * f10);
        } else {
            view.setAlpha(0.0f);
        }
        if (TextUtils.equals(this.oJ, "cube")) {
            float height = f10 < 0.0f ? view.getHeight() : 0.0f;
            view.setPivotX(view.getWidth() * 0.5f);
            view.setPivotY(height);
            view.setRotationX(f10 * (-90.0f));
        }
    }
}
