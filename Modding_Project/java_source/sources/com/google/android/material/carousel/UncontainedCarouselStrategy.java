package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.KeylineState;
/* loaded from: classes5.dex */
public final class UncontainedCarouselStrategy extends CarouselStrategy {
    private static final float MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD = 0.85f;

    private float calculateMediumChildSize(float f10, float f11, float f12) {
        float max = Math.max(1.5f * f12, f10);
        float f13 = MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD * f11;
        if (max > f13) {
            max = Math.max(f13, f12 * 1.2f);
        }
        return Math.min(f11, max);
    }

    private KeylineState createCenterAlignedKeylineState(float f10, float f11, float f12, int i10, float f13, float f14, float f15) {
        float min = Math.min(f14, f12);
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(min, f12, f11);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(f13, f12, f11);
        float f16 = f13 / 2.0f;
        float f17 = (f15 + 0.0f) - f16;
        float f18 = f17 + f16;
        float f19 = min / 2.0f;
        float f20 = (i10 * f12) + f18;
        KeylineState.Builder addKeylineRange = new KeylineState.Builder(f12, f10).addAnchorKeyline((f17 - f16) - f19, childMaskPercentage, min).addKeyline(f17, childMaskPercentage2, f13, false).addKeylineRange((f12 / 2.0f) + f18, 0.0f, f12, i10, true);
        addKeylineRange.addKeyline(f16 + f20, childMaskPercentage2, f13, false);
        addKeylineRange.addAnchorKeyline(f20 + f13 + f19, childMaskPercentage, min);
        return addKeylineRange.build();
    }

    private KeylineState createLeftAlignedKeylineState(Context context, float f10, float f11, float f12, int i10, float f13, int i11, float f14) {
        float min = Math.min(f14, f12);
        float max = Math.max(min, 0.5f * f13);
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(max, f12, f10);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(min, f12, f10);
        float childMaskPercentage3 = CarouselStrategy.getChildMaskPercentage(f13, f12, f10);
        float f15 = (i10 * f12) + 0.0f;
        KeylineState.Builder addKeylineRange = new KeylineState.Builder(f12, f11).addAnchorKeyline(0.0f - (max / 2.0f), childMaskPercentage, max).addKeylineRange(f12 / 2.0f, 0.0f, f12, i10, true);
        if (i11 > 0) {
            float f16 = (f13 / 2.0f) + f15;
            f15 += f13;
            addKeylineRange.addKeyline(f16, childMaskPercentage3, f13, false);
        }
        addKeylineRange.addAnchorKeyline(f15 + (CarouselStrategyHelper.getExtraSmallSize(context) / 2.0f), childMaskPercentage2, min);
        return addKeylineRange.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean isContained() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    @NonNull
    public KeylineState onFirstChildMeasuredWithMargins(@NonNull Carousel carousel, @NonNull View view) {
        int containerHeight;
        float f10;
        int i10;
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        } else {
            containerHeight = carousel.getContainerHeight();
        }
        float f11 = containerHeight;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (carousel.isHorizontal()) {
            float f13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
            f10 = f13;
        } else {
            f10 = f12;
        }
        float f14 = measuredHeight + f10;
        float extraSmallSize = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f10;
        float extraSmallSize2 = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f10;
        int max = Math.max(1, (int) Math.floor(f11 / f14));
        float f15 = f11 - (max * f14);
        if (carousel.getCarouselAlignment() == 1) {
            float f16 = f15 / 2.0f;
            return createCenterAlignedKeylineState(f11, f10, f14, max, Math.max(Math.min(3.0f * f16, f14), getSmallItemSizeMin() + f10), extraSmallSize2, f16);
        }
        if (f15 > 0.0f) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        return createLeftAlignedKeylineState(view.getContext(), f10, f11, f14, max, calculateMediumChildSize(extraSmallSize, f14, f15), i10, extraSmallSize2);
    }
}
