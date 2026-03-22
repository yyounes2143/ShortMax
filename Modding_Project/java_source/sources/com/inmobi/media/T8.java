package com.inmobi.media;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.view.ViewCompat;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class T8 extends View {

    /* renamed from: a  reason: collision with root package name */
    public Bitmap f24202a;

    /* renamed from: b  reason: collision with root package name */
    public Canvas f24203b;

    /* renamed from: c  reason: collision with root package name */
    public RectF f24204c;

    /* renamed from: d  reason: collision with root package name */
    public RectF f24205d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f24206e;

    /* renamed from: f  reason: collision with root package name */
    public long f24207f;

    /* renamed from: g  reason: collision with root package name */
    public final Paint f24208g;

    /* renamed from: h  reason: collision with root package name */
    public final Paint f24209h;

    /* renamed from: i  reason: collision with root package name */
    public final Paint f24210i;

    /* renamed from: j  reason: collision with root package name */
    public final Paint f24211j;

    /* renamed from: k  reason: collision with root package name */
    public final Paint f24212k;

    /* renamed from: l  reason: collision with root package name */
    public float f24213l;

    /* renamed from: m  reason: collision with root package name */
    public long f24214m;

    /* renamed from: n  reason: collision with root package name */
    public ValueAnimator f24215n;

    /* renamed from: o  reason: collision with root package name */
    public S8 f24216o;

    public T8(Context context) {
        super(context);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-723724);
        this.f24208g = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setAntiAlias(true);
        this.f24212k = paint2;
        this.f24206e = new Rect();
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f24209h = paint3;
        Paint paint4 = new Paint();
        paint4.setAntiAlias(true);
        paint4.setColor(0);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f24210i = paint4;
        Paint paint5 = new Paint();
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setAntiAlias(true);
        paint5.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f24211j = paint5;
    }

    public final void a() {
        S8 s82 = this.f24216o;
        if (s82 != null) {
            C8 c82 = (C8) s82;
            C3240x8 c3240x8 = c82.f23533a.f23585p;
            if (c3240x8 != null) {
                Q8 timerAsset = c82.f23534b;
                Intrinsics.checkNotNullParameter(timerAsset, "timerAsset");
                if (timerAsset.f24587j == 1) {
                    c3240x8.f25429b.a();
                }
            }
        }
        ValueAnimator valueAnimator = this.f24215n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f24215n = null;
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f24215n;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f24214m = valueAnimator.getCurrentPlayTime();
            valueAnimator.cancel();
        }
    }

    public final void c() {
        ValueAnimator valueAnimator = this.f24215n;
        if (valueAnimator != null && !valueAnimator.isRunning()) {
            valueAnimator.setCurrentPlayTime(this.f24214m);
            valueAnimator.start();
        }
    }

    public final void d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(TimeUnit.SECONDS.toMillis(this.f24207f));
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new R8(this));
        this.f24215n = ofFloat;
        ofFloat.start();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        Canvas canvas3;
        Object animatedValue;
        Object animatedValue2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Canvas canvas4 = this.f24203b;
        if (canvas4 != null) {
            canvas4.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int min = Math.min(width, height);
        V3 v32 = U3.f24244a;
        int b10 = (int) (U3.b() * ((int) (getWidth() * 7.0f * 0.007f)));
        float f10 = width;
        float f11 = height;
        canvas.drawCircle(f10, f11, min, this.f24208g);
        canvas.drawCircle(f10, f11, min - b10, this.f24211j);
        ValueAnimator valueAnimator = this.f24215n;
        if (valueAnimator != null) {
            int currentPlayTime = (int) (this.f24207f - (valueAnimator.getCurrentPlayTime() / 1000));
            Intrinsics.checkNotNull(valueAnimator.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) animatedValue).floatValue() >= 1.0d) {
                currentPlayTime = 0;
            }
            Paint paint = this.f24212k;
            Rect rect = this.f24206e;
            String valueOf = String.valueOf(currentPlayTime);
            paint.getTextBounds(valueOf, 0, valueOf.length(), rect);
            canvas.drawText(valueOf, getWidth() / 2, (getHeight() / 2) + (((paint.descent() - paint.ascent()) / 2) - paint.descent()), paint);
            Intrinsics.checkNotNull(valueAnimator.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) animatedValue2).floatValue() >= 1.0d) {
                a();
            }
        }
        float f12 = this.f24213l;
        if (f12 > 0.0f) {
            RectF rectF = this.f24204c;
            if (rectF != null && (canvas3 = this.f24203b) != null) {
                canvas3.drawArc(rectF, 270.0f, f12, true, this.f24209h);
            }
            RectF rectF2 = this.f24205d;
            if (rectF2 != null && (canvas2 = this.f24203b) != null) {
                canvas2.drawOval(rectF2, this.f24210i);
            }
        }
        Bitmap bitmap = this.f24202a;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i10);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (i10 != i12 || i11 != i13) {
            Bitmap createBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            createBitmap.eraseColor(0);
            this.f24202a = createBitmap;
            this.f24203b = new Canvas(createBitmap);
        }
        super.onSizeChanged(i10, i11, i12, i13);
        V3 v32 = U3.f24244a;
        float b10 = (int) (U3.b() * ((int) (getWidth() * 4.0f * 0.007f)));
        float b11 = U3.b();
        float b12 = (int) (U3.b() * ((int) (getWidth() * 5.0f * 0.007f)));
        float b13 = U3.b();
        RectF rectF = new RectF(b12, b12, getWidth() - b12, getHeight() - b12);
        this.f24204c = rectF;
        this.f24205d = new RectF(rectF.left + b10, rectF.top + b10, rectF.right - b10, rectF.bottom - b10);
        this.f24211j.setStrokeWidth((int) (b13 * ((int) (getWidth() * 1.5f * 0.007f))));
        this.f24212k.setTextSize((int) (b11 * ((int) (getWidth() * 14.0f * 0.007f))));
        invalidate();
    }

    public final void setTimerEventsListener(@Nullable S8 s82) {
        this.f24216o = s82;
    }

    public final void setTimerValue(long j10) {
        this.f24207f = j10;
    }
}
