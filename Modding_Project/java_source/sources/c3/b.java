package c3;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
/* compiled from: AutoRotateDrawable.java */
/* loaded from: classes3.dex */
public class b extends g implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    private int f2930e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2931f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f2932g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2933h;

    public b(Drawable drawable, int i10) {
        this(drawable, i10, true);
    }

    private int t() {
        return (int) ((20.0f / this.f2930e) * 360.0f);
    }

    private void u() {
        if (!this.f2933h) {
            this.f2933h = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + 20);
        }
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i10 = bounds.right;
        int i11 = bounds.left;
        int i12 = i10 - i11;
        int i13 = bounds.bottom;
        int i14 = bounds.top;
        int i15 = i13 - i14;
        float f10 = this.f2932g;
        if (!this.f2931f) {
            f10 = 360.0f - f10;
        }
        canvas.rotate(f10, i11 + (i12 / 2), i14 + (i15 / 2));
        super.draw(canvas);
        canvas.restoreToCount(save);
        u();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2933h = false;
        this.f2932g += t();
        invalidateSelf();
    }

    public b(Drawable drawable, int i10, boolean z10) {
        super((Drawable) k2.h.g(drawable));
        this.f2932g = 0.0f;
        this.f2933h = false;
        this.f2930e = i10;
        this.f2931f = z10;
    }
}
