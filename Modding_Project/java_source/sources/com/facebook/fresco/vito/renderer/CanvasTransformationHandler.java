package com.facebook.fresco.vito.renderer;

import android.graphics.Matrix;
import android.graphics.Rect;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CanvasTransformationHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CanvasTransformationHandler {
    @Nullable
    private CanvasTransformation canvasTransformation;
    @Nullable
    private Matrix drawMatrix;
    @NotNull
    private final Matrix tempMatrix;

    public CanvasTransformationHandler() {
        this(null, 1, null);
    }

    public final void configure(@NotNull Rect bounds, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Matrix matrix = null;
        if (i10 > 0 && i11 > 0) {
            CanvasTransformation canvasTransformation = this.canvasTransformation;
            if (canvasTransformation != null) {
                matrix = canvasTransformation.calculateTransformation(this.tempMatrix, bounds, i10, i11);
            }
            this.drawMatrix = matrix;
            return;
        }
        this.drawMatrix = null;
    }

    @Nullable
    public final CanvasTransformation getCanvasTransformation() {
        return this.canvasTransformation;
    }

    @Nullable
    public final Matrix getMatrix() {
        return this.drawMatrix;
    }

    public final void setCanvasTransformation(@Nullable CanvasTransformation canvasTransformation) {
        this.canvasTransformation = canvasTransformation;
    }

    public CanvasTransformationHandler(@Nullable CanvasTransformation canvasTransformation) {
        this.canvasTransformation = canvasTransformation;
        this.tempMatrix = new Matrix();
    }

    public /* synthetic */ CanvasTransformationHandler(CanvasTransformation canvasTransformation, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : canvasTransformation);
    }
}
