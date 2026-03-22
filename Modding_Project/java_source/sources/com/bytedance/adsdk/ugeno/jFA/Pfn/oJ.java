package com.bytedance.adsdk.ugeno.jFA.Pfn;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.ex;
/* loaded from: classes3.dex */
public class oJ extends FrameLayout {
    private LinearLayout Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private LinearLayout f11677ba;
    private Context cFZ;
    private float ex;
    private float oJ;

    /* renamed from: so  reason: collision with root package name */
    private ex f11678so;
    private double tB;

    public oJ(Context context) {
        super(context);
        this.cFZ = context;
        this.Pfn = new LinearLayout(context);
        this.f11677ba = new LinearLayout(context);
        this.Pfn.setOrientation(0);
        this.Pfn.setGravity(GravityCompat.START);
        this.f11677ba.setOrientation(0);
        this.f11677ba.setGravity(GravityCompat.START);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.oJ, (int) this.ZYk);
        float f10 = this.ex;
        layoutParams.leftMargin = (int) f10;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f10;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void oJ(double d10, int i10, int i11, float f10, int i12) {
        removeAllViews();
        this.Pfn.removeAllViews();
        this.f11677ba.removeAllViews();
        this.oJ = (int) so.oJ(this.cFZ, f10);
        this.ZYk = (int) so.oJ(this.cFZ, f10);
        this.tB = d10;
        this.ex = i12;
        for (int i13 = 0; i13 < 5; i13++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setImageResource(com.bytedance.adsdk.ugeno.cFZ.ex.ZYk(this.cFZ, "tt_ugen_rating_star"));
            starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            this.f11677ba.addView(starImageView);
        }
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageResource(com.bytedance.adsdk.ugeno.cFZ.ex.ZYk(this.cFZ, "tt_ugen_rating_star"));
            starImageView2.setColorFilter(i11);
            this.Pfn.addView(starImageView2);
        }
        addView(this.Pfn);
        addView(this.f11677ba);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.f11678so;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.f11678so;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.f11678so;
        if (exVar != null) {
            exVar.oJ(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        ex exVar = this.f11678so;
        if (exVar != null) {
            exVar.oJ(i10, i11);
        }
        super.onMeasure(i10, i11);
        this.Pfn.measure(i10, i11);
        double floor = Math.floor(this.tB);
        float f10 = this.ex;
        float f11 = this.oJ;
        this.f11677ba.measure(View.MeasureSpec.makeMeasureSpec((int) (((f10 + f10 + f11) * floor) + f10 + ((this.tB - floor) * f11)), 1073741824), View.MeasureSpec.makeMeasureSpec(this.Pfn.getMeasuredHeight(), 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.f11678so;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void oJ(ex exVar) {
        this.f11678so = exVar;
    }
}
