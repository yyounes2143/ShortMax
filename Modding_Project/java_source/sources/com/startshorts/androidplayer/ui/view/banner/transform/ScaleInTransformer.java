package com.startshorts.androidplayer.ui.view.banner.transform;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes7.dex */
public class ScaleInTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a  reason: collision with root package name */
    private final float f47080a;

    public ScaleInTransformer(float f10) {
        this.f47080a = f10;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f10) {
        try {
            int width = view.getWidth();
            view.setPivotY(view.getHeight() / 2.0f);
            float f11 = width;
            view.setPivotX(f11 / 2.0f);
            if (f10 < -1.0f) {
                view.setScaleX(this.f47080a);
                view.setScaleY(this.f47080a);
                view.setPivotX(f11);
            } else if (f10 <= 1.0f) {
                if (f10 < 0.0f) {
                    float f12 = this.f47080a;
                    float f13 = ((f10 + 1.0f) * (1.0f - f12)) + f12;
                    view.setScaleX(f13);
                    view.setScaleY(f13);
                    view.setPivotX(f11 * (((-f10) * 0.5f) + 0.5f));
                } else {
                    float f14 = 1.0f - f10;
                    float f15 = this.f47080a;
                    float f16 = ((1.0f - f15) * f14) + f15;
                    view.setScaleX(f16);
                    view.setScaleY(f16);
                    view.setPivotX(f11 * f14 * 0.5f);
                }
            } else {
                view.setPivotX(0.0f);
                view.setScaleX(this.f47080a);
                view.setScaleY(this.f47080a);
            }
        } catch (Exception unused) {
        }
    }
}
