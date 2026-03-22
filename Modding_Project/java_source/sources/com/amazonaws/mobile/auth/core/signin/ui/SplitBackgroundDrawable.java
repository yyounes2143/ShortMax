package com.amazonaws.mobile.auth.core.signin.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes2.dex */
public class SplitBackgroundDrawable extends Drawable {

    /* renamed from: c  reason: collision with root package name */
    private int f5092c;

    /* renamed from: b  reason: collision with root package name */
    private int f5091b = -1;

    /* renamed from: a  reason: collision with root package name */
    private Paint f5090a = new Paint();

    public SplitBackgroundDrawable(int i10, int i11) {
        this.f5092c = i11;
        a(i10);
    }

    public void a(int i10) {
        this.f5091b = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int height;
        Rect bounds = getBounds();
        this.f5090a.setColor(this.f5092c);
        if (this.f5091b < bounds.height()) {
            height = this.f5091b;
        } else {
            height = bounds.height();
        }
        float f10 = height;
        canvas.drawRect(0.0f, 0.0f, bounds.width(), f10, this.f5090a);
        this.f5090a.setColor(-1);
        canvas.drawRect(0.0f, f10, bounds.width(), bounds.height(), this.f5090a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
