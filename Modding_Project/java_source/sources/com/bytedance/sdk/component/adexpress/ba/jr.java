package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
/* loaded from: classes3.dex */
public class jr extends FrameLayout {
    private static final int jFA = (com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk("", 0.0f, true)[1] / 2) + 1;
    private static final int kkU = (com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk("", 0.0f, true)[1] / 2) + 3;
    private Drawable Pfn;
    LinearLayout ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private Drawable f12660ba;
    private double cFZ;
    private float ex;
    LinearLayout oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12661so;
    private float tB;

    public jr(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.oJ = new LinearLayout(getContext());
        this.ZYk = new LinearLayout(getContext());
        this.oJ.setOrientation(0);
        this.oJ.setGravity(GravityCompat.START);
        this.ZYk.setOrientation(0);
        this.ZYk.setGravity(GravityCompat.START);
        this.Pfn = com.bytedance.sdk.component.utils.cY.tB(context, "tt_star_thick");
        this.f12660ba = com.bytedance.sdk.component.utils.cY.tB(context, "tt_star");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.tB, (int) this.ex));
        imageView.setPadding(1, jFA, 1, kkU);
        return imageView;
    }

    public Drawable getStarEmptyDrawable() {
        return this.Pfn;
    }

    public Drawable getStarFillDrawable() {
        return this.f12660ba;
    }

    public void oJ(double d10, int i10, int i11, int i12) {
        float f10 = i11;
        this.tB = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.tB(getContext(), f10);
        this.ex = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.tB(getContext(), f10);
        this.cFZ = d10;
        this.f12661so = i12;
        removeAllViews();
        for (int i13 = 0; i13 < 5; i13++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.ZYk.addView(starImageView);
        }
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.oJ.addView(starImageView2);
        }
        addView(this.oJ);
        addView(this.ZYk);
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.oJ.measure(i10, i11);
        double d10 = this.cFZ;
        float f10 = this.tB;
        this.ZYk.measure(View.MeasureSpec.makeMeasureSpec((int) ((((int) d10) * f10) + 1.0f + ((f10 - 2.0f) * (d10 - ((int) d10)))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.oJ.getMeasuredHeight(), 1073741824));
        if (this.f12661so > 0.0f) {
            LinearLayout linearLayout = this.oJ;
            linearLayout.setPadding(0, ((int) (linearLayout.getMeasuredHeight() - this.f12661so)) / 2, 0, 0);
            this.ZYk.setPadding(0, ((int) (this.oJ.getMeasuredHeight() - this.f12661so)) / 2, 0, 0);
        }
    }
}
