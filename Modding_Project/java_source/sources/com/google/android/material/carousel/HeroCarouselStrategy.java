package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes5.dex */
public class HeroCarouselStrategy extends CarouselStrategy {
    private int keylineCount = 0;
    private static final int[] SMALL_COUNTS = {1};
    private static final int[] MEDIUM_COUNTS = {0, 1};

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    public KeylineState onFirstChildMeasuredWithMargins(@NonNull Carousel carousel, @NonNull View view) {
        int[] iArr;
        int i10;
        int[] iArr2;
        int[] iArr3;
        int i11;
        int containerHeight = carousel.getContainerHeight();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredWidth = view.getMeasuredWidth() * 2;
        if (carousel.isHorizontal()) {
            f10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredWidth = view.getMeasuredHeight() * 2;
        }
        float smallItemSizeMin = getSmallItemSizeMin() + f10;
        float max = Math.max(getSmallItemSizeMax() + f10, smallItemSizeMin);
        float f11 = containerHeight;
        float min = Math.min(measuredWidth + f10, f11);
        float clamp = MathUtils.clamp((measuredWidth / 3.0f) + f10, smallItemSizeMin + f10, max + f10);
        float f12 = (min + clamp) / 2.0f;
        int[] iArr4 = SMALL_COUNTS;
        if (f11 < 2.0f * smallItemSizeMin) {
            iArr = new int[]{0};
        } else {
            iArr = iArr4;
        }
        int max2 = (int) Math.max(1.0d, Math.floor((f11 - (CarouselStrategyHelper.maxValue(iArr4) * max)) / min));
        int ceil = (((int) Math.ceil(f11 / min)) - max2) + 1;
        int[] iArr5 = new int[ceil];
        for (int i12 = 0; i12 < ceil; i12++) {
            iArr5[i12] = max2 + i12;
        }
        if (carousel.getCarouselAlignment() == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (i10 != 0) {
            iArr2 = CarouselStrategy.doubleCounts(iArr);
        } else {
            iArr2 = iArr;
        }
        if (i10 != 0) {
            iArr3 = CarouselStrategy.doubleCounts(MEDIUM_COUNTS);
        } else {
            iArr3 = MEDIUM_COUNTS;
        }
        Arrangement findLowestCostArrangement = Arrangement.findLowestCostArrangement(f11, clamp, smallItemSizeMin, max, iArr2, f12, iArr3, min, iArr5);
        this.keylineCount = findLowestCostArrangement.getItemCount();
        if (findLowestCostArrangement.getItemCount() > carousel.getItemCount()) {
            findLowestCostArrangement = Arrangement.findLowestCostArrangement(f11, clamp, smallItemSizeMin, max, iArr, f12, MEDIUM_COUNTS, min, iArr5);
            i11 = 0;
        } else {
            i11 = i10;
        }
        return CarouselStrategyHelper.createKeylineState(view.getContext(), f10, f11, findLowestCostArrangement, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean shouldRefreshKeylineState(@NonNull Carousel carousel, int i10) {
        if (carousel.getCarouselAlignment() == 1) {
            if (i10 < this.keylineCount && carousel.getItemCount() >= this.keylineCount) {
                return true;
            }
            if (i10 >= this.keylineCount && carousel.getItemCount() < this.keylineCount) {
                return true;
            }
        }
        return false;
    }
}
