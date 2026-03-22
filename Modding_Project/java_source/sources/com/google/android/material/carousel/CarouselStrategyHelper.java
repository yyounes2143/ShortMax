package com.google.android.material.carousel;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.carousel.KeylineState;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class CarouselStrategyHelper {
    private CarouselStrategyHelper() {
    }

    static float addEnd(float f10, float f11, int i10) {
        return f10 + (Math.max(0, i10 - 1) * f11);
    }

    static float addStart(float f10, float f11, int i10) {
        if (i10 > 0) {
            return f10 + (f11 / 2.0f);
        }
        return f10;
    }

    static KeylineState createCenterAlignedKeylineState(@NonNull Context context, float f10, float f11, @NonNull Arrangement arrangement) {
        float f12;
        float f13;
        float min = Math.min(getExtraSmallSize(context) + f10, arrangement.largeSize);
        float f14 = min / 2.0f;
        float f15 = 0.0f - f14;
        float addStart = addStart(0.0f, arrangement.smallSize, arrangement.smallCount);
        float updateCurPosition = updateCurPosition(0.0f, addEnd(addStart, arrangement.smallSize, (int) Math.floor(arrangement.smallCount / 2.0f)), arrangement.smallSize, arrangement.smallCount);
        float addStart2 = addStart(updateCurPosition, arrangement.mediumSize, arrangement.mediumCount);
        float updateCurPosition2 = updateCurPosition(updateCurPosition, addEnd(addStart2, arrangement.mediumSize, (int) Math.floor(arrangement.mediumCount / 2.0f)), arrangement.mediumSize, arrangement.mediumCount);
        float addStart3 = addStart(updateCurPosition2, arrangement.largeSize, arrangement.largeCount);
        float updateCurPosition3 = updateCurPosition(updateCurPosition2, addEnd(addStart3, arrangement.largeSize, arrangement.largeCount), arrangement.largeSize, arrangement.largeCount);
        float addStart4 = addStart(updateCurPosition3, arrangement.mediumSize, arrangement.mediumCount);
        float addStart5 = addStart(updateCurPosition(updateCurPosition3, addEnd(addStart4, arrangement.mediumSize, (int) Math.ceil(arrangement.mediumCount / 2.0f)), arrangement.mediumSize, arrangement.mediumCount), arrangement.smallSize, arrangement.smallCount);
        float f16 = f14 + f11;
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(min, arrangement.largeSize, f10);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(arrangement.smallSize, arrangement.largeSize, f10);
        float childMaskPercentage3 = CarouselStrategy.getChildMaskPercentage(arrangement.mediumSize, arrangement.largeSize, f10);
        KeylineState.Builder addAnchorKeyline = new KeylineState.Builder(arrangement.largeSize, f11).addAnchorKeyline(f15, childMaskPercentage, min);
        int i10 = arrangement.smallCount;
        if (i10 > 0) {
            f12 = f16;
            addAnchorKeyline.addKeylineRange(addStart, childMaskPercentage2, arrangement.smallSize, (int) Math.floor(i10 / 2.0f));
        } else {
            f12 = f16;
        }
        int i11 = arrangement.mediumCount;
        if (i11 > 0) {
            addAnchorKeyline.addKeylineRange(addStart2, childMaskPercentage3, arrangement.mediumSize, (int) Math.floor(i11 / 2.0f));
        }
        addAnchorKeyline.addKeylineRange(addStart3, 0.0f, arrangement.largeSize, arrangement.largeCount, true);
        int i12 = arrangement.mediumCount;
        if (i12 > 0) {
            f13 = 2.0f;
            addAnchorKeyline.addKeylineRange(addStart4, childMaskPercentage3, arrangement.mediumSize, (int) Math.ceil(i12 / 2.0f));
        } else {
            f13 = 2.0f;
        }
        int i13 = arrangement.smallCount;
        if (i13 > 0) {
            addAnchorKeyline.addKeylineRange(addStart5, childMaskPercentage2, arrangement.smallSize, (int) Math.ceil(i13 / f13));
        }
        addAnchorKeyline.addAnchorKeyline(f12, childMaskPercentage, min);
        return addAnchorKeyline.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeylineState createKeylineState(@NonNull Context context, float f10, float f11, @NonNull Arrangement arrangement, int i10) {
        if (i10 == 1) {
            return createCenterAlignedKeylineState(context, f10, f11, arrangement);
        }
        return createLeftAlignedKeylineState(context, f10, f11, arrangement);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeylineState createLeftAlignedKeylineState(@NonNull Context context, float f10, float f11, @NonNull Arrangement arrangement) {
        float min = Math.min(getExtraSmallSize(context) + f10, arrangement.largeSize);
        float f12 = min / 2.0f;
        float f13 = 0.0f - f12;
        float addStart = addStart(0.0f, arrangement.largeSize, arrangement.largeCount);
        float updateCurPosition = updateCurPosition(0.0f, addEnd(addStart, arrangement.largeSize, arrangement.largeCount), arrangement.largeSize, arrangement.largeCount);
        float addStart2 = addStart(updateCurPosition, arrangement.mediumSize, arrangement.mediumCount);
        float addStart3 = addStart(updateCurPosition(updateCurPosition, addStart2, arrangement.mediumSize, arrangement.mediumCount), arrangement.smallSize, arrangement.smallCount);
        float f14 = f12 + f11;
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(min, arrangement.largeSize, f10);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(arrangement.smallSize, arrangement.largeSize, f10);
        float childMaskPercentage3 = CarouselStrategy.getChildMaskPercentage(arrangement.mediumSize, arrangement.largeSize, f10);
        KeylineState.Builder addKeylineRange = new KeylineState.Builder(arrangement.largeSize, f11).addAnchorKeyline(f13, childMaskPercentage, min).addKeylineRange(addStart, 0.0f, arrangement.largeSize, arrangement.largeCount, true);
        if (arrangement.mediumCount > 0) {
            addKeylineRange.addKeyline(addStart2, childMaskPercentage3, arrangement.mediumSize);
        }
        int i10 = arrangement.smallCount;
        if (i10 > 0) {
            addKeylineRange.addKeylineRange(addStart3, childMaskPercentage2, arrangement.smallSize, i10);
        }
        addKeylineRange.addAnchorKeyline(f14, childMaskPercentage, min);
        return addKeylineRange.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getExtraSmallSize(@NonNull Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_gone_size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getSmallSizeMax(@NonNull Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getSmallSizeMin(@NonNull Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int maxValue(int[] iArr) {
        int i10 = Integer.MIN_VALUE;
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    static float updateCurPosition(float f10, float f11, float f12, int i10) {
        if (i10 > 0) {
            return f11 + (f12 / 2.0f);
        }
        return f10;
    }
}
