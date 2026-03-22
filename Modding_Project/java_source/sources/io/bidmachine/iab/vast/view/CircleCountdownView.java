package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import sm.a;
import sm.h;
import sm.q;
/* loaded from: classes7.dex */
public class CircleCountdownView extends View implements h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f54949a;

    /* renamed from: b  reason: collision with root package name */
    private int f54950b;

    /* renamed from: c  reason: collision with root package name */
    private int f54951c;

    /* renamed from: d  reason: collision with root package name */
    private int f54952d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54953e;

    /* renamed from: f  reason: collision with root package name */
    private float f54954f;

    /* renamed from: g  reason: collision with root package name */
    private float f54955g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final RectF f54956h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final RectF f54957i;

    /* renamed from: j  reason: collision with root package name */
    private float f54958j;

    /* renamed from: k  reason: collision with root package name */
    private float f54959k;

    /* renamed from: l  reason: collision with root package name */
    private float f54960l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Paint f54961m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Paint f54962n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Rect f54963o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private RectF f54964p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Paint f54965q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Paint f54966r;

    /* renamed from: s  reason: collision with root package name */
    private float f54967s;

    /* renamed from: t  reason: collision with root package name */
    private int f54968t;

    public CircleCountdownView(@NonNull Context context) {
        super(context);
        this.f54951c = a.f66381a;
        this.f54952d = a.f66383c;
        this.f54953e = false;
        this.f54954f = 0.0f;
        this.f54955g = 0.071428575f;
        this.f54956h = new RectF();
        this.f54957i = new RectF();
        this.f54958j = 54.0f;
        this.f54959k = 54.0f;
        this.f54960l = 5.0f;
        this.f54967s = 100.0f;
        c(context);
    }

    private float a(float f10, boolean z10) {
        float width = this.f54956h.width();
        if (z10) {
            width -= this.f54960l * 2.0f;
        }
        float sqrt = (float) ((width / 2.0f) * Math.sqrt(2.0d));
        return sqrt - ((f10 * sqrt) * 2.0f);
    }

    private void b() {
        float min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float f10 = min / 2.0f;
        float width = (getWidth() / 2.0f) - f10;
        float height = (getHeight() / 2.0f) - f10;
        this.f54956h.set(width, height, width + min, min + height);
        this.f54958j = this.f54956h.centerX();
        this.f54959k = this.f54956h.centerY();
        RectF rectF = this.f54957i;
        RectF rectF2 = this.f54956h;
        float f11 = rectF2.left;
        float f12 = this.f54960l / 2.0f;
        rectF.set(f11 + f12, rectF2.top + f12, rectF2.right - f12, rectF2.bottom - f12);
    }

    private void c(@NonNull Context context) {
        setLayerType(1, null);
        this.f54960l = q.q(context, 3.0f);
    }

    private void d(@NonNull Canvas canvas) {
        if (this.f54961m == null) {
            this.f54961m = new Paint(1);
        }
        float f10 = 360.0f - ((this.f54967s * 360.0f) * 0.01f);
        this.f54961m.setColor(this.f54952d);
        this.f54961m.setStyle(Paint.Style.FILL);
        canvas.drawArc(this.f54956h, 0.0f, 360.0f, false, this.f54961m);
        this.f54961m.setColor(this.f54951c);
        this.f54961m.setStyle(Paint.Style.STROKE);
        this.f54961m.setStrokeWidth(this.f54960l);
        canvas.drawArc(this.f54957i, 270.0f, f10, false, this.f54961m);
    }

    private void e(@NonNull Canvas canvas, @NonNull Bitmap bitmap) {
        if (this.f54965q == null) {
            Paint paint = new Paint(7);
            this.f54965q = paint;
            paint.setStyle(Paint.Style.FILL);
            this.f54965q.setAntiAlias(true);
        }
        if (this.f54963o == null) {
            this.f54963o = new Rect();
        }
        if (this.f54964p == null) {
            this.f54964p = new RectF();
        }
        float a10 = a(this.f54954f, this.f54953e);
        float f10 = a10 / 2.0f;
        float f11 = this.f54958j - f10;
        float f12 = this.f54959k - f10;
        this.f54963o.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.f54964p.set(f11, f12, f11 + a10, a10 + f12);
        this.f54965q.setColorFilter(new PorterDuffColorFilter(this.f54951c, PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, this.f54963o, this.f54964p, this.f54965q);
        if (this.f54953e) {
            if (this.f54966r == null) {
                Paint paint2 = new Paint(1);
                this.f54966r = paint2;
                paint2.setStyle(Paint.Style.STROKE);
            }
            this.f54966r.setStrokeWidth(this.f54960l);
            this.f54966r.setColor(this.f54951c);
            canvas.drawArc(this.f54957i, 0.0f, 360.0f, false, this.f54966r);
        }
    }

    private void f(@NonNull Canvas canvas) {
        if (this.f54962n == null) {
            Paint paint = new Paint(1);
            this.f54962n = paint;
            paint.setAntiAlias(true);
            this.f54962n.setStyle(Paint.Style.FILL);
            this.f54962n.setTextAlign(Paint.Align.CENTER);
        }
        String valueOf = String.valueOf(this.f54968t);
        this.f54962n.setColor(this.f54951c);
        this.f54962n.setTypeface(Typeface.create(Typeface.DEFAULT, this.f54950b));
        this.f54962n.setTextSize(a(this.f54955g, true));
        canvas.drawText(valueOf, this.f54958j, this.f54959k - ((this.f54962n.descent() + this.f54962n.ascent()) / 2.0f), this.f54962n);
    }

    public void g(float f10, int i10) {
        if (this.f54949a == null || f10 == 100.0f) {
            this.f54967s = f10;
            this.f54968t = i10;
            postInvalidate();
        }
    }

    public int getAccentColor() {
        return this.f54951c;
    }

    public int getBackgroundColor() {
        return this.f54952d;
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() != 0 && getHeight() != 0) {
            if (this.f54968t != 0 || this.f54949a != null) {
                d(canvas);
                Bitmap bitmap = this.f54949a;
                if (bitmap != null) {
                    e(canvas, bitmap);
                } else {
                    f(canvas);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        b();
    }

    public void setColors(int i10, int i11) {
        this.f54951c = i10;
        this.f54952d = i11;
        b();
    }

    public void setImage(@Nullable Bitmap bitmap) {
        this.f54949a = bitmap;
        if (bitmap != null) {
            this.f54967s = 100.0f;
        }
        postInvalidate();
    }

    @Override // sm.h
    public void setStyle(@NonNull IabElementStyle iabElementStyle) {
        this.f54950b = iabElementStyle.k().intValue();
        this.f54951c = iabElementStyle.D().intValue();
        this.f54952d = iabElementStyle.i().intValue();
        this.f54953e = iabElementStyle.K().booleanValue();
        this.f54960l = iabElementStyle.E(getContext()).floatValue();
        setPadding(iabElementStyle.A(getContext()).intValue(), iabElementStyle.C(getContext()).intValue(), iabElementStyle.B(getContext()).intValue(), iabElementStyle.z(getContext()).intValue());
        setAlpha(iabElementStyle.y().floatValue());
        b();
        postInvalidate();
    }

    public CircleCountdownView(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54951c = a.f66381a;
        this.f54952d = a.f66383c;
        this.f54953e = false;
        this.f54954f = 0.0f;
        this.f54955g = 0.071428575f;
        this.f54956h = new RectF();
        this.f54957i = new RectF();
        this.f54958j = 54.0f;
        this.f54959k = 54.0f;
        this.f54960l = 5.0f;
        this.f54967s = 100.0f;
        c(context);
    }
}
