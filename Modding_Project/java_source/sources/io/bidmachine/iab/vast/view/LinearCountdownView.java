package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import sm.a;
import sm.h;
import sm.q;
/* loaded from: classes7.dex */
public class LinearCountdownView extends View implements h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f54975a;

    /* renamed from: b  reason: collision with root package name */
    private float f54976b;

    /* renamed from: c  reason: collision with root package name */
    private float f54977c;

    /* renamed from: d  reason: collision with root package name */
    private int f54978d;

    /* renamed from: e  reason: collision with root package name */
    private int f54979e;

    public LinearCountdownView(@NonNull Context context) {
        super(context);
        this.f54975a = new Paint(1);
        this.f54976b = 0.0f;
        this.f54977c = 15.0f;
        this.f54978d = a.f66381a;
        this.f54979e = 0;
        a();
    }

    private void a() {
        this.f54977c = q.q(getContext(), 4.0f);
    }

    public void b(float f10) {
        this.f54976b = f10;
        postInvalidate();
    }

    public int getLineColor() {
        return this.f54978d;
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.f54975a.setStrokeWidth(this.f54977c);
        this.f54975a.setColor(this.f54979e);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.f54975a);
        this.f54975a.setColor(this.f54978d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.f54976b) / 100.0f), measuredHeight, this.f54975a);
    }

    @Override // sm.h
    public void setStyle(@NonNull IabElementStyle iabElementStyle) {
        this.f54978d = iabElementStyle.D().intValue();
        this.f54979e = iabElementStyle.i().intValue();
        this.f54977c = iabElementStyle.E(getContext()).floatValue();
        setAlpha(iabElementStyle.y().floatValue());
        postInvalidate();
    }

    public LinearCountdownView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54975a = new Paint(1);
        this.f54976b = 0.0f;
        this.f54977c = 15.0f;
        this.f54978d = a.f66381a;
        this.f54979e = 0;
        a();
    }
}
