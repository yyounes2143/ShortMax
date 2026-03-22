package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes3.dex */
public class RZ extends Drawable {
    private int ZYk;
    private RectF ex;
    private Paint oJ;
    private int tB;

    public RZ(int i10, int i11) {
        this.tB = i10;
        this.ZYk = i11;
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setColor(0);
        this.oJ.setAntiAlias(true);
        this.oJ.setShadowLayer(i11, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        this.oJ.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        RectF rectF = this.ex;
        int i10 = this.tB;
        canvas.drawRoundRect(rectF, i10, i10, this.oJ);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.oJ.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        int i14 = this.ZYk;
        this.ex = new RectF(i10 + i14, i11 + i14, i12 - i14, i13 - i14);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.oJ.setColorFilter(colorFilter);
    }
}
