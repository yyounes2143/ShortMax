package com.amazonaws.mobile.auth.core.signin.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes2.dex */
public class BackgroundDrawable extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private Paint f5086a = new Paint();

    /* renamed from: b  reason: collision with root package name */
    private int f5087b;

    public BackgroundDrawable(int i10) {
        this.f5087b = i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.f5086a.setColor(this.f5087b);
        canvas.drawRect(0.0f, 0.0f, bounds.width(), bounds.height(), this.f5086a);
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
