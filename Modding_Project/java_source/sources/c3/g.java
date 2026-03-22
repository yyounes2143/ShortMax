package c3;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* compiled from: ForwardingDrawable.java */
/* loaded from: classes3.dex */
public class g extends Drawable implements Drawable.Callback, e0, d0, c {

    /* renamed from: d  reason: collision with root package name */
    private static final Matrix f2958d = new Matrix();

    /* renamed from: a  reason: collision with root package name */
    private Drawable f2959a;

    /* renamed from: b  reason: collision with root package name */
    private final d f2960b = new d();

    /* renamed from: c  reason: collision with root package name */
    protected e0 f2961c;

    public g(Drawable drawable) {
        this.f2959a = drawable;
        e.d(drawable, this, this);
    }

    @Override // c3.c
    public Drawable a() {
        return getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.getConstantState();
        }
        return drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f2959a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.getIntrinsicHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.getIntrinsicWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return 0;
        }
        return drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.getPadding(rect);
        }
        return drawable.getPadding(rect);
    }

    @Override // c3.e0
    public void i(RectF rectF) {
        e0 e0Var = this.f2961c;
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
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return false;
        }
        return drawable.isStateful();
    }

    @Override // c3.e0
    public void j(Matrix matrix) {
        p(matrix);
    }

    @Override // c3.c
    public Drawable k(Drawable drawable) {
        return q(drawable);
    }

    @Override // c3.d0
    public void m(e0 e0Var) {
        this.f2961c = e0Var;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.onLevelChange(i10);
        }
        return drawable.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return super.onStateChange(iArr);
        }
        return drawable.setState(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p(Matrix matrix) {
        e0 e0Var = this.f2961c;
        if (e0Var != null) {
            e0Var.j(matrix);
        } else {
            matrix.reset();
        }
    }

    public Drawable q(Drawable drawable) {
        Drawable r10 = r(drawable);
        invalidateSelf();
        return r10;
    }

    protected Drawable r(Drawable drawable) {
        Drawable drawable2 = this.f2959a;
        e.d(drawable2, null, null);
        e.d(drawable, null, null);
        e.e(drawable, this.f2960b);
        e.a(drawable, this);
        e.d(drawable, this, this);
        this.f2959a = drawable;
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f2960b.b(i10);
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2960b.c(colorFilter);
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f2960b.d(z10);
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setDither(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f2960b.e(z10);
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setFilterBitmap(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f10, float f11) {
        Drawable drawable = this.f2959a;
        if (drawable != null) {
            drawable.setHotspot(f10, f11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.f2959a;
        if (drawable == null) {
            return visible;
        }
        return drawable.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
