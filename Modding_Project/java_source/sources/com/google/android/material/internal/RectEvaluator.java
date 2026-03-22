package com.google.android.material.internal;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class RectEvaluator implements TypeEvaluator<Rect> {
    private final Rect rect;

    public RectEvaluator(@NonNull Rect rect) {
        this.rect = rect;
    }

    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f10, @NonNull Rect rect, @NonNull Rect rect2) {
        int i10 = rect.left;
        int i11 = i10 + ((int) ((rect2.left - i10) * f10));
        int i12 = rect.top;
        int i13 = i12 + ((int) ((rect2.top - i12) * f10));
        int i14 = rect.right;
        int i15 = rect.bottom;
        int i16 = i15 + ((int) ((rect2.bottom - i15) * f10));
        this.rect.set(i11, i13, i14 + ((int) ((rect2.right - i14) * f10)), i16);
        return this.rect;
    }
}
