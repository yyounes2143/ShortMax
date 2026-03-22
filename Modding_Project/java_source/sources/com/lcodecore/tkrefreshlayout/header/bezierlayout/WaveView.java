package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
/* loaded from: classes5.dex */
public class WaveView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f25696a;

    /* renamed from: b  reason: collision with root package name */
    private int f25697b;

    /* renamed from: c  reason: collision with root package name */
    Path f25698c;

    /* renamed from: d  reason: collision with root package name */
    Paint f25699d;

    public WaveView(Context context) {
        this(context, null, 0);
    }

    private void a() {
        this.f25698c = new Path();
        Paint paint = new Paint();
        this.f25699d = paint;
        paint.setColor(-14736346);
        this.f25699d.setAntiAlias(true);
    }

    public int getHeadHeight() {
        return this.f25697b;
    }

    public int getWaveHeight() {
        return this.f25696a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f25698c.reset();
        this.f25698c.lineTo(0.0f, this.f25697b);
        this.f25698c.quadTo(getMeasuredWidth() / 2, this.f25697b + this.f25696a, getMeasuredWidth(), this.f25697b);
        this.f25698c.lineTo(getMeasuredWidth(), 0.0f);
        canvas.drawPath(this.f25698c, this.f25699d);
    }

    public void setHeadHeight(int i10) {
        this.f25697b = i10;
    }

    public void setWaveColor(@ColorInt int i10) {
        Paint paint = this.f25699d;
        if (paint != null) {
            paint.setColor(i10);
        }
    }

    public void setWaveHeight(int i10) {
        this.f25696a = i10;
    }

    public WaveView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaveView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }
}
