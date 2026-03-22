package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import c3.g;
import c3.j;
import java.util.Arrays;
import k2.h;
/* loaded from: classes3.dex */
public class RoundedCornersDrawable extends g implements j {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    Type f15450e;

    /* renamed from: f  reason: collision with root package name */
    private final RectF f15451f;

    /* renamed from: g  reason: collision with root package name */
    private RectF f15452g;

    /* renamed from: h  reason: collision with root package name */
    private Matrix f15453h;

    /* renamed from: i  reason: collision with root package name */
    private final float[] f15454i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f15455j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Paint f15456k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f15457l;

    /* renamed from: m  reason: collision with root package name */
    private float f15458m;

    /* renamed from: n  reason: collision with root package name */
    private int f15459n;

    /* renamed from: o  reason: collision with root package name */
    private int f15460o;

    /* renamed from: p  reason: collision with root package name */
    private float f15461p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f15462q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f15463r;

    /* renamed from: s  reason: collision with root package name */
    private final Path f15464s;

    /* renamed from: t  reason: collision with root package name */
    private final Path f15465t;

    /* renamed from: u  reason: collision with root package name */
    private final RectF f15466u;

    /* loaded from: classes3.dex */
    public enum Type {
        OVERLAY_COLOR,
        CLIPPING
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15467a;

        static {
            int[] iArr = new int[Type.values().length];
            f15467a = iArr;
            try {
                iArr[Type.CLIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15467a[Type.OVERLAY_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public RoundedCornersDrawable(Drawable drawable) {
        super((Drawable) h.g(drawable));
        this.f15450e = Type.OVERLAY_COLOR;
        this.f15451f = new RectF();
        this.f15454i = new float[8];
        this.f15455j = new float[8];
        this.f15456k = new Paint(1);
        this.f15457l = false;
        this.f15458m = 0.0f;
        this.f15459n = 0;
        this.f15460o = 0;
        this.f15461p = 0.0f;
        this.f15462q = false;
        this.f15463r = false;
        this.f15464s = new Path();
        this.f15465t = new Path();
        this.f15466u = new RectF();
    }

    private void v() {
        float[] fArr;
        this.f15464s.reset();
        this.f15465t.reset();
        this.f15466u.set(getBounds());
        RectF rectF = this.f15466u;
        float f10 = this.f15461p;
        rectF.inset(f10, f10);
        if (this.f15450e == Type.OVERLAY_COLOR) {
            this.f15464s.addRect(this.f15466u, Path.Direction.CW);
        }
        if (this.f15457l) {
            this.f15464s.addCircle(this.f15466u.centerX(), this.f15466u.centerY(), Math.min(this.f15466u.width(), this.f15466u.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.f15464s.addRoundRect(this.f15466u, this.f15454i, Path.Direction.CW);
        }
        RectF rectF2 = this.f15466u;
        float f11 = this.f15461p;
        rectF2.inset(-f11, -f11);
        RectF rectF3 = this.f15466u;
        float f12 = this.f15458m;
        rectF3.inset(f12 / 2.0f, f12 / 2.0f);
        if (this.f15457l) {
            this.f15465t.addCircle(this.f15466u.centerX(), this.f15466u.centerY(), Math.min(this.f15466u.width(), this.f15466u.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i10 = 0;
            while (true) {
                fArr = this.f15455j;
                if (i10 >= fArr.length) {
                    break;
                }
                fArr[i10] = (this.f15454i[i10] + this.f15461p) - (this.f15458m / 2.0f);
                i10++;
            }
            this.f15465t.addRoundRect(this.f15466u, fArr, Path.Direction.CW);
        }
        RectF rectF4 = this.f15466u;
        float f13 = this.f15458m;
        rectF4.inset((-f13) / 2.0f, (-f13) / 2.0f);
    }

    @Override // c3.j
    public void c(int i10, float f10) {
        this.f15459n = i10;
        this.f15458m = f10;
        v();
        invalidateSelf();
    }

    @Override // c3.j
    public void d(boolean z10) {
        this.f15457l = z10;
        v();
        invalidateSelf();
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f15451f.set(getBounds());
        int i10 = a.f15467a[this.f15450e.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                if (this.f15462q) {
                    RectF rectF = this.f15452g;
                    if (rectF == null) {
                        this.f15452g = new RectF(this.f15451f);
                        this.f15453h = new Matrix();
                    } else {
                        rectF.set(this.f15451f);
                    }
                    RectF rectF2 = this.f15452g;
                    float f10 = this.f15458m;
                    rectF2.inset(f10, f10);
                    Matrix matrix = this.f15453h;
                    if (matrix != null) {
                        matrix.setRectToRect(this.f15451f, this.f15452g, Matrix.ScaleToFit.FILL);
                    }
                    int save = canvas.save();
                    canvas.clipRect(this.f15451f);
                    canvas.concat(this.f15453h);
                    super.draw(canvas);
                    canvas.restoreToCount(save);
                } else {
                    super.draw(canvas);
                }
                this.f15456k.setStyle(Paint.Style.FILL);
                this.f15456k.setColor(this.f15460o);
                this.f15456k.setStrokeWidth(0.0f);
                this.f15456k.setFilterBitmap(t());
                this.f15464s.setFillType(Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f15464s, this.f15456k);
                if (this.f15457l) {
                    float width = ((this.f15451f.width() - this.f15451f.height()) + this.f15458m) / 2.0f;
                    float height = ((this.f15451f.height() - this.f15451f.width()) + this.f15458m) / 2.0f;
                    if (width > 0.0f) {
                        RectF rectF3 = this.f15451f;
                        float f11 = rectF3.left;
                        canvas.drawRect(f11, rectF3.top, f11 + width, rectF3.bottom, this.f15456k);
                        RectF rectF4 = this.f15451f;
                        float f12 = rectF4.right;
                        canvas.drawRect(f12 - width, rectF4.top, f12, rectF4.bottom, this.f15456k);
                    }
                    if (height > 0.0f) {
                        RectF rectF5 = this.f15451f;
                        float f13 = rectF5.left;
                        float f14 = rectF5.top;
                        canvas.drawRect(f13, f14, rectF5.right, f14 + height, this.f15456k);
                        RectF rectF6 = this.f15451f;
                        float f15 = rectF6.left;
                        float f16 = rectF6.bottom;
                        canvas.drawRect(f15, f16 - height, rectF6.right, f16, this.f15456k);
                    }
                }
            }
        } else {
            int save2 = canvas.save();
            canvas.clipPath(this.f15464s);
            super.draw(canvas);
            canvas.restoreToCount(save2);
        }
        if (this.f15459n != 0) {
            this.f15456k.setStyle(Paint.Style.STROKE);
            this.f15456k.setColor(this.f15459n);
            this.f15456k.setStrokeWidth(this.f15458m);
            this.f15464s.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f15465t, this.f15456k);
        }
    }

    @Override // c3.j
    public void e(float f10) {
        this.f15461p = f10;
        v();
        invalidateSelf();
    }

    @Override // c3.j
    public void f(float f10) {
        Arrays.fill(this.f15454i, f10);
        v();
        invalidateSelf();
    }

    @Override // c3.j
    public void h(boolean z10) {
        if (this.f15463r != z10) {
            this.f15463r = z10;
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void l(boolean z10) {
        this.f15462q = z10;
        v();
        invalidateSelf();
    }

    @Override // c3.j
    public void o(float[] fArr) {
        boolean z10;
        if (fArr == null) {
            Arrays.fill(this.f15454i, 0.0f);
        } else {
            if (fArr.length == 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            h.c(z10, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f15454i, 0, 8);
        }
        v();
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c3.g, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        v();
    }

    public boolean t() {
        return this.f15463r;
    }

    public void u(int i10) {
        this.f15460o = i10;
        invalidateSelf();
    }

    @Override // c3.j
    public void g(boolean z10) {
    }
}
