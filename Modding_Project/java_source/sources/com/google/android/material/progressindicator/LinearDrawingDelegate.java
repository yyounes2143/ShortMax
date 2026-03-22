package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.math.MathUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.progressindicator.DrawingDelegate;
/* loaded from: classes5.dex */
final class LinearDrawingDelegate extends DrawingDelegate<LinearProgressIndicatorSpec> {
    private float displayedCornerRadius;
    private float displayedTrackThickness;
    @FloatRange(from = 0.0d, to = 1.0d)
    private float totalTrackLengthFraction;
    private float trackLength;
    private boolean useStrokeCap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinearDrawingDelegate(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.trackLength = 300.0f;
    }

    private void drawLine(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, @ColorInt int i10, @Px int i11, @Px int i12) {
        Paint.Cap cap;
        float clamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        float clamp2 = MathUtils.clamp(f11, 0.0f, 1.0f);
        float lerp = com.google.android.material.math.MathUtils.lerp(1.0f - this.totalTrackLengthFraction, 1.0f, clamp);
        float lerp2 = com.google.android.material.math.MathUtils.lerp(1.0f - this.totalTrackLengthFraction, 1.0f, clamp2);
        float f12 = this.trackLength;
        int clamp3 = (int) ((lerp * f12) + ((int) ((i11 * MathUtils.clamp(lerp, 0.0f, 0.01f)) / 0.01f)));
        int clamp4 = (int) ((lerp2 * f12) - ((int) ((i12 * (1.0f - MathUtils.clamp(lerp2, 0.99f, 1.0f))) / 0.01f)));
        float f13 = (-f12) / 2.0f;
        if (clamp3 <= clamp4) {
            float f14 = this.displayedCornerRadius;
            float f15 = clamp3 + f14;
            float f16 = clamp4 - f14;
            float f17 = f14 * 2.0f;
            paint.setColor(i10);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.displayedTrackThickness);
            if (f15 >= f16) {
                drawRoundedBlock(canvas, paint, new PointF(f15 + f13, 0.0f), new PointF(f16 + f13, 0.0f), f17, this.displayedTrackThickness);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            if (this.useStrokeCap) {
                cap = Paint.Cap.ROUND;
            } else {
                cap = Paint.Cap.BUTT;
            }
            paint.setStrokeCap(cap);
            float f18 = f15 + f13;
            float f19 = f16 + f13;
            canvas.drawLine(f18, 0.0f, f19, 0.0f, paint);
            if (!this.useStrokeCap && this.displayedCornerRadius > 0.0f) {
                paint.setStyle(Paint.Style.FILL);
                if (f15 > 0.0f) {
                    drawRoundedBlock(canvas, paint, new PointF(f18, 0.0f), f17, this.displayedTrackThickness);
                }
                if (f16 < this.trackLength) {
                    drawRoundedBlock(canvas, paint, new PointF(f19, 0.0f), f17, this.displayedTrackThickness);
                }
            }
        }
    }

    private void drawRoundedBlock(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, float f10, float f11) {
        drawRoundedBlock(canvas, paint, pointF, null, f10, f11);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    void adjustCanvas(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, to = 1.0d) float f10, boolean z10, boolean z11) {
        boolean z12;
        this.trackLength = rect.width();
        float f11 = ((LinearProgressIndicatorSpec) this.spec).trackThickness;
        canvas.translate(rect.left + (rect.width() / 2.0f), rect.top + (rect.height() / 2.0f) + Math.max(0.0f, (rect.height() - f11) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.spec).drawHorizontallyInverse) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f12 = this.trackLength / 2.0f;
        float f13 = f11 / 2.0f;
        canvas.clipRect(-f12, -f13, f12, f13);
        S s10 = this.spec;
        if (((LinearProgressIndicatorSpec) s10).trackThickness / 2 == ((LinearProgressIndicatorSpec) s10).trackCornerRadius) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.useStrokeCap = z12;
        this.displayedTrackThickness = ((LinearProgressIndicatorSpec) s10).trackThickness * f10;
        this.displayedCornerRadius = Math.min(((LinearProgressIndicatorSpec) s10).trackThickness / 2, ((LinearProgressIndicatorSpec) s10).trackCornerRadius) * f10;
        if (z10 || z11) {
            if ((z10 && ((LinearProgressIndicatorSpec) this.spec).showAnimationBehavior == 2) || (z11 && ((LinearProgressIndicatorSpec) this.spec).hideAnimationBehavior == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z10 || (z11 && ((LinearProgressIndicatorSpec) this.spec).hideAnimationBehavior != 3)) {
                canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.spec).trackThickness * (1.0f - f10)) / 2.0f);
            }
        }
        if (z11 && ((LinearProgressIndicatorSpec) this.spec).hideAnimationBehavior == 3) {
            this.totalTrackLengthFraction = f10;
        } else {
            this.totalTrackLengthFraction = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void drawStopIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(i10, i11);
        if (((LinearProgressIndicatorSpec) this.spec).trackStopIndicatorSize > 0 && compositeARGBWithAlpha != 0) {
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(compositeARGBWithAlpha);
            PointF pointF = new PointF((this.trackLength / 2.0f) - (this.displayedTrackThickness / 2.0f), 0.0f);
            S s10 = this.spec;
            drawRoundedBlock(canvas, paint, pointF, ((LinearProgressIndicatorSpec) s10).trackStopIndicatorSize, ((LinearProgressIndicatorSpec) s10).trackStopIndicatorSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull DrawingDelegate.ActiveIndicator activeIndicator, int i10) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(activeIndicator.color, i10);
        float f10 = activeIndicator.startFraction;
        float f11 = activeIndicator.endFraction;
        int i11 = activeIndicator.gapSize;
        drawLine(canvas, paint, f10, f11, compositeARGBWithAlpha, i11, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillTrack(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, int i10, int i11, @Px int i12) {
        drawLine(canvas, paint, f10, f11, MaterialColors.compositeARGBWithAlpha(i10, i11), i12, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredHeight() {
        return ((LinearProgressIndicatorSpec) this.spec).trackThickness;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredWidth() {
        return -1;
    }

    private void drawRoundedBlock(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, @Nullable PointF pointF2, float f10, float f11) {
        float min = Math.min(f11, this.displayedTrackThickness);
        float f12 = f10 / 2.0f;
        float min2 = Math.min(f12, (this.displayedCornerRadius * min) / this.displayedTrackThickness);
        RectF rectF = new RectF((-f10) / 2.0f, (-min) / 2.0f, f12, min / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, min2, min2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }
}
