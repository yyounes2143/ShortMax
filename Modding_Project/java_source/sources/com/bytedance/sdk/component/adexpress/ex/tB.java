package com.bytedance.sdk.component.adexpress.ex;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
/* loaded from: classes3.dex */
public class tB {
    public static Drawable oJ(Context context, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        if (context == null || cfz == null) {
            return null;
        }
        return oJ(context, (int) cFZ.oJ(context, cfz.si()), cfz.eZI(), cfz.IUZ());
    }

    public static Drawable oJ(Context context, int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i10, i11);
        }
        gradientDrawable.setColor(i12);
        return gradientDrawable;
    }
}
