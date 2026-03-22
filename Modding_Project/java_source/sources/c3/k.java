package c3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
/* compiled from: RoundedBitmapDrawable.java */
/* loaded from: classes3.dex */
public class k extends m {
    private static boolean J = false;
    private final Paint D;
    private final Paint E;
    private final Bitmap F;
    private WeakReference<Bitmap> G;
    private boolean H;
    private RectF I;

    public k(Resources resources, Bitmap bitmap, Paint paint, boolean z10) {
        super(new BitmapDrawable(resources, bitmap));
        Paint paint2 = new Paint();
        this.D = paint2;
        Paint paint3 = new Paint(1);
        this.E = paint3;
        this.I = null;
        this.F = bitmap;
        if (paint != null) {
            paint2.set(paint);
        }
        paint2.setFlags(1);
        paint3.setStyle(Paint.Style.STROKE);
        this.H = z10;
    }

    public static boolean p() {
        return J;
    }

    private void q() {
        Shader shader;
        WeakReference<Bitmap> weakReference = this.G;
        if (weakReference == null || weakReference.get() != this.F) {
            this.G = new WeakReference<>(this.F);
            if (this.F != null) {
                Paint paint = this.D;
                Bitmap bitmap = this.F;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
                this.f2991f = true;
            }
        }
        if (this.f2991f && (shader = this.D.getShader()) != null) {
            shader.setLocalMatrix(this.f3009x);
            this.f2991f = false;
        }
        this.D.setFilterBitmap(b());
    }

    @Override // c3.m, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (f4.b.d()) {
            f4.b.a("RoundedBitmapDrawable#draw");
        }
        if (!j()) {
            super.draw(canvas);
            if (f4.b.d()) {
                f4.b.b();
                return;
            }
            return;
        }
        n();
        k();
        q();
        int save = canvas.save();
        canvas.concat(this.f3006u);
        if (!this.H && this.I != null) {
            int save2 = canvas.save();
            canvas.clipRect(this.I);
            canvas.drawPath(this.f2990e, this.D);
            canvas.restoreToCount(save2);
        } else {
            canvas.drawPath(this.f2990e, this.D);
        }
        float f10 = this.f2989d;
        if (f10 > 0.0f) {
            this.E.setStrokeWidth(f10);
            this.E.setColor(e.c(this.f2992g, this.D.getAlpha()));
            canvas.drawPath(this.f2993h, this.E);
        }
        canvas.restoreToCount(save);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    @Override // c3.m, c3.j
    public void g(boolean z10) {
        this.H = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // c3.m
    @VisibleForTesting
    public boolean j() {
        if (super.j() && this.F != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c3.m
    public void n() {
        super.n();
        if (!this.H) {
            if (this.I == null) {
                this.I = new RectF();
            }
            this.f3009x.mapRect(this.I, this.f2999n);
        }
    }

    @Override // c3.m, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        super.setAlpha(i10);
        if (i10 != this.D.getAlpha()) {
            this.D.setAlpha(i10);
            super.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // c3.m, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.D.setColorFilter(colorFilter);
    }
}
