package com.facebook.fresco.vito.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Shape.kt */
@Metadata
/* loaded from: classes3.dex */
public final class RoundedRectShape extends Shape {
    @NotNull
    private final RectF rect;

    /* renamed from: rx  reason: collision with root package name */
    private final float f15556rx;
    private final float ry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedRectShape(@NotNull RectF rect, float f10, float f11) {
        super(null);
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rect = rect;
        this.f15556rx = f10;
        this.ry = f11;
    }

    @Override // com.facebook.fresco.vito.renderer.Shape
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        canvas.drawRoundRect(this.rect, this.f15556rx, this.ry, paint);
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    public final float getRx() {
        return this.f15556rx;
    }

    public final float getRy() {
        return this.ry;
    }
}
