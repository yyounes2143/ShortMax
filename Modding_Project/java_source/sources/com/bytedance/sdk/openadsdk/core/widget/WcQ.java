package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class WcQ extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    private RectF ZYk;
    private Paint oJ;

    public WcQ(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.oJ.setColor(Color.parseColor("#99333333"));
        this.oJ.setAntiAlias(true);
        this.oJ.setStrokeWidth(0.0f);
        this.ZYk = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.ZYk;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.oJ);
        super.onDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.Pfn.ex, android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.ZYk.right != getMeasuredWidth() || this.ZYk.bottom != getMeasuredHeight()) {
            this.ZYk.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        }
    }
}
