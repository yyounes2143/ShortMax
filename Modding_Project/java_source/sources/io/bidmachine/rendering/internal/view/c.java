package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import tp.h;
import tp.k;
import tp.v;
@Metadata
/* loaded from: classes8.dex */
public final class c extends View implements h, v {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f58486a;

    /* renamed from: b  reason: collision with root package name */
    private float f58487b;

    /* renamed from: c  reason: collision with root package name */
    private int f58488c;

    /* renamed from: d  reason: collision with root package name */
    private int f58489d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f58486a = new Paint(1);
        this.f58488c = k.f67636c;
    }

    @Override // tp.h
    public void a(@NotNull rq.e appearanceParams) {
        Intrinsics.checkNotNullParameter(appearanceParams, "appearanceParams");
        Integer i10 = appearanceParams.i();
        if (i10 != null) {
            this.f58489d = i10.intValue();
        }
        Integer o10 = appearanceParams.o();
        if (o10 != null) {
            this.f58488c = o10.intValue();
        }
    }

    @Override // tp.v
    public void e(long j10, long j11, float f10) {
        this.f58487b = f10;
        postInvalidate();
    }

    public final int getLineBackgroundColor() {
        return this.f58489d;
    }

    public final int getLineColor() {
        return this.f58488c;
    }

    @NotNull
    public final Paint getLinePaint() {
        return this.f58486a;
    }

    public final float getPercent() {
        return this.f58487b;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.f58486a.setColor(this.f58489d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.f58486a);
        this.f58486a.setColor(this.f58488c);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.f58487b) / 100), measuredHeight, this.f58486a);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f58486a.setStrokeWidth(getMeasuredHeight());
    }

    public final void setLineBackgroundColor(int i10) {
        this.f58489d = i10;
    }

    public final void setLineColor(int i10) {
        this.f58488c = i10;
    }

    public final void setPercent(float f10) {
        this.f58487b = f10;
    }

    @VisibleForTesting
    public static /* synthetic */ void getLineBackgroundColor$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLineColor$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLinePaint$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPercent$annotations() {
    }
}
