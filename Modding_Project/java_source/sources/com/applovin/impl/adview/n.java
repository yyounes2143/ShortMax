package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.e;
/* loaded from: classes2.dex */
public final class n extends e {

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f7462c = new Paint(1);

    /* renamed from: d  reason: collision with root package name */
    private static final Paint f7463d = new Paint(1);

    /* renamed from: e  reason: collision with root package name */
    private static final Paint f7464e = new Paint(1);

    public n(Context context) {
        super(context);
        f7462c.setColor(-1);
        f7463d.setColor(ViewCompat.MEASURED_STATE_MASK);
        Paint paint = f7464e;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    protected float getCenter() {
        return getSize() / 2.0f;
    }

    protected float getCrossOffset() {
        return this.f7430a * 10.0f;
    }

    protected float getInnerCircleOffset() {
        return this.f7430a * 2.0f;
    }

    protected float getInnerCircleRadius() {
        return getCenter() - getInnerCircleOffset();
    }

    protected float getStrokeWidth() {
        return this.f7430a * 3.0f;
    }

    @Override // com.applovin.impl.adview.e
    public e.a getStyle() {
        return e.a.WHITE_ON_BLACK;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f7462c);
        canvas.drawCircle(center, center, getInnerCircleRadius(), f7463d);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = f7464e;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
