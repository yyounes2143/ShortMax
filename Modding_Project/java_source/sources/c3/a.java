package c3;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* compiled from: ArrayDrawable.java */
/* loaded from: classes3.dex */
public class a extends Drawable implements Drawable.Callback, e0, d0 {

    /* renamed from: a  reason: collision with root package name */
    private e0 f2919a;

    /* renamed from: c  reason: collision with root package name */
    private final Drawable[] f2921c;

    /* renamed from: d  reason: collision with root package name */
    private final c[] f2922d;

    /* renamed from: b  reason: collision with root package name */
    private final d f2920b = new d();

    /* renamed from: e  reason: collision with root package name */
    private final Rect f2923e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    private boolean f2924f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2925g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2926h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDrawable.java */
    /* renamed from: c3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0084a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f2927a;

        C0084a(int i10) {
            this.f2927a = i10;
        }

        @Override // c3.c
        public Drawable a() {
            return a.this.b(this.f2927a);
        }

        @Override // c3.c
        public Drawable k(Drawable drawable) {
            return a.this.e(this.f2927a, drawable);
        }
    }

    public a(Drawable[] drawableArr) {
        int i10 = 0;
        k2.h.g(drawableArr);
        this.f2921c = drawableArr;
        while (true) {
            Drawable[] drawableArr2 = this.f2921c;
            if (i10 < drawableArr2.length) {
                e.d(drawableArr2[i10], this, this);
                i10++;
            } else {
                this.f2922d = new c[drawableArr2.length];
                return;
            }
        }
    }

    private c a(int i10) {
        return new C0084a(i10);
    }

    public Drawable b(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        if (i10 < this.f2921c.length) {
            z11 = true;
        }
        k2.h.b(Boolean.valueOf(z11));
        return this.f2921c[i10];
    }

    public c c(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        if (i10 < this.f2922d.length) {
            z11 = true;
        }
        k2.h.b(Boolean.valueOf(z11));
        c[] cVarArr = this.f2922d;
        if (cVarArr[i10] == null) {
            cVarArr[i10] = a(i10);
        }
        return this.f2922d[i10];
    }

    public int d() {
        return this.f2921c.length;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    public Drawable e(int i10, Drawable drawable) {
        boolean z10;
        boolean z11 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        if (i10 >= this.f2921c.length) {
            z11 = false;
        }
        k2.h.b(Boolean.valueOf(z11));
        Drawable drawable2 = this.f2921c[i10];
        if (drawable != drawable2) {
            if (drawable != null && this.f2926h) {
                drawable.mutate();
            }
            e.d(this.f2921c[i10], null, null);
            e.d(drawable, null, null);
            e.e(drawable, this.f2920b);
            e.a(drawable, this);
            e.d(drawable, this, this);
            this.f2925g = false;
            this.f2921c[i10] = drawable;
            invalidateSelf();
        }
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i10 = 0;
        int i11 = -1;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                i11 = Math.max(i11, drawable.getIntrinsicHeight());
            }
            i10++;
        }
        if (i11 <= 0) {
            return -1;
        }
        return i11;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i10 = 0;
        int i11 = -1;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                i11 = Math.max(i11, drawable.getIntrinsicWidth());
            }
            i10++;
        }
        if (i11 <= 0) {
            return -1;
        }
        return i11;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f2921c.length == 0) {
            return -2;
        }
        int i10 = 1;
        int i11 = -1;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    i11 = Drawable.resolveOpacity(i11, drawable.getOpacity());
                }
                i10++;
            } else {
                return i11;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int i10 = 0;
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        Rect rect2 = this.f2923e;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.getPadding(rect2);
                    rect.left = Math.max(rect.left, rect2.left);
                    rect.top = Math.max(rect.top, rect2.top);
                    rect.right = Math.max(rect.right, rect2.right);
                    rect.bottom = Math.max(rect.bottom, rect2.bottom);
                }
                i10++;
            } else {
                return true;
            }
        }
    }

    @Override // c3.e0
    public void i(RectF rectF) {
        e0 e0Var = this.f2919a;
        if (e0Var != null) {
            e0Var.i(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!this.f2925g) {
            this.f2924f = false;
            int i10 = 0;
            while (true) {
                Drawable[] drawableArr = this.f2921c;
                boolean z10 = true;
                if (i10 >= drawableArr.length) {
                    break;
                }
                Drawable drawable = drawableArr[i10];
                boolean z11 = this.f2924f;
                if (drawable == null || !drawable.isStateful()) {
                    z10 = false;
                }
                this.f2924f = z11 | z10;
                i10++;
            }
            this.f2925g = true;
        }
        return this.f2924f;
    }

    @Override // c3.e0
    public void j(Matrix matrix) {
        e0 e0Var = this.f2919a;
        if (e0Var != null) {
            e0Var.j(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // c3.d0
    public void m(e0 e0Var) {
        this.f2919a = e0Var;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.mutate();
                }
                i10++;
            } else {
                this.f2926h = true;
                return this;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setBounds(rect);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i11 < drawableArr.length) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null && drawable.setLevel(i10)) {
                    z10 = true;
                }
                i11++;
            } else {
                return z10;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null && drawable.setState(iArr)) {
                    z10 = true;
                }
                i10++;
            } else {
                return z10;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f2920b.b(i10);
        int i11 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i11 < drawableArr.length) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null) {
                    drawable.setAlpha(i10);
                }
                i11++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2920b.c(colorFilter);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setColorFilter(colorFilter);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f2920b.d(z10);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setDither(z10);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f2920b.e(z10);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setFilterBitmap(z10);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f10, float f11) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setHotspot(f10, f11);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f2921c;
            if (i10 < drawableArr.length) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null) {
                    drawable.setVisible(z10, z11);
                }
                i10++;
            } else {
                return visible;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
