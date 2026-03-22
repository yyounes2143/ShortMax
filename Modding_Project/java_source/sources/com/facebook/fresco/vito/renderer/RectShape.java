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
public final class RectShape extends Shape {
    @NotNull
    private final RectF rect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RectShape(@NotNull RectF rect) {
        super(null);
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rect = rect;
    }

    @Override // com.facebook.fresco.vito.renderer.Shape
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        canvas.drawRect(this.rect, paint);
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }
}
