package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class ZYk extends GradientDrawable {
    private final Paint ZYk;
    protected Path oJ;

    public ZYk() {
        this.oJ = new Path();
        Paint paint = new Paint(1);
        this.ZYk = paint;
        paint.setColor(-1);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Path path = this.oJ;
        if (path != null && !path.isEmpty()) {
            int saveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.ZYk, 31);
            oJ(canvas);
            this.ZYk.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            canvas.drawPath(this.oJ, this.ZYk);
            this.ZYk.setXfermode(null);
            canvas.restoreToCount(saveLayer);
            return;
        }
        oJ(canvas);
    }

    protected void oJ(Canvas canvas) {
        super.draw(canvas);
    }

    public void oJ(int i10, int i11, int i12, int i13) {
        this.oJ.addRect(i10, i11, i12, i13, Path.Direction.CW);
        invalidateSelf();
    }

    public ZYk(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        super(orientation, iArr);
        this.oJ = new Path();
        Paint paint = new Paint(1);
        this.ZYk = paint;
        paint.setColor(-1);
    }
}
