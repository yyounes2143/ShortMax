package com.facebook.fresco.vito.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Shape.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CircleShape extends Shape {
    @Nullable
    private final Boolean antiAliased;
    private final float cx;
    private final float cy;
    private final float radius;

    public /* synthetic */ CircleShape(float f10, float f11, float f12, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, (i10 & 8) != 0 ? null : bool);
    }

    @Override // com.facebook.fresco.vito.renderer.Shape
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (this.antiAliased != null) {
            boolean isAntiAlias = paint.isAntiAlias();
            paint.setAntiAlias(this.antiAliased.booleanValue());
            canvas.drawCircle(this.cx, this.cy, this.radius, paint);
            paint.setAntiAlias(isAntiAlias);
            return;
        }
        canvas.drawCircle(this.cx, this.cy, this.radius, paint);
    }

    public CircleShape(float f10, float f11, float f12, @Nullable Boolean bool) {
        super(null);
        this.cx = f10;
        this.cy = f11;
        this.radius = f12;
        this.antiAliased = bool;
    }
}
