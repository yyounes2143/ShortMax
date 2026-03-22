package c3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
/* compiled from: RoundedDrawable.java */
/* loaded from: classes3.dex */
public abstract class m extends Drawable implements j, d0 {
    @Nullable
    private e0 C;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f2986a;
    @Nullable
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    float[] f2996k;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    RectF f3001p;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    Matrix f3007v;
    @Nullable
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    Matrix f3008w;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f2987b = false;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f2988c = false;

    /* renamed from: d  reason: collision with root package name */
    protected float f2989d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    protected final Path f2990e = new Path();

    /* renamed from: f  reason: collision with root package name */
    protected boolean f2991f = true;

    /* renamed from: g  reason: collision with root package name */
    protected int f2992g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected final Path f2993h = new Path();

    /* renamed from: i  reason: collision with root package name */
    private final float[] f2994i = new float[8];
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f2995j = new float[8];
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final RectF f2997l = new RectF();
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final RectF f2998m = new RectF();
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    final RectF f2999n = new RectF();
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    final RectF f3000o = new RectF();
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    final Matrix f3002q = new Matrix();
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    final Matrix f3003r = new Matrix();
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    final Matrix f3004s = new Matrix();
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    final Matrix f3005t = new Matrix();
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    final Matrix f3006u = new Matrix();
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    final Matrix f3009x = new Matrix();

    /* renamed from: y  reason: collision with root package name */
    private float f3010y = 0.0f;

    /* renamed from: z  reason: collision with root package name */
    private boolean f3011z = false;
    private boolean A = false;
    private boolean B = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Drawable drawable) {
        this.f2986a = drawable;
    }

    @Nullable
    private static Matrix a(@Nullable Matrix matrix) {
        if (matrix == null) {
            return null;
        }
        return new Matrix(matrix);
    }

    private static boolean i(@Nullable Matrix matrix, @Nullable Matrix matrix2) {
        if (matrix == null && matrix2 == null) {
            return true;
        }
        if (matrix != null && matrix2 != null) {
            return matrix.equals(matrix2);
        }
        return false;
    }

    public boolean b() {
        return this.A;
    }

    @Override // c3.j
    public void c(int i10, float f10) {
        if (this.f2992g != i10 || this.f2989d != f10) {
            this.f2992g = i10;
            this.f2989d = f10;
            this.B = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f2986a.clearColorFilter();
    }

    @Override // c3.j
    public void d(boolean z10) {
        this.f2987b = z10;
        this.B = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (f4.b.d()) {
            f4.b.a("RoundedDrawable#draw");
        }
        this.f2986a.draw(canvas);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    @Override // c3.j
    public void e(float f10) {
        if (this.f3010y != f10) {
            this.f3010y = f10;
            this.B = true;
            invalidateSelf();
        }
    }

    @Override // c3.j
    public void f(float f10) {
        boolean z10;
        int i10 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.i(z10);
        Arrays.fill(this.f2994i, f10);
        if (i10 != 0) {
            z11 = true;
        }
        this.f2988c = z11;
        this.B = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(api = 19)
    public int getAlpha() {
        return this.f2986a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    @RequiresApi(api = 21)
    public ColorFilter getColorFilter() {
        return this.f2986a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2986a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2986a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2986a.getOpacity();
    }

    @Override // c3.j
    public void h(boolean z10) {
        if (this.A != z10) {
            this.A = z10;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean j() {
        if (!this.f2987b && !this.f2988c && this.f2989d <= 0.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        float[] fArr;
        float f10;
        if (this.B) {
            this.f2993h.reset();
            RectF rectF = this.f2997l;
            float f11 = this.f2989d;
            rectF.inset(f11 / 2.0f, f11 / 2.0f);
            if (this.f2987b) {
                this.f2993h.addCircle(this.f2997l.centerX(), this.f2997l.centerY(), Math.min(this.f2997l.width(), this.f2997l.height()) / 2.0f, Path.Direction.CW);
            } else {
                int i10 = 0;
                while (true) {
                    fArr = this.f2995j;
                    if (i10 >= fArr.length) {
                        break;
                    }
                    fArr[i10] = (this.f2994i[i10] + this.f3010y) - (this.f2989d / 2.0f);
                    i10++;
                }
                this.f2993h.addRoundRect(this.f2997l, fArr, Path.Direction.CW);
            }
            RectF rectF2 = this.f2997l;
            float f12 = this.f2989d;
            rectF2.inset((-f12) / 2.0f, (-f12) / 2.0f);
            this.f2990e.reset();
            float f13 = this.f3010y;
            if (this.f3011z) {
                f10 = this.f2989d;
            } else {
                f10 = 0.0f;
            }
            float f14 = f13 + f10;
            this.f2997l.inset(f14, f14);
            if (this.f2987b) {
                this.f2990e.addCircle(this.f2997l.centerX(), this.f2997l.centerY(), Math.min(this.f2997l.width(), this.f2997l.height()) / 2.0f, Path.Direction.CW);
            } else if (this.f3011z) {
                if (this.f2996k == null) {
                    this.f2996k = new float[8];
                }
                for (int i11 = 0; i11 < this.f2995j.length; i11++) {
                    this.f2996k[i11] = this.f2994i[i11] - this.f2989d;
                }
                this.f2990e.addRoundRect(this.f2997l, this.f2996k, Path.Direction.CW);
            } else {
                this.f2990e.addRoundRect(this.f2997l, this.f2994i, Path.Direction.CW);
            }
            float f15 = -f14;
            this.f2997l.inset(f15, f15);
            this.f2990e.setFillType(Path.FillType.WINDING);
            this.B = false;
        }
    }

    @Override // c3.j
    public void l(boolean z10) {
        if (this.f3011z != z10) {
            this.f3011z = z10;
            this.B = true;
            invalidateSelf();
        }
    }

    @Override // c3.d0
    public void m(@Nullable e0 e0Var) {
        this.C = e0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        Matrix matrix;
        Matrix matrix2;
        e0 e0Var = this.C;
        if (e0Var != null) {
            e0Var.j(this.f3004s);
            this.C.i(this.f2997l);
        } else {
            this.f3004s.reset();
            this.f2997l.set(getBounds());
        }
        this.f2999n.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        this.f3000o.set(this.f2986a.getBounds());
        Matrix matrix3 = this.f3002q;
        RectF rectF = this.f2999n;
        RectF rectF2 = this.f3000o;
        Matrix.ScaleToFit scaleToFit = Matrix.ScaleToFit.FILL;
        matrix3.setRectToRect(rectF, rectF2, scaleToFit);
        if (this.f3011z) {
            RectF rectF3 = this.f3001p;
            if (rectF3 == null) {
                this.f3001p = new RectF(this.f2997l);
            } else {
                rectF3.set(this.f2997l);
            }
            RectF rectF4 = this.f3001p;
            float f10 = this.f2989d;
            rectF4.inset(f10, f10);
            if (this.f3007v == null) {
                this.f3007v = new Matrix();
            }
            this.f3007v.setRectToRect(this.f2997l, this.f3001p, scaleToFit);
        } else {
            Matrix matrix4 = this.f3007v;
            if (matrix4 != null) {
                matrix4.reset();
            }
        }
        if (!this.f3004s.equals(this.f3005t) || !this.f3002q.equals(this.f3003r) || ((matrix2 = this.f3007v) != null && !i(matrix2, this.f3008w))) {
            this.f2991f = true;
            this.f3004s.invert(this.f3006u);
            this.f3009x.set(this.f3004s);
            if (this.f3011z && (matrix = this.f3007v) != null) {
                this.f3009x.postConcat(matrix);
            }
            this.f3009x.preConcat(this.f3002q);
            this.f3005t.set(this.f3004s);
            this.f3003r.set(this.f3002q);
            if (this.f3011z) {
                Matrix matrix5 = this.f3008w;
                if (matrix5 == null) {
                    this.f3008w = a(this.f3007v);
                } else {
                    matrix5.set(this.f3007v);
                }
            } else {
                Matrix matrix6 = this.f3008w;
                if (matrix6 != null) {
                    matrix6.reset();
                }
            }
        }
        if (!this.f2997l.equals(this.f2998m)) {
            this.B = true;
            this.f2998m.set(this.f2997l);
        }
    }

    @Override // c3.j
    public void o(float[] fArr) {
        boolean z10;
        boolean z11;
        if (fArr == null) {
            Arrays.fill(this.f2994i, 0.0f);
            this.f2988c = false;
        } else {
            if (fArr.length == 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            k2.h.c(z10, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f2994i, 0, 8);
            this.f2988c = false;
            for (int i10 = 0; i10 < 8; i10++) {
                boolean z12 = this.f2988c;
                if (fArr[i10] > 0.0f) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f2988c = z12 | z11;
            }
        }
        this.B = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f2986a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f2986a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i10, PorterDuff.Mode mode) {
        this.f2986a.setColorFilter(i10, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f2986a.setColorFilter(colorFilter);
    }

    public void g(boolean z10) {
    }
}
