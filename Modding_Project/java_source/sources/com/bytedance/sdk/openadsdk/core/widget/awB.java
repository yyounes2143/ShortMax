package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class awB extends com.bytedance.sdk.openadsdk.core.Pfn.so {
    private RectF ZYk;
    private Paint oJ;
    private int tB;

    public awB(Context context) {
        this(context, null);
    }

    private void oJ() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.oJ.setColor(Color.parseColor("#99333333"));
        this.oJ.setAntiAlias(true);
        this.oJ.setStrokeWidth(0.0f);
        this.ZYk = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.ZYk;
        float f10 = rectF.bottom;
        canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.oJ);
        canvas.translate((this.ZYk.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), 0.0f);
        super.onDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.Pfn.so, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth > 0 && measuredHeight > 0) {
            int measureText = (int) getPaint().measureText("00");
            this.tB = measureText;
            if (measuredWidth < measureText) {
                measuredWidth = measureText;
            }
            int i12 = measuredWidth + ((measuredHeight / 2) * 2);
            setMeasuredDimension(i12, measuredHeight);
            this.ZYk.set(0.0f, 0.0f, i12, measuredHeight);
            return;
        }
        this.ZYk.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public awB(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public awB(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.tB = 0;
        oJ();
    }
}
