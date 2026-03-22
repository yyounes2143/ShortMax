package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes5.dex */
public class RoundDotView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f25680a;

    /* renamed from: b  reason: collision with root package name */
    private float f25681b;

    /* renamed from: c  reason: collision with root package name */
    private int f25682c;

    /* renamed from: d  reason: collision with root package name */
    private int f25683d;

    public RoundDotView(Context context) {
        this(context, null, 0);
    }

    private void a() {
        Paint paint = new Paint();
        this.f25680a = paint;
        paint.setAntiAlias(true);
        this.f25680a.setColor(Color.rgb(114, 114, 114));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = (getMeasuredWidth() / this.f25682c) - 10;
        for (int i10 = 0; i10 < this.f25682c; i10++) {
            switch (i10) {
                case 0:
                    this.f25680a.setAlpha(35);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f25683d * 3)) - (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 1:
                    this.f25680a.setAlpha(105);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f25683d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 2:
                    this.f25680a.setAlpha(145);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - this.f25683d) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 3:
                    this.f25680a.setAlpha(255);
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 4:
                    this.f25680a.setAlpha(145);
                    canvas.drawCircle((getMeasuredWidth() / 2) + this.f25683d + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 5:
                    this.f25680a.setAlpha(105);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f25683d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
                case 6:
                    this.f25680a.setAlpha(35);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f25683d * 3) + (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f25681b, this.f25680a);
                    break;
            }
        }
    }

    public void setCir_x(int i10) {
        this.f25683d = i10;
    }

    public RoundDotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundDotView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25681b = 15.0f;
        this.f25682c = 7;
        a();
    }
}
