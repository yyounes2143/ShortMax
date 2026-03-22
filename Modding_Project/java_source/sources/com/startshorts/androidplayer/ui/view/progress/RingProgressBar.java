package com.startshorts.androidplayer.ui.view.progress;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.startshorts.androidplayer.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RingProgressBar.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRingProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RingProgressBar.kt\ncom/startshorts/androidplayer/ui/view/progress/RingProgressBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,385:1\n1#2:386\n*E\n"})
/* loaded from: classes7.dex */
public final class RingProgressBar extends View {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Paint f47523a;

    /* renamed from: b  reason: collision with root package name */
    private int f47524b;

    /* renamed from: c  reason: collision with root package name */
    private int f47525c;

    /* renamed from: d  reason: collision with root package name */
    private int f47526d;

    /* renamed from: e  reason: collision with root package name */
    private float f47527e;

    /* renamed from: f  reason: collision with root package name */
    private int f47528f;

    /* renamed from: g  reason: collision with root package name */
    private int f47529g;

    /* renamed from: h  reason: collision with root package name */
    private int f47530h;

    /* renamed from: i  reason: collision with root package name */
    private float f47531i;

    /* renamed from: j  reason: collision with root package name */
    private float f47532j;

    /* renamed from: k  reason: collision with root package name */
    private int f47533k;

    /* renamed from: l  reason: collision with root package name */
    private int f47534l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f47535m;

    /* renamed from: n  reason: collision with root package name */
    private int f47536n;

    /* renamed from: o  reason: collision with root package name */
    private final int f47537o;

    /* renamed from: p  reason: collision with root package name */
    private final int f47538p;

    /* renamed from: q  reason: collision with root package name */
    private int f47539q;

    /* renamed from: r  reason: collision with root package name */
    private int f47540r;

    /* compiled from: RingProgressBar.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RingProgressBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47538p = 1;
        this.f47523a = new Paint();
        this.f47526d = a(100);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RingProgressBar);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47528f = obtainStyledAttributes.getColor(R$styleable.RingProgressBar_ringColor, ViewCompat.MEASURED_STATE_MASK);
        this.f47529g = obtainStyledAttributes.getColor(R$styleable.RingProgressBar_ringProgressColor, -1);
        this.f47530h = obtainStyledAttributes.getColor(R$styleable.RingProgressBar_textColor, ViewCompat.MEASURED_STATE_MASK);
        this.f47531i = obtainStyledAttributes.getDimension(R$styleable.RingProgressBar_textSize, 16.0f);
        this.f47532j = obtainStyledAttributes.getDimension(R$styleable.RingProgressBar_ringWidth, 5.0f);
        this.f47533k = obtainStyledAttributes.getInteger(R$styleable.RingProgressBar_max, 100);
        this.f47535m = obtainStyledAttributes.getBoolean(R$styleable.RingProgressBar_textIsShow, true);
        this.f47536n = obtainStyledAttributes.getInt(R$styleable.RingProgressBar_style, 0);
        this.f47534l = obtainStyledAttributes.getInteger(R$styleable.RingProgressBar_progress, 0);
        this.f47527e = obtainStyledAttributes.getDimension(R$styleable.RingProgressBar_ringPadding, 5.0f);
        obtainStyledAttributes.recycle();
    }

    private final void b(Canvas canvas) {
        Paint paint = this.f47523a;
        Intrinsics.checkNotNull(paint);
        paint.setColor(this.f47528f);
        Paint paint2 = this.f47523a;
        Intrinsics.checkNotNull(paint2);
        paint2.setStyle(Paint.Style.STROKE);
        Paint paint3 = this.f47523a;
        Intrinsics.checkNotNull(paint3);
        paint3.setStrokeWidth(this.f47532j);
        Paint paint4 = this.f47523a;
        Intrinsics.checkNotNull(paint4);
        paint4.setAntiAlias(true);
        int i10 = this.f47539q;
        Paint paint5 = this.f47523a;
        Intrinsics.checkNotNull(paint5);
        canvas.drawCircle(i10, i10, this.f47540r, paint5);
    }

    private final void c(Canvas canvas) {
        Paint paint = this.f47523a;
        Intrinsics.checkNotNull(paint);
        paint.setStrokeWidth(this.f47532j);
        Paint paint2 = this.f47523a;
        Intrinsics.checkNotNull(paint2);
        paint2.setColor(this.f47529g);
        int i10 = this.f47539q;
        int i11 = this.f47540r;
        RectF rectF = new RectF(i10 - i11, i10 - i11, i10 + i11, i10 + i11);
        int i12 = this.f47539q;
        int i13 = this.f47540r;
        float f10 = this.f47532j;
        float f11 = this.f47527e;
        RectF rectF2 = new RectF((i12 - i13) + f10 + f11, (i12 - i13) + f10 + f11, ((i12 + i13) - f10) - f11, ((i12 + i13) - f10) - f11);
        int i14 = this.f47536n;
        if (i14 == this.f47537o) {
            Paint paint3 = this.f47523a;
            Intrinsics.checkNotNull(paint3);
            paint3.setStyle(Paint.Style.STROKE);
            Paint paint4 = this.f47523a;
            Intrinsics.checkNotNull(paint4);
            paint4.setStrokeCap(Paint.Cap.ROUND);
            Paint paint5 = this.f47523a;
            Intrinsics.checkNotNull(paint5);
            canvas.drawArc(rectF, -90.0f, (this.f47534l * 360) / this.f47533k, false, paint5);
        } else if (i14 == this.f47538p) {
            Paint paint6 = this.f47523a;
            Intrinsics.checkNotNull(paint6);
            paint6.setStyle(Paint.Style.FILL_AND_STROKE);
            Paint paint7 = this.f47523a;
            Intrinsics.checkNotNull(paint7);
            paint7.setStrokeCap(Paint.Cap.ROUND);
            int i15 = this.f47534l;
            if (i15 != 0) {
                Paint paint8 = this.f47523a;
                Intrinsics.checkNotNull(paint8);
                canvas.drawArc(rectF2, -90.0f, (i15 * 360) / this.f47533k, true, paint8);
            }
        }
    }

    private final void d(Canvas canvas) {
        Paint paint = this.f47523a;
        Intrinsics.checkNotNull(paint);
        paint.setStrokeWidth(0.0f);
        Paint paint2 = this.f47523a;
        Intrinsics.checkNotNull(paint2);
        paint2.setColor(this.f47530h);
        Paint paint3 = this.f47523a;
        Intrinsics.checkNotNull(paint3);
        paint3.setTextSize(this.f47531i);
        Paint paint4 = this.f47523a;
        Intrinsics.checkNotNull(paint4);
        paint4.setTypeface(Typeface.DEFAULT);
        int i10 = (int) ((this.f47534l / this.f47533k) * 100);
        Paint paint5 = this.f47523a;
        Intrinsics.checkNotNull(paint5);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append('%');
        float measureText = paint5.measureText(sb2.toString());
        if (this.f47535m && i10 != 0 && this.f47536n == this.f47537o) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(i10);
            sb3.append('%');
            String sb4 = sb3.toString();
            int i11 = this.f47539q;
            float f10 = 2;
            float f11 = i11 - (measureText / f10);
            float f12 = i11 + (this.f47531i / f10);
            Paint paint6 = this.f47523a;
            Intrinsics.checkNotNull(paint6);
            canvas.drawText(sb4, f11, f12, paint6);
        }
    }

    public final int a(int i10) {
        return (int) ((i10 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final int getFILL() {
        return this.f47538p;
    }

    public final synchronized int getMax() {
        return this.f47533k;
    }

    public final synchronized int getProgress() {
        return this.f47534l;
    }

    public final int getRingColor() {
        return this.f47528f;
    }

    public final int getRingProgressColor() {
        return this.f47529g;
    }

    public final float getRingWidth() {
        return this.f47532j;
    }

    public final int getSTROKE() {
        return this.f47537o;
    }

    public final int getTextColor() {
        return this.f47530h;
    }

    public final float getTextSize() {
        return this.f47531i;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        int width = getWidth() / 2;
        this.f47539q = width;
        this.f47540r = (int) (width - (this.f47532j / 2));
        b(canvas);
        d(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE) {
            size = this.f47526d;
        }
        this.f47524b = size;
        if (mode2 == Integer.MIN_VALUE) {
            size2 = this.f47526d;
        }
        this.f47525c = size2;
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f47524b = i10;
        this.f47525c = i11;
    }

    public final synchronized void setMax(int i10) {
        if (i10 >= 0) {
            this.f47533k = i10;
        } else {
            throw new IllegalArgumentException("The max progress of 0");
        }
    }

    public final synchronized void setProgress(int i10) {
        if (i10 >= 0) {
            int i11 = this.f47533k;
            if (i10 > i11) {
                i10 = i11;
            }
            if (i10 <= i11) {
                this.f47534l = i10;
                postInvalidate();
            }
        } else {
            throw new IllegalArgumentException("The progress of 0");
        }
    }

    public final void setRingColor(int i10) {
        this.f47528f = i10;
    }

    public final void setRingProgressColor(int i10) {
        this.f47529g = i10;
    }

    public final void setRingWidth(float f10) {
        this.f47532j = f10;
    }

    public final void setTextColor(int i10) {
        this.f47530h = i10;
    }

    public final void setTextSize(float f10) {
        this.f47531i = f10;
    }

    public final void setOnProgressListener(@Nullable a aVar) {
    }
}
