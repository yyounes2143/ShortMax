package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class ex {
    public static Drawable ZYk() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 44.0f));
        gradientDrawable.setStroke(cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 1.0f), Color.parseColor("#33FFFFFF"));
        gradientDrawable.setColor(Color.parseColor("#99333333"));
        return gradientDrawable;
    }

    public static Drawable oJ() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setStroke(cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 1.0f), Color.parseColor("#33FFFFFF"));
        gradientDrawable.setColor(Color.parseColor("#99333333"));
        return gradientDrawable;
    }
}
