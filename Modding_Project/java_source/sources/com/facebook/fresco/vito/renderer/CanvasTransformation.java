package com.facebook.fresco.vito.renderer;

import android.graphics.Matrix;
import android.graphics.Rect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CanvasTransformation.kt */
@Metadata
/* loaded from: classes3.dex */
public interface CanvasTransformation {
    @Nullable
    Matrix calculateTransformation(@NotNull Matrix matrix, @NotNull Rect rect, int i10, int i11);
}
