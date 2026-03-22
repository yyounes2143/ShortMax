package com.scwang.smart.refresh.header.material;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
@SuppressLint({"ViewConstructor", "AppCompatCustomView"})
/* loaded from: classes6.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    int f36897a;

    public CircleImageView(Context context, int i10) {
        super(context);
        float f10 = getResources().getDisplayMetrics().density;
        this.f36897a = (int) (3.5f * f10);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        setElevation(f10 * 4.0f);
        shapeDrawable.getPaint().setColor(i10);
        setBackground(shapeDrawable);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
        }
    }
}
