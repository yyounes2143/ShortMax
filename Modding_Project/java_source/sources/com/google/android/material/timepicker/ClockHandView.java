package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class ClockHandView extends View {
    private static final int DEFAULT_ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final int animationDuration;
    private final TimeInterpolator animationInterpolator;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private int currentLevel;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private boolean isMultiLevel;
    private final List<OnRotateListener> listeners;
    private OnActionUpListener onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private final ValueAnimator rotationAnimator;
    private final int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;
    @Px
    private final int selectorStrokeWidth;

    /* loaded from: classes5.dex */
    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    /* loaded from: classes5.dex */
    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void adjustLevel(float f10, float f11) {
        int i10 = 2;
        if (MathUtils.dist(getWidth() / 2, getHeight() / 2, f10, f11) > getLeveledCircleRadius(2) + ViewUtils.dpToPx(getContext(), 12)) {
            i10 = 1;
        }
        this.currentLevel = i10;
    }

    private void drawSelector(Canvas canvas) {
        int leveledCircleRadius;
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f10 = width;
        float leveledCircleRadius2 = getLeveledCircleRadius(this.currentLevel);
        float f11 = height;
        this.paint.setStrokeWidth(0.0f);
        canvas.drawCircle((((float) Math.cos(this.degRad)) * leveledCircleRadius2) + f10, (leveledCircleRadius2 * ((float) Math.sin(this.degRad))) + f11, this.selectorRadius, this.paint);
        double sin = Math.sin(this.degRad);
        double cos = Math.cos(this.degRad);
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(f10, f11, width + ((int) (cos * r7)), height + ((int) (r7 * sin)), this.paint);
        canvas.drawCircle(f10, f11, this.centerDotRadius, this.paint);
    }

    private int getDegreesFromXY(float f10, float f11) {
        int degrees = (int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)));
        int i10 = degrees + 90;
        if (i10 < 0) {
            return degrees + 450;
        }
        return i10;
    }

    @Dimension
    private int getLeveledCircleRadius(int i10) {
        if (i10 == 2) {
            return Math.round(this.circleRadius * 0.66f);
        }
        return this.circleRadius;
    }

    private Pair<Float, Float> getValuesForAnimation(float f10) {
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f10) > 180.0f) {
            if (handRotation > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (handRotation < 180.0f && f10 > 180.0f) {
                handRotation += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(handRotation), Float.valueOf(f10));
    }

    private boolean handleTouchInput(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        float degreesFromXY = getDegreesFromXY(f10, f11);
        boolean z14 = false;
        if (getHandRotation() != degreesFromXY) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z11 && z13) {
            return true;
        }
        if (!z13 && !z10) {
            return false;
        }
        if (z12 && this.animatingOnTouchUp) {
            z14 = true;
        }
        setHandRotation(degreesFromXY, z14);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHandRotation$0(ValueAnimator valueAnimator) {
        setHandRotationInternal(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private void setHandRotationInternal(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.originalDeg = f11;
        this.degRad = Math.toRadians(f11 - 90.0f);
        float leveledCircleRadius = getLeveledCircleRadius(this.currentLevel);
        float width = (getWidth() / 2) + (((float) Math.cos(this.degRad)) * leveledCircleRadius);
        float height = (getHeight() / 2) + (leveledCircleRadius * ((float) Math.sin(this.degRad)));
        RectF rectF = this.selectorBox;
        int i10 = this.selectorRadius;
        rectF.set(width - i10, height - i10, width + i10, height + i10);
        for (OnRotateListener onRotateListener : this.listeners) {
            onRotateListener.onRotate(f11, z10);
        }
        invalidate();
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.listeners.add(onRotateListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentLevel() {
        return this.currentLevel;
    }

    public RectF getCurrentSelectorBox() {
        return this.selectorBox;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float getHandRotation() {
        return this.originalDeg;
    }

    public int getSelectorRadius() {
        return this.selectorRadius;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawSelector(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (!this.rotationAnimator.isRunning()) {
            setHandRotation(getHandRotation());
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        OnActionUpListener onActionUpListener;
        boolean z13;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked != 1 && actionMasked != 2) {
                z10 = false;
                z11 = false;
                z12 = false;
            } else {
                int i10 = (int) (x10 - this.downX);
                int i11 = (int) (y10 - this.downY);
                if ((i10 * i10) + (i11 * i11) > this.scaledTouchSlop) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                this.isInTapRegion = z13;
                boolean z14 = this.changedDuringTouch;
                if (actionMasked == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.isMultiLevel) {
                    adjustLevel(x10, y10);
                }
                z12 = false;
                z11 = z14;
            }
        } else {
            this.downX = x10;
            this.downY = y10;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean handleTouchInput = handleTouchInput(x10, y10, z11, z12, z10) | this.changedDuringTouch;
        this.changedDuringTouch = handleTouchInput;
        if (handleTouchInput && z10 && (onActionUpListener = this.onActionUpListener) != null) {
            onActionUpListener.onActionUp(getDegreesFromXY(x10, y10), this.isInTapRegion);
        }
        return true;
    }

    public void setAnimateOnTouchUp(boolean z10) {
        this.animatingOnTouchUp = z10;
    }

    public void setCircleRadius(@Dimension int i10) {
        this.circleRadius = i10;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentLevel(int i10) {
        this.currentLevel = i10;
        invalidate();
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        setHandRotation(f10, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMultiLevel(boolean z10) {
        if (this.isMultiLevel && !z10) {
            this.currentLevel = 1;
        }
        this.isMultiLevel = z10;
        invalidate();
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.onActionUpListener = onActionUpListener;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            setHandRotationInternal(f10, false);
            return;
        }
        Pair<Float, Float> valuesForAnimation = getValuesForAnimation(f10);
        this.rotationAnimator.setFloatValues(((Float) valuesForAnimation.first).floatValue(), ((Float) valuesForAnimation.second).floatValue());
        this.rotationAnimator.setDuration(this.animationDuration);
        this.rotationAnimator.setInterpolator(this.animationInterpolator);
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.lambda$setHandRotation$0(valueAnimator2);
            }
        });
        this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.rotationAnimator.start();
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.rotationAnimator = new ValueAnimator();
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        this.currentLevel = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i10, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.animationDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationLong2, 200);
        this.animationInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.selectorStrokeWidth = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(0.0f);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }
}
