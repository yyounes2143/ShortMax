package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
/* loaded from: classes5.dex */
public abstract class CarouselStrategy {
    private float smallSizeMax;
    private float smallSizeMin;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] doubleCounts(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = iArr[i10] * 2;
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = 1.0d)
    public static float getChildMaskPercentage(float f10, float f11, float f12) {
        return 1.0f - ((f10 - f12) / (f11 - f12));
    }

    public float getSmallItemSizeMax() {
        return this.smallSizeMax;
    }

    public float getSmallItemSizeMin() {
        return this.smallSizeMin;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialize(Context context) {
        float f10 = this.smallSizeMin;
        if (f10 <= 0.0f) {
            f10 = CarouselStrategyHelper.getSmallSizeMin(context);
        }
        this.smallSizeMin = f10;
        float f11 = this.smallSizeMax;
        if (f11 <= 0.0f) {
            f11 = CarouselStrategyHelper.getSmallSizeMax(context);
        }
        this.smallSizeMax = f11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isContained() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract KeylineState onFirstChildMeasuredWithMargins(@NonNull Carousel carousel, @NonNull View view);

    public void setSmallItemSizeMax(float f10) {
        this.smallSizeMax = f10;
    }

    public void setSmallItemSizeMin(float f10) {
        this.smallSizeMin = f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRefreshKeylineState(Carousel carousel, int i10) {
        return false;
    }
}
