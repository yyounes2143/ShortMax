package io.bidmachine.iab.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.internal.view.SupportMenu;
import sm.c;
import sm.h;
import sm.q;
/* loaded from: classes7.dex */
public final class CircularProgressBar extends ProgressBar implements h {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    c f54658a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Paint f54659b;

    public CircularProgressBar(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f54659b = paint;
        paint.setColor(0);
        a(context);
    }

    void a(Context context) {
        float f10 = getResources().getDisplayMetrics().density;
        int q10 = q.q(context, 8.0f);
        setPadding(q10, q10, q10, q10);
        c cVar = new c(context);
        this.f54658a = cVar;
        cVar.q(f10 * 4.0f);
        this.f54658a.o(SupportMenu.CATEGORY_MASK);
        this.f54658a.p(Paint.Cap.ROUND);
        setIndeterminateDrawable(this.f54658a);
        setIndeterminate(true);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / 2.0f, this.f54659b);
        super.onDraw(canvas);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f54658a.n((Math.min((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f) - this.f54658a.m());
    }

    public void setColorSchemeColors(int... iArr) {
        this.f54658a.o(iArr);
    }

    public void setProgressBackgroundColor(int i10) {
        this.f54659b.setColor(i10);
    }

    @Override // sm.h
    public void setStyle(@NonNull IabElementStyle iabElementStyle) {
        this.f54658a.q(iabElementStyle.E(getContext()).floatValue());
        this.f54658a.o(iabElementStyle.D().intValue());
        this.f54659b.setColor(iabElementStyle.i().intValue());
        postInvalidate();
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f54659b = paint;
        paint.setColor(0);
        a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint(1);
        this.f54659b = paint;
        paint.setColor(0);
        a(context);
    }
}
