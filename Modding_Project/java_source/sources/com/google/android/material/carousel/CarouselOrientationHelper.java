package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes5.dex */
abstract class CarouselOrientationHelper {
    final int orientation;

    private static CarouselOrientationHelper createHorizontalHelper(final CarouselLayoutManager carouselLayoutManager) {
        return new CarouselOrientationHelper(0) { // from class: com.google.android.material.carousel.CarouselOrientationHelper.2
            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                float f10 = rectF2.left;
                float f11 = rectF3.left;
                if (f10 < f11 && rectF2.right > f11) {
                    float f12 = f11 - f10;
                    rectF.left += f12;
                    rectF2.left += f12;
                }
                float f13 = rectF2.right;
                float f14 = rectF3.right;
                if (f13 > f14 && rectF2.left < f14) {
                    float f15 = f13 - f14;
                    rectF.right = Math.max(rectF.right - f15, rectF.left);
                    rectF2.right = Math.max(rectF2.right - f15, rectF2.left);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getDecoratedCrossAxisMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return carouselLayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public float getMaskMargins(RecyclerView.LayoutParams layoutParams) {
                return ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public RectF getMaskRect(float f10, float f11, float f12, float f13) {
                return new RectF(f13, 0.0f, f11 - f13, f10);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentBottom() {
                return carouselLayoutManager.getHeight() - carouselLayoutManager.getPaddingBottom();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentEnd() {
                if (carouselLayoutManager.isLayoutRtl()) {
                    return getParentLeft();
                }
                return getParentRight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentLeft() {
                return 0;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentRight() {
                return carouselLayoutManager.getWidth();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentStart() {
                if (carouselLayoutManager.isLayoutRtl()) {
                    return getParentRight();
                }
                return getParentLeft();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentTop() {
                return carouselLayoutManager.getPaddingTop();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void layoutDecoratedWithMargins(View view, int i10, int i11) {
                int parentTop = getParentTop();
                carouselLayoutManager.layoutDecoratedWithMargins(view, i10, parentTop, i11, parentTop + getDecoratedCrossAxisMeasurement(view));
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.right <= rectF3.left) {
                    float floor = ((float) Math.floor(rectF.right)) - 1.0f;
                    rectF.right = floor;
                    rectF.left = Math.min(rectF.left, floor);
                }
                if (rectF2.left >= rectF3.right) {
                    float ceil = ((float) Math.ceil(rectF.left)) + 1.0f;
                    rectF.left = ceil;
                    rectF.right = Math.max(ceil, rectF.right);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void offsetChild(View view, Rect rect, float f10, float f11) {
                view.offsetLeftAndRight((int) (f11 - (rect.left + f10)));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CarouselOrientationHelper createOrientationHelper(CarouselLayoutManager carouselLayoutManager, int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                return createVerticalHelper(carouselLayoutManager);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return createHorizontalHelper(carouselLayoutManager);
    }

    private static CarouselOrientationHelper createVerticalHelper(final CarouselLayoutManager carouselLayoutManager) {
        return new CarouselOrientationHelper(1) { // from class: com.google.android.material.carousel.CarouselOrientationHelper.1
            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                float f10 = rectF2.top;
                float f11 = rectF3.top;
                if (f10 < f11 && rectF2.bottom > f11) {
                    float f12 = f11 - f10;
                    rectF.top += f12;
                    rectF3.top += f12;
                }
                float f13 = rectF2.bottom;
                float f14 = rectF3.bottom;
                if (f13 > f14 && rectF2.top < f14) {
                    float f15 = f13 - f14;
                    rectF.bottom = Math.max(rectF.bottom - f15, rectF.top);
                    rectF2.bottom = Math.max(rectF2.bottom - f15, rectF2.top);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getDecoratedCrossAxisMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return carouselLayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public float getMaskMargins(RecyclerView.LayoutParams layoutParams) {
                return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public RectF getMaskRect(float f10, float f11, float f12, float f13) {
                return new RectF(0.0f, f12, f11, f10 - f12);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentBottom() {
                return carouselLayoutManager.getHeight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentEnd() {
                return getParentBottom();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentLeft() {
                return carouselLayoutManager.getPaddingLeft();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentRight() {
                return carouselLayoutManager.getWidth() - carouselLayoutManager.getPaddingRight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentStart() {
                return getParentTop();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentTop() {
                return 0;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void layoutDecoratedWithMargins(View view, int i10, int i11) {
                int parentLeft = getParentLeft();
                carouselLayoutManager.layoutDecoratedWithMargins(view, parentLeft, i10, parentLeft + getDecoratedCrossAxisMeasurement(view), i11);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.bottom <= rectF3.top) {
                    float floor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                    rectF.bottom = floor;
                    rectF.top = Math.min(rectF.top, floor);
                }
                if (rectF2.top >= rectF3.bottom) {
                    float ceil = ((float) Math.ceil(rectF.top)) + 1.0f;
                    rectF.top = ceil;
                    rectF.bottom = Math.max(ceil, rectF.bottom);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void offsetChild(View view, Rect rect, float f10, float f11) {
                view.offsetTopAndBottom((int) (f11 - (rect.top + f10)));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3);

    abstract int getDecoratedCrossAxisMeasurement(View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float getMaskMargins(RecyclerView.LayoutParams layoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract RectF getMaskRect(float f10, float f11, float f12, float f13);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentBottom();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentEnd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentLeft();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentRight();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentStart();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentTop();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void layoutDecoratedWithMargins(View view, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void offsetChild(View view, Rect rect, float f10, float f11);

    private CarouselOrientationHelper(int i10) {
        this.orientation = i10;
    }
}
