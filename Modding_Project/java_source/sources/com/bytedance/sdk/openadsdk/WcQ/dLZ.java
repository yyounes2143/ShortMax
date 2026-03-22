package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
/* loaded from: classes3.dex */
public class dLZ extends View {
    private float ZYk;
    private final Paint oJ;
    private float tB;

    public dLZ(Context context) {
        super(context);
        setBackgroundColor(Color.parseColor("#8A8A8A"));
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.tB;
        if (f10 > 0.0f) {
            float f11 = this.ZYk;
            canvas.drawLine(0.0f, f11, f10, f11, this.oJ);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i11;
        this.ZYk = (1.0f * f10) / 2.0f;
        this.oJ.setStrokeWidth(f10);
    }

    public void setProgress(float f10) {
        this.tB = getWidth() * f10;
        invalidate();
    }
}
