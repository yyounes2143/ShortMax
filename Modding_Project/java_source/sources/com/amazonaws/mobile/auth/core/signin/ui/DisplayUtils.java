package com.amazonaws.mobile.auth.core.signin.ui;

import android.content.res.Resources;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.DisplayMetrics;
/* loaded from: classes2.dex */
public class DisplayUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final DisplayMetrics f5088a;

    /* renamed from: b  reason: collision with root package name */
    private static int f5089b;

    static {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        f5088a = displayMetrics;
        f5089b = displayMetrics.densityDpi / 160;
    }

    public static int a(int i10) {
        return i10 * f5089b;
    }

    public static ShapeDrawable b(int i10, int i11) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(c(i10));
        shapeDrawable.getPaint().setColor(i11);
        return shapeDrawable;
    }

    public static Shape c(int i10) {
        float f10 = i10;
        return new RoundRectShape(new float[]{f10, f10, f10, f10, f10, f10, f10, f10}, null, null);
    }
}
