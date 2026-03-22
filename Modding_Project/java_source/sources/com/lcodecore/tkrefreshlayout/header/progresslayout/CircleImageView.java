package com.lcodecore.tkrefreshlayout.header.progresslayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
/* loaded from: classes5.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Animation.AnimationListener f25700a;

    /* renamed from: b  reason: collision with root package name */
    private int f25701b;

    /* loaded from: classes5.dex */
    private class a extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private RadialGradient f25702a;

        /* renamed from: b  reason: collision with root package name */
        private Paint f25703b = new Paint();

        /* renamed from: c  reason: collision with root package name */
        private int f25704c;

        public a(int i10, int i11) {
            CircleImageView.this.f25701b = i10;
            this.f25704c = i11;
            int i12 = this.f25704c;
            RadialGradient radialGradient = new RadialGradient(i12 / 2, i12 / 2, CircleImageView.this.f25701b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f25702a = radialGradient;
            this.f25703b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = CircleImageView.this.getWidth() / 2;
            float height = CircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width, height, (this.f25704c / 2) + CircleImageView.this.f25701b, this.f25703b);
            canvas.drawCircle(width, height, this.f25704c / 2, paint);
        }
    }

    public CircleImageView(Context context, int i10, float f10) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f11 = getContext().getResources().getDisplayMetrics().density;
        int i11 = (int) (f10 * f11 * 2.0f);
        int i12 = (int) (1.75f * f11);
        int i13 = (int) (0.0f * f11);
        this.f25701b = (int) (3.5f * f11);
        if (c()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f11 * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new a(this.f25701b, i11));
            ViewCompat.setLayerType(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f25701b, i13, i12, 503316480);
            int i14 = this.f25701b;
            setPadding(i14, i14, i14, i14);
        }
        shapeDrawable.getPaint().setColor(i10);
        setBackgroundDrawable(shapeDrawable);
    }

    private boolean c() {
        return true;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f25700a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f25700a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!c()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f25701b * 2), getMeasuredHeight() + (this.f25701b * 2));
        }
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.f25700a = animationListener;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
        }
    }

    public void setBackgroundColorRes(int i10) {
        setBackgroundColor(getContext().getResources().getColor(i10));
    }
}
