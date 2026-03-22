package d3;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import c3.f0;
import c3.g;
import c3.g0;
/* compiled from: RootDrawable.java */
/* loaded from: classes3.dex */
public class b extends g implements f0 {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    Drawable f49804e;

    /* renamed from: f  reason: collision with root package name */
    private g0 f49805f;

    public b(Drawable drawable) {
        super(drawable);
        this.f49804e = null;
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (!isVisible()) {
            return;
        }
        g0 g0Var = this.f49805f;
        if (g0Var != null) {
            g0Var.onDraw();
        }
        super.draw(canvas);
        Drawable drawable = this.f49804e;
        if (drawable != null) {
            drawable.setBounds(getBounds());
            this.f49804e.draw(canvas);
        }
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // c3.f0
    public void n(g0 g0Var) {
        this.f49805f = g0Var;
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        g0 g0Var = this.f49805f;
        if (g0Var != null) {
            g0Var.a(z10);
        }
        return super.setVisible(z10, z11);
    }

    public void t(Drawable drawable) {
        this.f49804e = drawable;
        invalidateSelf();
    }
}
