package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.KeylineState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements Carousel, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final int ALIGNMENT_CENTER = 1;
    public static final int ALIGNMENT_START = 0;
    public static final int HORIZONTAL = 0;
    private static final String TAG = "CarouselLayoutManager";
    public static final int VERTICAL = 1;
    private int carouselAlignment;
    @NonNull
    private CarouselStrategy carouselStrategy;
    private int currentEstimatedPosition;
    private int currentFillStartPosition;
    @Nullable
    private KeylineState currentKeylineState;
    private final DebugItemDecoration debugItemDecoration;
    private boolean isDebuggingEnabled;
    @Nullable
    private KeylineStateList keylineStateList;
    @Nullable
    private Map<Integer, KeylineState> keylineStatePositionMap;
    private int lastItemCount;
    @VisibleForTesting
    int maxScroll;
    @VisibleForTesting
    int minScroll;
    private CarouselOrientationHelper orientationHelper;
    private final View.OnLayoutChangeListener recyclerViewSizeChangeListener;
    @VisibleForTesting
    int scrollOffset;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class ChildCalculations {
        final float center;
        final View child;
        final float offsetCenter;
        final KeylineRange range;

        ChildCalculations(View view, float f10, float f11, KeylineRange keylineRange) {
            this.child = view;
            this.center = f10;
            this.offsetCenter = f11;
            this.range = keylineRange;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class DebugItemDecoration extends RecyclerView.ItemDecoration {
        private List<KeylineState.Keyline> keylines;
        private final Paint linePaint;

        DebugItemDecoration() {
            Paint paint = new Paint();
            this.linePaint = paint;
            this.keylines = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            super.onDrawOver(canvas, recyclerView, state);
            this.linePaint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
            for (KeylineState.Keyline keyline : this.keylines) {
                this.linePaint.setColor(ColorUtils.blendARGB(-65281, -16776961, keyline.mask));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).isHorizontal()) {
                    canvas.drawLine(keyline.locOffset, ((CarouselLayoutManager) recyclerView.getLayoutManager()).getParentTop(), keyline.locOffset, ((CarouselLayoutManager) recyclerView.getLayoutManager()).getParentBottom(), this.linePaint);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).getParentLeft(), keyline.locOffset, ((CarouselLayoutManager) recyclerView.getLayoutManager()).getParentRight(), keyline.locOffset, this.linePaint);
                }
            }
        }

        void setKeylines(List<KeylineState.Keyline> list) {
            this.keylines = Collections.unmodifiableList(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class KeylineRange {
        final KeylineState.Keyline leftOrTop;
        final KeylineState.Keyline rightOrBottom;

        KeylineRange(KeylineState.Keyline keyline, KeylineState.Keyline keyline2) {
            boolean z10;
            if (keyline.loc <= keyline2.loc) {
                z10 = true;
            } else {
                z10 = false;
            }
            Preconditions.checkArgument(z10);
            this.leftOrTop = keyline;
            this.rightOrBottom = keyline2;
        }
    }

    /* loaded from: classes5.dex */
    private static class LayoutDirection {
        private static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        private static final int LAYOUT_END = 1;
        private static final int LAYOUT_START = -1;

        private LayoutDirection() {
        }
    }

    public CarouselLayoutManager() {
        this(new MultiBrowseCarouselStrategy());
    }

    private void addAndLayoutView(View view, int i10, ChildCalculations childCalculations) {
        float itemSize = this.currentKeylineState.getItemSize() / 2.0f;
        addView(view, i10);
        float f10 = childCalculations.offsetCenter;
        this.orientationHelper.layoutDecoratedWithMargins(view, (int) (f10 - itemSize), (int) (f10 + itemSize));
        updateChildMaskForLocation(view, childCalculations.center, childCalculations.range);
    }

    private float addEnd(float f10, float f11) {
        if (isLayoutRtl()) {
            return f10 - f11;
        }
        return f10 + f11;
    }

    private float addStart(float f10, float f11) {
        if (isLayoutRtl()) {
            return f10 + f11;
        }
        return f10 - f11;
    }

    private void addViewAtPosition(@NonNull RecyclerView.Recycler recycler, int i10, int i11) {
        if (i10 >= 0 && i10 < getItemCount()) {
            ChildCalculations makeChildCalculations = makeChildCalculations(recycler, calculateChildStartForFill(i10), i10);
            addAndLayoutView(makeChildCalculations.child, i11, makeChildCalculations);
        }
    }

    private void addViewsEnd(RecyclerView.Recycler recycler, RecyclerView.State state, int i10) {
        float calculateChildStartForFill = calculateChildStartForFill(i10);
        while (i10 < state.getItemCount()) {
            ChildCalculations makeChildCalculations = makeChildCalculations(recycler, calculateChildStartForFill, i10);
            if (!isLocOffsetOutOfFillBoundsEnd(makeChildCalculations.offsetCenter, makeChildCalculations.range)) {
                calculateChildStartForFill = addEnd(calculateChildStartForFill, this.currentKeylineState.getItemSize());
                if (!isLocOffsetOutOfFillBoundsStart(makeChildCalculations.offsetCenter, makeChildCalculations.range)) {
                    addAndLayoutView(makeChildCalculations.child, -1, makeChildCalculations);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void addViewsStart(RecyclerView.Recycler recycler, int i10) {
        float calculateChildStartForFill = calculateChildStartForFill(i10);
        while (i10 >= 0) {
            ChildCalculations makeChildCalculations = makeChildCalculations(recycler, calculateChildStartForFill, i10);
            if (!isLocOffsetOutOfFillBoundsStart(makeChildCalculations.offsetCenter, makeChildCalculations.range)) {
                calculateChildStartForFill = addStart(calculateChildStartForFill, this.currentKeylineState.getItemSize());
                if (!isLocOffsetOutOfFillBoundsEnd(makeChildCalculations.offsetCenter, makeChildCalculations.range)) {
                    addAndLayoutView(makeChildCalculations.child, 0, makeChildCalculations);
                }
                i10--;
            } else {
                return;
            }
        }
    }

    private float calculateChildOffsetCenterForLocation(View view, float f10, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.leftOrTop;
        float f11 = keyline.locOffset;
        KeylineState.Keyline keyline2 = keylineRange.rightOrBottom;
        float lerp = AnimationUtils.lerp(f11, keyline2.locOffset, keyline.loc, keyline2.loc, f10);
        if (keylineRange.rightOrBottom == this.currentKeylineState.getFirstKeyline() || keylineRange.leftOrTop == this.currentKeylineState.getLastKeyline()) {
            float maskMargins = this.orientationHelper.getMaskMargins((RecyclerView.LayoutParams) view.getLayoutParams()) / this.currentKeylineState.getItemSize();
            KeylineState.Keyline keyline3 = keylineRange.rightOrBottom;
            return lerp + ((f10 - keyline3.loc) * ((1.0f - keyline3.mask) + maskMargins));
        }
        return lerp;
    }

    private float calculateChildStartForFill(int i10) {
        return addEnd(getParentStart() - this.scrollOffset, this.currentKeylineState.getItemSize() * i10);
    }

    private int calculateEndScroll(RecyclerView.State state, KeylineStateList keylineStateList) {
        KeylineState endState;
        KeylineState.Keyline lastFocalKeyline;
        float f10;
        float f11;
        boolean isLayoutRtl = isLayoutRtl();
        if (isLayoutRtl) {
            endState = keylineStateList.getStartState();
        } else {
            endState = keylineStateList.getEndState();
        }
        if (isLayoutRtl) {
            lastFocalKeyline = endState.getFirstFocalKeyline();
        } else {
            lastFocalKeyline = endState.getLastFocalKeyline();
        }
        float itemCount = (state.getItemCount() - 1) * endState.getItemSize();
        if (isLayoutRtl) {
            f10 = -1.0f;
        } else {
            f10 = 1.0f;
        }
        float f12 = itemCount * f10;
        if (isLayoutRtl) {
            f11 = -lastFocalKeyline.leftOrTopPaddingShift;
        } else {
            f11 = lastFocalKeyline.rightOrBottomPaddingShift;
        }
        int parentStart = (int) ((f12 - (lastFocalKeyline.loc - getParentStart())) + (getParentEnd() - lastFocalKeyline.loc) + f11);
        if (isLayoutRtl) {
            return Math.min(0, parentStart);
        }
        return Math.max(0, parentStart);
    }

    private static int calculateShouldScrollBy(int i10, int i11, int i12, int i13) {
        int i14 = i11 + i10;
        if (i14 < i12) {
            return i12 - i11;
        }
        if (i14 > i13) {
            return i13 - i11;
        }
        return i10;
    }

    private int calculateStartScroll(@NonNull KeylineStateList keylineStateList) {
        KeylineState startState;
        KeylineState.Keyline firstFocalKeyline;
        boolean isLayoutRtl = isLayoutRtl();
        if (isLayoutRtl) {
            startState = keylineStateList.getEndState();
        } else {
            startState = keylineStateList.getStartState();
        }
        if (isLayoutRtl) {
            firstFocalKeyline = startState.getLastFocalKeyline();
        } else {
            firstFocalKeyline = startState.getFirstFocalKeyline();
        }
        return (int) (getParentStart() - addStart(firstFocalKeyline.loc, startState.getItemSize() / 2.0f));
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        int orientation = getOrientation();
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        Log.d(TAG, "Unknown focus request:" + i10);
                        return Integer.MIN_VALUE;
                    } else if (orientation == 1) {
                        return 1;
                    } else {
                        return Integer.MIN_VALUE;
                    }
                } else if (orientation != 0) {
                    return Integer.MIN_VALUE;
                } else {
                    if (isLayoutRtl()) {
                        return -1;
                    }
                    return 1;
                }
            } else if (orientation == 1) {
                return -1;
            } else {
                return Integer.MIN_VALUE;
            }
        } else if (orientation != 0) {
            return Integer.MIN_VALUE;
        } else {
            if (!isLayoutRtl()) {
                return -1;
            }
            return 1;
        }
    }

    private void fill(RecyclerView.Recycler recycler, RecyclerView.State state) {
        removeAndRecycleOutOfBoundsViews(recycler);
        if (getChildCount() == 0) {
            addViewsStart(recycler, this.currentFillStartPosition - 1);
            addViewsEnd(recycler, state, this.currentFillStartPosition);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            addViewsStart(recycler, position - 1);
            addViewsEnd(recycler, state, position2 + 1);
        }
        validateChildOrderIfDebugging();
    }

    private View getChildClosestToEnd() {
        int childCount;
        if (isLayoutRtl()) {
            childCount = 0;
        } else {
            childCount = getChildCount() - 1;
        }
        return getChildAt(childCount);
    }

    private View getChildClosestToStart() {
        int i10;
        if (isLayoutRtl()) {
            i10 = getChildCount() - 1;
        } else {
            i10 = 0;
        }
        return getChildAt(i10);
    }

    private int getContainerSize() {
        if (isHorizontal()) {
            return getContainerWidth();
        }
        return getContainerHeight();
    }

    private float getDecoratedCenterWithMargins(View view) {
        int centerY;
        Rect rect = new Rect();
        super.getDecoratedBoundsWithMargins(view, rect);
        if (isHorizontal()) {
            centerY = rect.centerX();
        } else {
            centerY = rect.centerY();
        }
        return centerY;
    }

    private int getItemMargins() {
        int i10;
        int i11;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) getChildAt(0).getLayoutParams();
        if (this.orientationHelper.orientation == 0) {
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i11 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i11 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i10 + i11;
    }

    private KeylineState getKeylineStateForPosition(int i10) {
        KeylineState keylineState;
        Map<Integer, KeylineState> map = this.keylineStatePositionMap;
        if (map != null && (keylineState = map.get(Integer.valueOf(MathUtils.clamp(i10, 0, Math.max(0, getItemCount() - 1))))) != null) {
            return keylineState;
        }
        return this.keylineStateList.getDefaultState();
    }

    private int getLeftOrTopPaddingForKeylineShift() {
        if (!getClipToPadding() && this.carouselStrategy.isContained()) {
            if (getOrientation() == 1) {
                return getPaddingTop();
            }
            return getPaddingLeft();
        }
        return 0;
    }

    private float getMaskedItemSizeForLocOffset(float f10, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.leftOrTop;
        float f11 = keyline.maskedItemSize;
        KeylineState.Keyline keyline2 = keylineRange.rightOrBottom;
        return AnimationUtils.lerp(f11, keyline2.maskedItemSize, keyline.locOffset, keyline2.locOffset, f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParentBottom() {
        return this.orientationHelper.getParentBottom();
    }

    private int getParentEnd() {
        return this.orientationHelper.getParentEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParentLeft() {
        return this.orientationHelper.getParentLeft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParentRight() {
        return this.orientationHelper.getParentRight();
    }

    private int getParentStart() {
        return this.orientationHelper.getParentStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParentTop() {
        return this.orientationHelper.getParentTop();
    }

    private int getRightOrBottomPaddingForKeylineShift() {
        if (!getClipToPadding() && this.carouselStrategy.isContained()) {
            if (getOrientation() == 1) {
                return getPaddingBottom();
            }
            return getPaddingRight();
        }
        return 0;
    }

    private int getScrollOffsetForPosition(int i10, KeylineState keylineState) {
        if (isLayoutRtl()) {
            return (int) (((getContainerSize() - keylineState.getLastFocalKeyline().loc) - (i10 * keylineState.getItemSize())) - (keylineState.getItemSize() / 2.0f));
        }
        return (int) (((i10 * keylineState.getItemSize()) - keylineState.getFirstFocalKeyline().loc) + (keylineState.getItemSize() / 2.0f));
    }

    private int getSmallestScrollOffsetToFocalKeyline(int i10, @NonNull KeylineState keylineState) {
        int i11;
        int i12 = Integer.MAX_VALUE;
        for (KeylineState.Keyline keyline : keylineState.getFocalKeylines()) {
            float itemSize = (i10 * keylineState.getItemSize()) + (keylineState.getItemSize() / 2.0f);
            if (isLayoutRtl()) {
                i11 = (int) ((getContainerSize() - keyline.loc) - itemSize);
            } else {
                i11 = (int) (itemSize - keyline.loc);
            }
            int i13 = i11 - this.scrollOffset;
            if (Math.abs(i12) > Math.abs(i13)) {
                i12 = i13;
            }
        }
        return i12;
    }

    private static KeylineRange getSurroundingKeylineRange(List<KeylineState.Keyline> list, float f10, boolean z10) {
        float f11;
        float f12 = Float.MAX_VALUE;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        float f13 = -3.4028235E38f;
        float f14 = Float.MAX_VALUE;
        float f15 = Float.MAX_VALUE;
        for (int i14 = 0; i14 < list.size(); i14++) {
            KeylineState.Keyline keyline = list.get(i14);
            if (z10) {
                f11 = keyline.locOffset;
            } else {
                f11 = keyline.loc;
            }
            float abs = Math.abs(f11 - f10);
            if (f11 <= f10 && abs <= f12) {
                i10 = i14;
                f12 = abs;
            }
            if (f11 > f10 && abs <= f14) {
                i12 = i14;
                f14 = abs;
            }
            if (f11 <= f15) {
                i11 = i14;
                f15 = f11;
            }
            if (f11 > f13) {
                i13 = i14;
                f13 = f11;
            }
        }
        if (i10 == -1) {
            i10 = i11;
        }
        if (i12 == -1) {
            i12 = i13;
        }
        return new KeylineRange(list.get(i10), list.get(i12));
    }

    private boolean isLocOffsetOutOfFillBoundsEnd(float f10, KeylineRange keylineRange) {
        float addStart = addStart(f10, getMaskedItemSizeForLocOffset(f10, keylineRange) / 2.0f);
        if (isLayoutRtl()) {
            if (addStart >= 0.0f) {
                return false;
            }
        } else if (addStart <= getContainerSize()) {
            return false;
        }
        return true;
    }

    private boolean isLocOffsetOutOfFillBoundsStart(float f10, KeylineRange keylineRange) {
        float addEnd = addEnd(f10, getMaskedItemSizeForLocOffset(f10, keylineRange) / 2.0f);
        if (isLayoutRtl()) {
            if (addEnd <= getContainerSize()) {
                return false;
            }
        } else if (addEnd >= 0.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i10 != i14 || i11 != i15 || i12 != i16 || i13 != i17) {
            view.post(new Runnable() { // from class: com.google.android.material.carousel.a
                @Override // java.lang.Runnable
                public final void run() {
                    CarouselLayoutManager.this.refreshKeylineState();
                }
            });
        }
    }

    private void logChildrenIfDebugging() {
        if (this.isDebuggingEnabled && Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "internal representation of views on the screen");
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                float decoratedCenterWithMargins = getDecoratedCenterWithMargins(childAt);
                Log.d(TAG, "item position " + getPosition(childAt) + ", center:" + decoratedCenterWithMargins + ", child index:" + i10);
            }
            Log.d(TAG, "==============");
        }
    }

    private ChildCalculations makeChildCalculations(RecyclerView.Recycler recycler, float f10, int i10) {
        View viewForPosition = recycler.getViewForPosition(i10);
        measureChildWithMargins(viewForPosition, 0, 0);
        float addEnd = addEnd(f10, this.currentKeylineState.getItemSize() / 2.0f);
        KeylineRange surroundingKeylineRange = getSurroundingKeylineRange(this.currentKeylineState.getKeylines(), addEnd, false);
        return new ChildCalculations(viewForPosition, addEnd, calculateChildOffsetCenterForLocation(viewForPosition, addEnd, surroundingKeylineRange), surroundingKeylineRange);
    }

    private float offsetChild(View view, float f10, float f11, Rect rect) {
        float addEnd = addEnd(f10, f11);
        KeylineRange surroundingKeylineRange = getSurroundingKeylineRange(this.currentKeylineState.getKeylines(), addEnd, false);
        float calculateChildOffsetCenterForLocation = calculateChildOffsetCenterForLocation(view, addEnd, surroundingKeylineRange);
        super.getDecoratedBoundsWithMargins(view, rect);
        updateChildMaskForLocation(view, addEnd, surroundingKeylineRange);
        this.orientationHelper.offsetChild(view, rect, f11, calculateChildOffsetCenterForLocation);
        return calculateChildOffsetCenterForLocation;
    }

    private void recalculateKeylineStateList(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(0);
        measureChildWithMargins(viewForPosition, 0, 0);
        KeylineState onFirstChildMeasuredWithMargins = this.carouselStrategy.onFirstChildMeasuredWithMargins(this, viewForPosition);
        if (isLayoutRtl()) {
            onFirstChildMeasuredWithMargins = KeylineState.reverse(onFirstChildMeasuredWithMargins, getContainerSize());
        }
        this.keylineStateList = KeylineStateList.from(this, onFirstChildMeasuredWithMargins, getItemMargins(), getLeftOrTopPaddingForKeylineShift(), getRightOrBottomPaddingForKeylineShift());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshKeylineState() {
        this.keylineStateList = null;
        requestLayout();
    }

    private void removeAndRecycleOutOfBoundsViews(RecyclerView.Recycler recycler) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float decoratedCenterWithMargins = getDecoratedCenterWithMargins(childAt);
            if (!isLocOffsetOutOfFillBoundsStart(decoratedCenterWithMargins, getSurroundingKeylineRange(this.currentKeylineState.getKeylines(), decoratedCenterWithMargins, true))) {
                break;
            }
            removeAndRecycleView(childAt, recycler);
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float decoratedCenterWithMargins2 = getDecoratedCenterWithMargins(childAt2);
            if (isLocOffsetOutOfFillBoundsEnd(decoratedCenterWithMargins2, getSurroundingKeylineRange(this.currentKeylineState.getKeylines(), decoratedCenterWithMargins2, true))) {
                removeAndRecycleView(childAt2, recycler);
            } else {
                return;
            }
        }
    }

    private void scrollBy(RecyclerView recyclerView, int i10) {
        if (isHorizontal()) {
            recyclerView.scrollBy(i10, 0);
        } else {
            recyclerView.scrollBy(0, i10);
        }
    }

    private void setCarouselAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Carousel);
            setCarouselAlignment(obtainStyledAttributes.getInt(R.styleable.Carousel_carousel_alignment, 0));
            setOrientation(obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 0));
            obtainStyledAttributes.recycle();
        }
    }

    private void updateChildMaskForLocation(View view, float f10, KeylineRange keylineRange) {
        if (!(view instanceof Maskable)) {
            return;
        }
        KeylineState.Keyline keyline = keylineRange.leftOrTop;
        float f11 = keyline.mask;
        KeylineState.Keyline keyline2 = keylineRange.rightOrBottom;
        float lerp = AnimationUtils.lerp(f11, keyline2.mask, keyline.loc, keyline2.loc, f10);
        float height = view.getHeight();
        float width = view.getWidth();
        RectF maskRect = this.orientationHelper.getMaskRect(height, width, AnimationUtils.lerp(0.0f, height / 2.0f, 0.0f, 1.0f, lerp), AnimationUtils.lerp(0.0f, width / 2.0f, 0.0f, 1.0f, lerp));
        float calculateChildOffsetCenterForLocation = calculateChildOffsetCenterForLocation(view, f10, keylineRange);
        RectF rectF = new RectF(calculateChildOffsetCenterForLocation - (maskRect.width() / 2.0f), calculateChildOffsetCenterForLocation - (maskRect.height() / 2.0f), calculateChildOffsetCenterForLocation + (maskRect.width() / 2.0f), (maskRect.height() / 2.0f) + calculateChildOffsetCenterForLocation);
        RectF rectF2 = new RectF(getParentLeft(), getParentTop(), getParentRight(), getParentBottom());
        if (this.carouselStrategy.isContained()) {
            this.orientationHelper.containMaskWithinBounds(maskRect, rectF, rectF2);
        }
        this.orientationHelper.moveMaskOnEdgeOutsideBounds(maskRect, rectF, rectF2);
        ((Maskable) view).setMaskRectF(maskRect);
    }

    private void updateCurrentKeylineStateForScrollOffset(@NonNull KeylineStateList keylineStateList) {
        KeylineState startState;
        int i10 = this.maxScroll;
        int i11 = this.minScroll;
        if (i10 <= i11) {
            if (isLayoutRtl()) {
                startState = keylineStateList.getEndState();
            } else {
                startState = keylineStateList.getStartState();
            }
            this.currentKeylineState = startState;
        } else {
            this.currentKeylineState = keylineStateList.getShiftedState(this.scrollOffset, i11, i10);
        }
        this.debugItemDecoration.setKeylines(this.currentKeylineState.getKeylines());
    }

    private void updateItemCount() {
        int itemCount = getItemCount();
        int i10 = this.lastItemCount;
        if (itemCount != i10 && this.keylineStateList != null) {
            if (this.carouselStrategy.shouldRefreshKeylineState(this, i10)) {
                refreshKeylineState();
            }
            this.lastItemCount = itemCount;
        }
    }

    private void validateChildOrderIfDebugging() {
        if (this.isDebuggingEnabled && getChildCount() >= 1) {
            int i10 = 0;
            while (i10 < getChildCount() - 1) {
                int position = getPosition(getChildAt(i10));
                int i11 = i10 + 1;
                int position2 = getPosition(getChildAt(i11));
                if (position <= position2) {
                    i10 = i11;
                } else {
                    logChildrenIfDebugging();
                    throw new IllegalStateException("Detected invalid child order. Child at index [" + i10 + "] had adapter position [" + position + "] and child at index [" + i11 + "] had adapter position [" + position2 + "].");
                }
            }
        }
    }

    int calculateScrollDeltaToMakePositionVisible(int i10) {
        return (int) (this.scrollOffset - getScrollOffsetForPosition(i10, getKeylineStateForPosition(i10)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return !isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() != 0 && this.keylineStateList != null && getItemCount() > 1) {
            return (int) (getWidth() * (this.keylineStateList.getDefaultState().getItemSize() / computeHorizontalScrollRange(state)));
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return this.scrollOffset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return this.maxScroll - this.minScroll;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @Nullable
    public PointF computeScrollVectorForPosition(int i10) {
        if (this.keylineStateList == null) {
            return null;
        }
        int offsetToScrollToPosition = getOffsetToScrollToPosition(i10, getKeylineStateForPosition(i10));
        if (isHorizontal()) {
            return new PointF(offsetToScrollToPosition, 0.0f);
        }
        return new PointF(0.0f, offsetToScrollToPosition);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() != 0 && this.keylineStateList != null && getItemCount() > 1) {
            return (int) (getHeight() * (this.keylineStateList.getDefaultState().getItemSize() / computeVerticalScrollRange(state)));
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return this.scrollOffset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return this.maxScroll - this.minScroll;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // com.google.android.material.carousel.Carousel
    public int getCarouselAlignment() {
        return this.carouselAlignment;
    }

    @Override // com.google.android.material.carousel.Carousel
    public int getContainerHeight() {
        return getHeight();
    }

    @Override // com.google.android.material.carousel.Carousel
    public int getContainerWidth() {
        return getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        float f10;
        super.getDecoratedBoundsWithMargins(view, rect);
        float centerY = rect.centerY();
        if (isHorizontal()) {
            centerY = rect.centerX();
        }
        float maskedItemSizeForLocOffset = getMaskedItemSizeForLocOffset(centerY, getSurroundingKeylineRange(this.currentKeylineState.getKeylines(), centerY, true));
        float f11 = 0.0f;
        if (isHorizontal()) {
            f10 = (rect.width() - maskedItemSizeForLocOffset) / 2.0f;
        } else {
            f10 = 0.0f;
        }
        if (!isHorizontal()) {
            f11 = (rect.height() - maskedItemSizeForLocOffset) / 2.0f;
        }
        rect.set((int) (rect.left + f10), (int) (rect.top + f11), (int) (rect.right - f10), (int) (rect.bottom - f11));
    }

    int getOffsetToScrollToPosition(int i10, @NonNull KeylineState keylineState) {
        return getScrollOffsetForPosition(i10, keylineState) - this.scrollOffset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOffsetToScrollToPositionForSnap(int i10, boolean z10) {
        int i11;
        int offsetToScrollToPosition = getOffsetToScrollToPosition(i10, this.keylineStateList.getShiftedState(this.scrollOffset, this.minScroll, this.maxScroll, true));
        if (this.keylineStatePositionMap != null) {
            i11 = getOffsetToScrollToPosition(i10, getKeylineStateForPosition(i10));
        } else {
            i11 = offsetToScrollToPosition;
        }
        if (z10 && Math.abs(i11) < Math.abs(offsetToScrollToPosition)) {
            return i11;
        }
        return offsetToScrollToPosition;
    }

    public int getOrientation() {
        return this.orientationHelper.orientation;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.google.android.material.carousel.Carousel
    public boolean isHorizontal() {
        if (this.orientationHelper.orientation == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLayoutRtl() {
        if (isHorizontal() && getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void measureChildWithMargins(@NonNull View view, int i10, int i11) {
        float f10;
        float f11;
        if (view instanceof Maskable) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            Rect rect = new Rect();
            calculateItemDecorationsForChild(view, rect);
            int i12 = i10 + rect.left + rect.right;
            int i13 = i11 + rect.top + rect.bottom;
            KeylineStateList keylineStateList = this.keylineStateList;
            if (keylineStateList != null && this.orientationHelper.orientation == 0) {
                f10 = keylineStateList.getDefaultState().getItemSize();
            } else {
                f10 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            }
            KeylineStateList keylineStateList2 = this.keylineStateList;
            if (keylineStateList2 != null && this.orientationHelper.orientation == 1) {
                f11 = keylineStateList2.getDefaultState().getItemSize();
            } else {
                f11 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            }
            view.measure(RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i12, (int) f10, canScrollHorizontally()), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i13, (int) f11, canScrollVertically()));
            return;
        }
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.carouselStrategy.initialize(recyclerView.getContext());
        refreshKeylineState();
        recyclerView.addOnLayoutChangeListener(this.recyclerViewSizeChangeListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        recyclerView.removeOnLayoutChangeListener(this.recyclerViewSizeChangeListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(@NonNull View view, int i10, @NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection;
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        if (convertFocusDirectionToLayoutDirection == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            addViewAtPosition(recycler, getPosition(getChildAt(0)) - 1, 0);
            return getChildClosestToStart();
        } else if (getPosition(view) == getItemCount() - 1) {
            return null;
        } else {
            addViewAtPosition(recycler, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
            return getChildClosestToEnd();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        updateItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        updateItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z10;
        int i10;
        if (state.getItemCount() > 0 && getContainerSize() > 0.0f) {
            boolean isLayoutRtl = isLayoutRtl();
            if (this.keylineStateList == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                recalculateKeylineStateList(recycler);
            }
            int calculateStartScroll = calculateStartScroll(this.keylineStateList);
            int calculateEndScroll = calculateEndScroll(state, this.keylineStateList);
            if (isLayoutRtl) {
                i10 = calculateEndScroll;
            } else {
                i10 = calculateStartScroll;
            }
            this.minScroll = i10;
            if (isLayoutRtl) {
                calculateEndScroll = calculateStartScroll;
            }
            this.maxScroll = calculateEndScroll;
            if (z10) {
                this.scrollOffset = calculateStartScroll;
                this.keylineStatePositionMap = this.keylineStateList.getKeylineStateForPositionMap(getItemCount(), this.minScroll, this.maxScroll, isLayoutRtl());
                int i11 = this.currentEstimatedPosition;
                if (i11 != -1) {
                    this.scrollOffset = getScrollOffsetForPosition(i11, getKeylineStateForPosition(i11));
                }
            }
            int i12 = this.scrollOffset;
            this.scrollOffset = i12 + calculateShouldScrollBy(0, i12, this.minScroll, this.maxScroll);
            this.currentFillStartPosition = MathUtils.clamp(this.currentFillStartPosition, 0, state.getItemCount());
            updateCurrentKeylineStateForScrollOffset(this.keylineStateList);
            detachAndScrapAttachedViews(recycler);
            fill(recycler, state);
            this.lastItemCount = getItemCount();
            return;
        }
        removeAndRecycleAllViews(recycler);
        this.currentFillStartPosition = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        if (getChildCount() == 0) {
            this.currentFillStartPosition = 0;
        } else {
            this.currentFillStartPosition = getPosition(getChildAt(0));
        }
        validateChildOrderIfDebugging();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z10, boolean z11) {
        int smallestScrollOffsetToFocalKeyline;
        if (this.keylineStateList == null || (smallestScrollOffsetToFocalKeyline = getSmallestScrollOffsetToFocalKeyline(getPosition(view), getKeylineStateForPosition(getPosition(view)))) == 0) {
            return false;
        }
        scrollBy(recyclerView, getSmallestScrollOffsetToFocalKeyline(getPosition(view), this.keylineStateList.getShiftedState(this.scrollOffset + calculateShouldScrollBy(smallestScrollOffsetToFocalKeyline, this.scrollOffset, this.minScroll, this.maxScroll), this.minScroll, this.maxScroll)));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollHorizontally()) {
            return scrollBy(i10, recycler, state);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        this.currentEstimatedPosition = i10;
        if (this.keylineStateList == null) {
            return;
        }
        this.scrollOffset = getScrollOffsetForPosition(i10, getKeylineStateForPosition(i10));
        this.currentFillStartPosition = MathUtils.clamp(i10, 0, Math.max(0, getItemCount() - 1));
        updateCurrentKeylineStateForScrollOffset(this.keylineStateList);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollVertically()) {
            return scrollBy(i10, recycler, state);
        }
        return 0;
    }

    public void setCarouselAlignment(int i10) {
        this.carouselAlignment = i10;
        refreshKeylineState();
    }

    public void setCarouselStrategy(@NonNull CarouselStrategy carouselStrategy) {
        this.carouselStrategy = carouselStrategy;
        refreshKeylineState();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setDebuggingEnabled(@NonNull RecyclerView recyclerView, boolean z10) {
        this.isDebuggingEnabled = z10;
        recyclerView.removeItemDecoration(this.debugItemDecoration);
        if (z10) {
            recyclerView.addItemDecoration(this.debugItemDecoration);
        }
        recyclerView.invalidateItemDecorations();
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        CarouselOrientationHelper carouselOrientationHelper = this.orientationHelper;
        if (carouselOrientationHelper == null || i10 != carouselOrientationHelper.orientation) {
            this.orientationHelper = CarouselOrientationHelper.createOrientationHelper(this, i10);
            refreshKeylineState();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.google.android.material.carousel.CarouselLayoutManager.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateDxToMakeVisible(View view, int i11) {
                if (CarouselLayoutManager.this.keylineStateList != null && CarouselLayoutManager.this.isHorizontal()) {
                    CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                    return carouselLayoutManager.calculateScrollDeltaToMakePositionVisible(carouselLayoutManager.getPosition(view));
                }
                return 0;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateDyToMakeVisible(View view, int i11) {
                if (CarouselLayoutManager.this.keylineStateList != null && !CarouselLayoutManager.this.isHorizontal()) {
                    CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                    return carouselLayoutManager.calculateScrollDeltaToMakePositionVisible(carouselLayoutManager.getPosition(view));
                }
                return 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            @Nullable
            public PointF computeScrollVectorForPosition(int i11) {
                return CarouselLayoutManager.this.computeScrollVectorForPosition(i11);
            }
        };
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    public CarouselLayoutManager(@NonNull CarouselStrategy carouselStrategy) {
        this(carouselStrategy, 0);
    }

    public CarouselLayoutManager(@NonNull CarouselStrategy carouselStrategy, int i10) {
        this.isDebuggingEnabled = false;
        this.debugItemDecoration = new DebugItemDecoration();
        this.currentFillStartPosition = 0;
        this.recyclerViewSizeChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.carousel.b
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                CarouselLayoutManager.this.lambda$new$0(view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.currentEstimatedPosition = -1;
        this.carouselAlignment = 0;
        setCarouselStrategy(carouselStrategy);
        setOrientation(i10);
    }

    private int scrollBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        float f10;
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        if (this.keylineStateList == null) {
            recalculateKeylineStateList(recycler);
        }
        int calculateShouldScrollBy = calculateShouldScrollBy(i10, this.scrollOffset, this.minScroll, this.maxScroll);
        this.scrollOffset += calculateShouldScrollBy;
        updateCurrentKeylineStateForScrollOffset(this.keylineStateList);
        float itemSize = this.currentKeylineState.getItemSize() / 2.0f;
        float calculateChildStartForFill = calculateChildStartForFill(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        if (isLayoutRtl()) {
            f10 = this.currentKeylineState.getLastFocalKeyline().locOffset;
        } else {
            f10 = this.currentKeylineState.getFirstFocalKeyline().locOffset;
        }
        float f11 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            float abs = Math.abs(f10 - offsetChild(childAt, calculateChildStartForFill, itemSize, rect));
            if (childAt != null && abs < f11) {
                this.currentEstimatedPosition = getPosition(childAt);
                f11 = abs;
            }
            calculateChildStartForFill = addEnd(calculateChildStartForFill, this.currentKeylineState.getItemSize());
        }
        fill(recycler, state);
        return calculateShouldScrollBy;
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.isDebuggingEnabled = false;
        this.debugItemDecoration = new DebugItemDecoration();
        this.currentFillStartPosition = 0;
        this.recyclerViewSizeChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.carousel.b
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i112, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                CarouselLayoutManager.this.lambda$new$0(view, i112, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.currentEstimatedPosition = -1;
        this.carouselAlignment = 0;
        setCarouselStrategy(new MultiBrowseCarouselStrategy());
        setCarouselAttributes(context, attributeSet);
    }
}
