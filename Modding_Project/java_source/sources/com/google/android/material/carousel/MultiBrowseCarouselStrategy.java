package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes5.dex */
public final class MultiBrowseCarouselStrategy extends CarouselStrategy {
    private int keylineCount = 0;
    private static final int[] SMALL_COUNTS = {1};
    private static final int[] MEDIUM_COUNTS = {1, 0};

    boolean ensureArrangementFitsItemCount(Arrangement arrangement, int i10) {
        boolean z10;
        int itemCount = arrangement.getItemCount() - i10;
        if (itemCount > 0 && (arrangement.smallCount > 0 || arrangement.mediumCount > 1)) {
            z10 = true;
        } else {
            z10 = false;
        }
        while (itemCount > 0) {
            int i11 = arrangement.smallCount;
            if (i11 > 0) {
                arrangement.smallCount = i11 - 1;
            } else {
                int i12 = arrangement.mediumCount;
                if (i12 > 1) {
                    arrangement.mediumCount = i12 - 1;
                }
            }
            itemCount--;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    public KeylineState onFirstChildMeasuredWithMargins(@NonNull Carousel carousel, @NonNull View view) {
        float containerHeight = carousel.getContainerHeight();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (carousel.isHorizontal()) {
            f10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f11 = f10;
        float smallItemSizeMin = getSmallItemSizeMin() + f11;
        float max = Math.max(getSmallItemSizeMax() + f11, smallItemSizeMin);
        float min = Math.min(measuredHeight + f11, containerHeight);
        float clamp = MathUtils.clamp((measuredHeight / 3.0f) + f11, smallItemSizeMin + f11, max + f11);
        float f12 = (min + clamp) / 2.0f;
        int[] iArr = SMALL_COUNTS;
        if (containerHeight < 2.0f * smallItemSizeMin) {
            iArr = new int[]{0};
        }
        int[] iArr2 = MEDIUM_COUNTS;
        if (carousel.getCarouselAlignment() == 1) {
            iArr = CarouselStrategy.doubleCounts(iArr);
            iArr2 = CarouselStrategy.doubleCounts(iArr2);
        }
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int ceil = (int) Math.ceil(containerHeight / min);
        int max2 = (ceil - ((int) Math.max(1.0d, Math.floor(((containerHeight - (CarouselStrategyHelper.maxValue(iArr4) * f12)) - (CarouselStrategyHelper.maxValue(iArr3) * max)) / min)))) + 1;
        int[] iArr5 = new int[max2];
        for (int i10 = 0; i10 < max2; i10++) {
            iArr5[i10] = ceil - i10;
        }
        Arrangement findLowestCostArrangement = Arrangement.findLowestCostArrangement(containerHeight, clamp, smallItemSizeMin, max, iArr3, f12, iArr4, min, iArr5);
        this.keylineCount = findLowestCostArrangement.getItemCount();
        if (ensureArrangementFitsItemCount(findLowestCostArrangement, carousel.getItemCount())) {
            findLowestCostArrangement = Arrangement.findLowestCostArrangement(containerHeight, clamp, smallItemSizeMin, max, new int[]{findLowestCostArrangement.smallCount}, f12, new int[]{findLowestCostArrangement.mediumCount}, min, new int[]{findLowestCostArrangement.largeCount});
        }
        return CarouselStrategyHelper.createKeylineState(view.getContext(), f11, containerHeight, findLowestCostArrangement, carousel.getCarouselAlignment());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean shouldRefreshKeylineState(Carousel carousel, int i10) {
        if ((i10 < this.keylineCount && carousel.getItemCount() >= this.keylineCount) || (i10 >= this.keylineCount && carousel.getItemCount() < this.keylineCount)) {
            return true;
        }
        return false;
    }
}
