package c3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* compiled from: MatrixDrawable.java */
/* loaded from: classes3.dex */
public class h extends g {

    /* renamed from: e  reason: collision with root package name */
    private Matrix f2962e;

    /* renamed from: f  reason: collision with root package name */
    private Matrix f2963f;

    /* renamed from: g  reason: collision with root package name */
    private int f2964g;

    /* renamed from: h  reason: collision with root package name */
    private int f2965h;

    private void t() {
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f2964g = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f2965h = intrinsicHeight;
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f2963f = this.f2962e;
            return;
        }
        current.setBounds(bounds);
        this.f2963f = null;
    }

    private void u() {
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        if (this.f2964g != current.getIntrinsicWidth() || this.f2965h != current.getIntrinsicHeight()) {
            t();
        }
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        u();
        if (this.f2963f != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f2963f);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // c3.g, c3.e0
    public void j(Matrix matrix) {
        super.j(matrix);
        Matrix matrix2 = this.f2963f;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c3.g, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        t();
    }

    @Override // c3.g
    public Drawable q(Drawable drawable) {
        Drawable q10 = super.q(drawable);
        t();
        return q10;
    }
}
