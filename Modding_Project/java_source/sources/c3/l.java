package c3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
/* compiled from: RoundedColorDrawable.java */
/* loaded from: classes3.dex */
public class l extends Drawable implements j {
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    float[] f2973c;

    /* renamed from: a  reason: collision with root package name */
    private final float[] f2971a = new float[8];
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float[] f2972b = new float[8];
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Paint f2974d = new Paint(1);

    /* renamed from: e  reason: collision with root package name */
    private boolean f2975e = false;

    /* renamed from: f  reason: collision with root package name */
    private float f2976f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f2977g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private int f2978h = 0;

    /* renamed from: i  reason: collision with root package name */
    private boolean f2979i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f2980j = false;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Path f2981k = new Path();
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final Path f2982l = new Path();

    /* renamed from: m  reason: collision with root package name */
    private int f2983m = 0;

    /* renamed from: n  reason: collision with root package name */
    private final RectF f2984n = new RectF();

    /* renamed from: o  reason: collision with root package name */
    private int f2985o = 255;

    public l(int i10) {
        i(i10);
    }

    public static l a(ColorDrawable colorDrawable) {
        return new l(colorDrawable.getColor());
    }

    private void j() {
        float[] fArr;
        float f10;
        float[] fArr2;
        this.f2981k.reset();
        this.f2982l.reset();
        this.f2984n.set(getBounds());
        RectF rectF = this.f2984n;
        float f11 = this.f2976f;
        rectF.inset(f11 / 2.0f, f11 / 2.0f);
        int i10 = 0;
        if (this.f2975e) {
            this.f2982l.addCircle(this.f2984n.centerX(), this.f2984n.centerY(), Math.min(this.f2984n.width(), this.f2984n.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i11 = 0;
            while (true) {
                fArr = this.f2972b;
                if (i11 >= fArr.length) {
                    break;
                }
                fArr[i11] = (this.f2971a[i11] + this.f2977g) - (this.f2976f / 2.0f);
                i11++;
            }
            this.f2982l.addRoundRect(this.f2984n, fArr, Path.Direction.CW);
        }
        RectF rectF2 = this.f2984n;
        float f12 = this.f2976f;
        rectF2.inset((-f12) / 2.0f, (-f12) / 2.0f);
        float f13 = this.f2977g;
        if (this.f2979i) {
            f10 = this.f2976f;
        } else {
            f10 = 0.0f;
        }
        float f14 = f13 + f10;
        this.f2984n.inset(f14, f14);
        if (this.f2975e) {
            this.f2981k.addCircle(this.f2984n.centerX(), this.f2984n.centerY(), Math.min(this.f2984n.width(), this.f2984n.height()) / 2.0f, Path.Direction.CW);
        } else if (this.f2979i) {
            if (this.f2973c == null) {
                this.f2973c = new float[8];
            }
            while (true) {
                fArr2 = this.f2973c;
                if (i10 >= fArr2.length) {
                    break;
                }
                fArr2[i10] = this.f2971a[i10] - this.f2976f;
                i10++;
            }
            this.f2981k.addRoundRect(this.f2984n, fArr2, Path.Direction.CW);
        } else {
            this.f2981k.addRoundRect(this.f2984n, this.f2971a, Path.Direction.CW);
        }
        float f15 = -f14;
        this.f2984n.inset(f15, f15);
    }

    public boolean b() {
        return this.f2980j;
    }

    @Override // c3.j
    public void c(int i10, float f10) {
        if (this.f2978h != i10) {
            this.f2978h = i10;
            invalidateSelf();
        }
        if (this.f2976f != f10) {
            this.f2976f = f10;
            j();
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void d(boolean z10) {
        this.f2975e = z10;
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f2974d.setColor(e.c(this.f2983m, this.f2985o));
        this.f2974d.setStyle(Paint.Style.FILL);
        this.f2974d.setFilterBitmap(b());
        canvas.drawPath(this.f2981k, this.f2974d);
        if (this.f2976f != 0.0f) {
            this.f2974d.setColor(e.c(this.f2978h, this.f2985o));
            this.f2974d.setStyle(Paint.Style.STROKE);
            this.f2974d.setStrokeWidth(this.f2976f);
            canvas.drawPath(this.f2982l, this.f2974d);
        }
    }

    @Override // c3.j
    public void e(float f10) {
        if (this.f2977g != f10) {
            this.f2977g = f10;
            j();
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void f(float f10) {
        boolean z10;
        if (f10 >= 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.c(z10, "radius should be non negative");
        Arrays.fill(this.f2971a, f10);
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2985o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return e.b(e.c(this.f2983m, this.f2985o));
    }

    @Override // c3.j
    public void h(boolean z10) {
        if (this.f2980j != z10) {
            this.f2980j = z10;
            invalidateSelf();
        }
    }

    public void i(int i10) {
        if (this.f2983m != i10) {
            this.f2983m = i10;
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void l(boolean z10) {
        if (this.f2979i != z10) {
            this.f2979i = z10;
            j();
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void o(float[] fArr) {
        boolean z10;
        if (fArr == null) {
            Arrays.fill(this.f2971a, 0.0f);
        } else {
            if (fArr.length == 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            k2.h.c(z10, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f2971a, 0, 8);
        }
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        j();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.f2985o) {
            this.f2985o = i10;
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void g(boolean z10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
