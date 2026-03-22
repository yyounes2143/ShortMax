package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes3.dex */
public class jFA extends View {
    private Paint Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12658ba;
    private Paint cFZ;
    private Paint ex;
    private int oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12659so;
    private final RectF tB;

    public jFA(Context context) {
        super(context);
        this.tB = new RectF();
        oJ();
    }

    private void oJ() {
        Paint paint = new Paint();
        this.ex = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.cFZ = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.Pfn = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.tB;
        int i10 = this.f12658ba;
        canvas.drawRoundRect(rectF, i10, i10, this.Pfn);
        RectF rectF2 = this.tB;
        int i11 = this.f12658ba;
        canvas.drawRoundRect(rectF2, i11, i11, this.ex);
        int i12 = this.oJ;
        int i13 = this.ZYk;
        canvas.drawLine(i12 * 0.3f, i13 * 0.3f, i12 * 0.7f, i13 * 0.7f, this.cFZ);
        int i14 = this.oJ;
        int i15 = this.ZYk;
        canvas.drawLine(i14 * 0.7f, i15 * 0.3f, i14 * 0.3f, i15 * 0.7f, this.cFZ);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.oJ = i10;
        this.ZYk = i11;
        RectF rectF = this.tB;
        int i14 = this.f12659so;
        rectF.set(i14, i14, i10 - i14, i11 - i14);
    }

    public void setBgColor(int i10) {
        this.Pfn.setStyle(Paint.Style.FILL);
        this.Pfn.setColor(i10);
    }

    public void setDislikeColor(int i10) {
        this.cFZ.setColor(i10);
    }

    public void setDislikeWidth(int i10) {
        this.cFZ.setStrokeWidth(i10);
    }

    public void setRadius(int i10) {
        this.f12658ba = i10;
    }

    public void setStrokeColor(int i10) {
        this.ex.setStyle(Paint.Style.STROKE);
        this.ex.setColor(i10);
    }

    public void setStrokeWidth(int i10) {
        this.ex.setStrokeWidth(i10);
        this.f12659so = i10;
    }
}
