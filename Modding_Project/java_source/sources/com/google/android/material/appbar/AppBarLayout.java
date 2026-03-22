package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    private static final int DEF_STYLE_RES = R.style.Widget_Design_AppBarLayout;
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private final float appBarElevation;
    private Behavior behavior;
    private int currentOffset;
    private int downPreScrollRange;
    private int downScrollRange;
    private final boolean hasLiftOnScrollColor;
    private boolean haveChildWithInterpolator;
    @Nullable
    private WindowInsetsCompat lastInsets;
    private boolean liftOnScroll;
    @Nullable
    private ValueAnimator liftOnScrollColorAnimator;
    private final long liftOnScrollColorDuration;
    private final TimeInterpolator liftOnScrollColorInterpolator;
    @Nullable
    private ValueAnimator.AnimatorUpdateListener liftOnScrollColorUpdateListener;
    private final List<LiftOnScrollListener> liftOnScrollListeners;
    @Nullable
    private WeakReference<View> liftOnScrollTargetView;
    @IdRes
    private int liftOnScrollTargetViewId;
    private boolean liftable;
    private boolean liftableOverride;
    private boolean lifted;
    private List<BaseOnOffsetChangedListener> listeners;
    private int pendingAction;
    @Nullable
    private Drawable statusBarForeground;
    @Nullable
    private Integer statusBarForegroundOriginalColor;
    private int[] tmpStatesArray;
    private int totalScrollRange;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        @Nullable
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private BaseDragCallback onDragCallback;
        private SavedState savedState;

        /* loaded from: classes5.dex */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t10);
        }

        public BaseBehavior() {
        }

        private void addAccessibilityDelegateIfNeeded(final CoordinatorLayout coordinatorLayout, @NonNull final T t10) {
            if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, new AccessibilityDelegateCompat() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                    @Override // androidx.core.view.AccessibilityDelegateCompat
                    public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                        View childWithScrollingBehavior;
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                        accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                        if (t10.getTotalScrollRange() == 0 || (childWithScrollingBehavior = BaseBehavior.this.getChildWithScrollingBehavior(coordinatorLayout)) == null || !BaseBehavior.this.childrenHaveScrollFlags(t10)) {
                            return;
                        }
                        if (BaseBehavior.this.getTopBottomOffsetForScrollingSibling() != (-t10.getTotalScrollRange())) {
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                            accessibilityNodeInfoCompat.setScrollable(true);
                        }
                        if (BaseBehavior.this.getTopBottomOffsetForScrollingSibling() != 0) {
                            if (childWithScrollingBehavior.canScrollVertically(-1)) {
                                if ((-t10.getDownNestedPreScrollRange()) != 0) {
                                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                                    accessibilityNodeInfoCompat.setScrollable(true);
                                    return;
                                }
                                return;
                            }
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                            accessibilityNodeInfoCompat.setScrollable(true);
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.core.view.AccessibilityDelegateCompat
                    public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
                        if (i10 == 4096) {
                            t10.setExpanded(false);
                            return true;
                        } else if (i10 == 8192) {
                            if (BaseBehavior.this.getTopBottomOffsetForScrollingSibling() != 0) {
                                View childWithScrollingBehavior = BaseBehavior.this.getChildWithScrollingBehavior(coordinatorLayout);
                                if (childWithScrollingBehavior.canScrollVertically(-1)) {
                                    int i11 = -t10.getDownNestedPreScrollRange();
                                    if (i11 != 0) {
                                        BaseBehavior.this.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) t10, childWithScrollingBehavior, 0, i11, new int[]{0, 0}, 1);
                                        return true;
                                    }
                                } else {
                                    t10.setExpanded(true);
                                    return true;
                                }
                            }
                            return false;
                        } else {
                            return super.performAccessibilityAction(view, i10, bundle);
                        }
                    }
                });
            }
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, float f10) {
            int height;
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i10);
            float abs2 = Math.abs(f10);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t10.getHeight()) + 1.0f) * 150.0f);
            }
            animateOffsetWithDuration(coordinatorLayout, t10, i10, height);
        }

        private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final T t10, int i10, int i11) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i10) {
                ValueAnimator valueAnimator = this.offsetAnimator;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.offsetAnimator.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.offsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.offsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.offsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator4) {
                        BaseBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, t10, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.offsetAnimator.setDuration(Math.min(i11, 600));
            this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i10);
            this.offsetAnimator.start();
        }

        private int calculateSnapOffset(int i10, int i11, int i12) {
            if (i10 >= (i11 + i12) / 2) {
                return i12;
            }
            return i11;
        }

        private boolean canScrollChildren(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view) {
            if (t10.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= t10.getHeight()) {
                return true;
            }
            return false;
        }

        private static boolean checkFlag(int i10, int i11) {
            if ((i10 & i11) == i11) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean childrenHaveScrollFlags(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (((LayoutParams) appBarLayout.getChildAt(i10).getLayoutParams()).scrollFlags != 0) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        private View findFirstScrollingChild(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private static View getAppBarChildOnOffset(@NonNull AppBarLayout appBarLayout, int i10) {
            int abs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int getChildIndexOnOffset(@NonNull T t10, int i10) {
            int childCount = t10.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = t10.getChildAt(i11);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (checkFlag(layoutParams.getScrollFlags(), 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i12 = -i10;
                if (top <= i12 && bottom >= i12) {
                    return i11;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public View getChildWithScrollingBehavior(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        private int interpolateOffset(@NonNull T t10, int i10) {
            int abs = Math.abs(i10);
            int childCount = t10.getChildCount();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    break;
                }
                View childAt = t10.getChildAt(i12);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    if (scrollInterpolator != null) {
                        int scrollFlags = layoutParams.getScrollFlags();
                        if ((scrollFlags & 1) != 0) {
                            i11 = childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                            if ((scrollFlags & 2) != 0) {
                                i11 -= ViewCompat.getMinimumHeight(childAt);
                            }
                        }
                        if (ViewCompat.getFitsSystemWindows(childAt)) {
                            i11 -= t10.getTopInset();
                        }
                        if (i11 > 0) {
                            float f10 = i11;
                            return Integer.signum(i10) * (childAt.getTop() + Math.round(f10 * scrollInterpolator.getInterpolation((abs - childAt.getTop()) / f10)));
                        }
                    }
                } else {
                    i12++;
                }
            }
            return i10;
        }

        private boolean shouldJumpElevationState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            List<View> dependents = coordinatorLayout.getDependents(t10);
            int size = dependents.size();
            for (int i10 = 0; i10 < size; i10++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i10).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) behavior).getOverlayTop() == 0) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            int topInset = t10.getTopInset() + t10.getPaddingTop();
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling() - topInset;
            int childIndexOnOffset = getChildIndexOnOffset(t10, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = t10.getChildAt(childIndexOnOffset);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i10 = -childAt.getTop();
                    int i11 = -childAt.getBottom();
                    if (childIndexOnOffset == 0 && ViewCompat.getFitsSystemWindows(t10) && ViewCompat.getFitsSystemWindows(childAt)) {
                        i10 -= t10.getTopInset();
                    }
                    if (checkFlag(scrollFlags, 2)) {
                        i11 += ViewCompat.getMinimumHeight(childAt);
                    } else if (checkFlag(scrollFlags, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i11;
                        if (topBottomOffsetForScrollingSibling < minimumHeight) {
                            i10 = minimumHeight;
                        } else {
                            i11 = minimumHeight;
                        }
                    }
                    if (checkFlag(scrollFlags, 32)) {
                        i10 += ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i11 -= ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    animateOffsetTo(coordinatorLayout, t10, MathUtils.clamp(calculateSnapOffset(topBottomOffsetForScrollingSibling, i11, i10) + topInset, -t10.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAppBarLayoutDrawableState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, boolean z10) {
            View appBarChildOnOffset = getAppBarChildOnOffset(t10, i10);
            boolean z11 = false;
            if (appBarChildOnOffset != null) {
                int scrollFlags = ((LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                    if (i11 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i10) < (appBarChildOnOffset.getBottom() - minimumHeight) - t10.getTopInset()) : (-i10) >= (appBarChildOnOffset.getBottom() - minimumHeight) - t10.getTopInset()) {
                        z11 = true;
                    }
                }
            }
            if (t10.isLiftOnScroll()) {
                z11 = t10.shouldLift(findFirstScrollingChild(coordinatorLayout));
            }
            boolean liftedState = t10.setLiftedState(z11);
            if (z10 || (liftedState && shouldJumpElevationState(coordinatorLayout, t10))) {
                if (t10.getBackground() != null) {
                    t10.getBackground().jumpToCurrentState();
                }
                if (t10.getForeground() != null) {
                    t10.getForeground().jumpToCurrentState();
                }
                if (t10.getStateListAnimator() != null) {
                    t10.getStateListAnimator().jumpToCurrentState();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ boolean canDragView(View view) {
            return canDragView((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getMaxDragOffset(@NonNull View view) {
            return getMaxDragOffset((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getScrollRangeForDragFling(@NonNull View view) {
            return getScrollRangeForDragFling((BaseBehavior<T>) ((AppBarLayout) view));
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.offsetAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            onFlingFinished(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
            return onLayoutChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
            return onMeasureChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i10, i11, i12, i13);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i10, int i11, int[] iArr, int i12) {
            onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i10, i11, iArr, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            onNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i10, i11, i12, i13, i14, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, Parcelable parcelable) {
            onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            return onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, View view3, int i10, int i11) {
            return onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i10, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i10) {
            onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i10);
        }

        void restoreScrollState(@Nullable SavedState savedState, boolean z10) {
            if (this.savedState == null || z10) {
                this.savedState = savedState;
            }
        }

        @Nullable
        SavedState saveScrollState(@Nullable Parcelable parcelable, @NonNull T t10) {
            boolean z10;
            boolean z11;
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t10.getChildCount();
            boolean z12 = false;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t10.getChildAt(i10);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    if (topAndBottomOffset == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    savedState.fullyExpanded = z10;
                    if (!z10 && (-topAndBottomOffset) >= t10.getTotalScrollRange()) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    savedState.fullyScrolled = z11;
                    savedState.firstVisibleChildIndex = i10;
                    if (bottom == ViewCompat.getMinimumHeight(childAt) + t10.getTopInset()) {
                        z12 = true;
                    }
                    savedState.firstVisibleChildAtMinimumHeight = z12;
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.onDragCallback = baseDragCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12) {
            return setHeaderTopBottomOffset(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i10, i11, i12);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        boolean canDragView(T t10) {
            BaseDragCallback baseDragCallback = this.onDragCallback;
            if (baseDragCallback != null) {
                return baseDragCallback.canDrag(t10);
            }
            WeakReference<View> weakReference = this.lastNestedScrollingChildRef;
            if (weakReference != null) {
                View view = weakReference.get();
                return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
            }
            return true;
        }

        int getMaxDragOffset(@NonNull T t10) {
            return (-t10.getDownNestedScrollRange()) + t10.getTopInset();
        }

        int getScrollRangeForDragFling(@NonNull T t10) {
            return t10.getTotalScrollRange();
        }

        void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            snapToChildIfNeeded(coordinatorLayout, t10);
            if (t10.isLiftOnScroll()) {
                t10.setLiftedState(t10.shouldLift(findFirstScrollingChild(coordinatorLayout)));
            }
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10) {
            int round;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t10, i10);
            int pendingAction = t10.getPendingAction();
            SavedState savedState = this.savedState;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z10 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i11 = -t10.getUpNestedPreScrollRange();
                        if (z10) {
                            animateOffsetTo(coordinatorLayout, t10, i11, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t10, i11);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z10) {
                            animateOffsetTo(coordinatorLayout, t10, 0, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t10, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                setHeaderTopBottomOffset(coordinatorLayout, t10, -t10.getTotalScrollRange());
            } else if (savedState.fullyExpanded) {
                setHeaderTopBottomOffset(coordinatorLayout, t10, 0);
            } else {
                View childAt = t10.getChildAt(savedState.firstVisibleChildIndex);
                int i12 = -childAt.getBottom();
                if (this.savedState.firstVisibleChildAtMinimumHeight) {
                    round = ViewCompat.getMinimumHeight(childAt) + t10.getTopInset();
                } else {
                    round = Math.round(childAt.getHeight() * this.savedState.firstVisibleChildPercentageShown);
                }
                setHeaderTopBottomOffset(coordinatorLayout, t10, i12 + round);
            }
            t10.resetPendingAction();
            this.savedState = null;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t10.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, t10, getTopAndBottomOffset(), 0, true);
            t10.onOffsetChanged(getTopAndBottomOffset());
            addAccessibilityDelegateIfNeeded(coordinatorLayout, t10);
            return onLayoutChild;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, int i12, int i13) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t10.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t10, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t10, i10, i11, i12, i13);
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int i14;
            if (i11 != 0) {
                if (i11 < 0) {
                    i13 = -t10.getTotalScrollRange();
                    i14 = t10.getDownNestedPreScrollRange() + i13;
                } else {
                    i13 = -t10.getUpNestedPreScrollRange();
                    i14 = 0;
                }
                int i15 = i13;
                int i16 = i14;
                if (i15 != i16) {
                    iArr[1] = scroll(coordinatorLayout, t10, i11, i15, i16);
                }
            }
            if (t10.isLiftOnScroll()) {
                t10.setLiftedState(t10.shouldLift(view));
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            if (i13 < 0) {
                iArr[1] = scroll(coordinatorLayout, t10, i13, -t10.getDownNestedScrollRange(), 0);
            }
            if (i13 == 0) {
                addAccessibilityDelegateIfNeeded(coordinatorLayout, t10);
            }
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                restoreScrollState((SavedState) parcelable, true);
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t10, this.savedState.getSuperState());
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t10, parcelable);
            this.savedState = null;
        }

        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t10);
            SavedState saveScrollState = saveScrollState(onSaveInstanceState, t10);
            return saveScrollState == null ? onSaveInstanceState : saveScrollState;
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z10 = (i10 & 2) != 0 && (t10.isLiftOnScroll() || canScrollChildren(coordinatorLayout, t10, view));
            if (z10 && (valueAnimator = this.offsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i11;
            return z10;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10) {
            if (this.lastStartedType == 0 || i10 == 1) {
                snapToChildIfNeeded(coordinatorLayout, t10);
                if (t10.isLiftOnScroll()) {
                    t10.setLiftedState(t10.shouldLift(view));
                }
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, int i12) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i13 = 0;
            if (i11 != 0 && topBottomOffsetForScrollingSibling >= i11 && topBottomOffsetForScrollingSibling <= i12) {
                int clamp = MathUtils.clamp(i10, i11, i12);
                if (topBottomOffsetForScrollingSibling != clamp) {
                    int interpolateOffset = t10.hasChildWithInterpolator() ? interpolateOffset(t10, clamp) : clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
                    int i14 = topBottomOffsetForScrollingSibling - clamp;
                    this.offsetDelta = clamp - interpolateOffset;
                    if (topAndBottomOffset) {
                        while (i13 < t10.getChildCount()) {
                            LayoutParams layoutParams = (LayoutParams) t10.getChildAt(i13).getLayoutParams();
                            ChildScrollEffect scrollEffect = layoutParams.getScrollEffect();
                            if (scrollEffect != null && (layoutParams.getScrollFlags() & 1) != 0) {
                                scrollEffect.onOffsetChanged(t10, t10.getChildAt(i13), getTopAndBottomOffset());
                            }
                            i13++;
                        }
                    }
                    if (!topAndBottomOffset && t10.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t10);
                    }
                    t10.onOffsetChanged(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, t10, clamp, clamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                    i13 = i14;
                }
            } else {
                this.offsetDelta = 0;
            }
            addAccessibilityDelegateIfNeeded(coordinatorLayout, t10);
            return i13;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes5.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                @NonNull
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                @NonNull
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                @Nullable
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            };
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t10, int i10);
    }

    /* loaded from: classes5.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes5.dex */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i10);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i10, i11, i12, i13);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i10, i11, iArr, i12);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i10, i11, i12, i13, i14, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i10, int i11) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i10, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i10);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z10) {
            super.setHorizontalOffsetEnabled(z10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i10) {
            return super.setLeftAndRightOffset(i10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i10) {
            return super.setTopAndBottomOffset(i10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z10) {
            super.setVerticalOffsetEnabled(z10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class ChildScrollEffect {
        public abstract void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10);
    }

    /* loaded from: classes5.dex */
    public static class CompressChildScrollEffect extends ChildScrollEffect {
        private static final float COMPRESS_DISTANCE_FACTOR = 0.3f;
        private final Rect relativeRect = new Rect();
        private final Rect ghostRect = new Rect();

        private static void updateRelativeRect(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ChildScrollEffect
        public void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10) {
            updateRelativeRect(this.relativeRect, appBarLayout, view);
            float abs = this.relativeRect.top - Math.abs(f10);
            if (abs <= 0.0f) {
                float clamp = 1.0f - MathUtils.clamp(Math.abs(abs / this.relativeRect.height()), 0.0f, 1.0f);
                float height = (-abs) - ((this.relativeRect.height() * 0.3f) * (1.0f - (clamp * clamp)));
                view.setTranslationY(height);
                view.getDrawingRect(this.ghostRect);
                this.ghostRect.offset(0, (int) (-height));
                if (height >= this.ghostRect.height()) {
                    view.setVisibility(4);
                } else {
                    view.setVisibility(0);
                }
                ViewCompat.setClipBounds(view, this.ghostRect);
                return;
            }
            ViewCompat.setClipBounds(view, null);
            view.setTranslationY(0.0f);
            view.setVisibility(0);
        }
    }

    /* loaded from: classes5.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        public static final int SCROLL_EFFECT_COMPRESS = 1;
        public static final int SCROLL_EFFECT_NONE = 0;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
        private ChildScrollEffect scrollEffect;
        int scrollFlags;
        Interpolator scrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes5.dex */
        public @interface ScrollEffect {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes5.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.scrollFlags = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.scrollFlags = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            setScrollEffect(obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0));
            if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.scrollInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @Nullable
        private ChildScrollEffect createScrollEffectFromInt(int i10) {
            if (i10 != 1) {
                return null;
            }
            return new CompressChildScrollEffect();
        }

        @Nullable
        public ChildScrollEffect getScrollEffect() {
            return this.scrollEffect;
        }

        public int getScrollFlags() {
            return this.scrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.scrollInterpolator;
        }

        boolean isCollapsible() {
            int i10 = this.scrollFlags;
            if ((i10 & 1) == 1 && (i10 & 10) != 0) {
                return true;
            }
            return false;
        }

        public void setScrollEffect(@Nullable ChildScrollEffect childScrollEffect) {
            this.scrollEffect = childScrollEffect;
        }

        public void setScrollFlags(int i10) {
            this.scrollFlags = i10;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.scrollInterpolator = interpolator;
        }

        public void setScrollEffect(int i10) {
            this.scrollEffect = createScrollEffectFromInt(i10);
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.scrollFlags = 1;
        }

        public LayoutParams(int i10, int i11, float f10) {
            super(i10, i11, f10);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.scrollFlags = 1;
            this.scrollFlags = layoutParams.scrollFlags;
            this.scrollEffect = layoutParams.scrollEffect;
            this.scrollInterpolator = layoutParams.scrollInterpolator;
        }
    }

    /* loaded from: classes5.dex */
    public interface LiftOnScrollListener {
        void onUpdate(@Dimension float f10, @ColorInt int i10);
    }

    /* loaded from: classes5.dex */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i10);
    }

    /* loaded from: classes5.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        private static int getAppBarLayoutOffset(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).offsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        private void updateLiftedStateIfNeeded(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.setLiftedState(appBarLayout.shouldLift(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        /* bridge */ /* synthetic */ View findFirstDependency(@NonNull List list) {
            return findFirstDependency((List<View>) list);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        float getOverlapRatioForOffset(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int appBarLayoutOffset = getAppBarLayoutOffset(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (appBarLayoutOffset / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        int getScrollRange(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.getScrollRange(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            offsetChildAsNeeded(view, view2);
            updateLiftedStateIfNeeded(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
            return super.onLayoutChild(coordinatorLayout, view, i10);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, view, i10, i11, i12, i13);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z10) {
            AppBarLayout findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (findFirstDependency != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                Rect rect3 = this.tempRect1;
                rect3.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect3.contains(rect2)) {
                    findFirstDependency.setExpanded(false, !z10);
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z10) {
            super.setHorizontalOffsetEnabled(z10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i10) {
            return super.setLeftAndRightOffset(i10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i10) {
            return super.setTopAndBottomOffset(i10);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z10) {
            super.setVerticalOffsetEnabled(z10);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        AppBarLayout findFirstDependency(@NonNull List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    private void clearLiftOnScrollTargetView() {
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.liftOnScrollTargetView = null;
    }

    @Nullable
    private Integer extractStatusBarForegroundColor() {
        Drawable drawable = this.statusBarForeground;
        if (drawable instanceof MaterialShapeDrawable) {
            return Integer.valueOf(((MaterialShapeDrawable) drawable).getResolvedTintColor());
        }
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(drawable);
        if (colorStateListOrNull != null) {
            return Integer.valueOf(colorStateListOrNull.getDefaultColor());
        }
        return null;
    }

    @Nullable
    private View findLiftOnScrollTargetView(@Nullable View view) {
        int i10;
        View view2;
        if (this.liftOnScrollTargetView == null && (i10 = this.liftOnScrollTargetViewId) != -1) {
            if (view != null) {
                view2 = view.findViewById(i10);
            } else {
                view2 = null;
            }
            if (view2 == null && (getParent() instanceof ViewGroup)) {
                view2 = ((ViewGroup) getParent()).findViewById(this.liftOnScrollTargetViewId);
            }
            if (view2 != null) {
                this.liftOnScrollTargetView = new WeakReference<>(view2);
            }
        }
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private boolean hasCollapsibleChild() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((LayoutParams) getChildAt(i10).getLayoutParams()).isCollapsible()) {
                return true;
            }
        }
        return false;
    }

    private void initializeLiftOnScrollWithColor(final MaterialShapeDrawable materialShapeDrawable, @NonNull final ColorStateList colorStateList, @NonNull final ColorStateList colorStateList2) {
        final Integer colorOrNull = MaterialColors.getColorOrNull(getContext(), R.attr.colorSurface);
        this.liftOnScrollColorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppBarLayout.this.lambda$initializeLiftOnScrollWithColor$0(colorStateList, colorStateList2, materialShapeDrawable, colorOrNull, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, materialShapeDrawable);
    }

    private void initializeLiftOnScrollWithElevation(Context context, final MaterialShapeDrawable materialShapeDrawable) {
        materialShapeDrawable.initializeElevationOverlay(context);
        this.liftOnScrollColorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppBarLayout.this.lambda$initializeLiftOnScrollWithElevation$1(materialShapeDrawable, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, materialShapeDrawable);
    }

    private void invalidateScrollRanges() {
        BaseBehavior.SavedState savedState;
        Behavior behavior = this.behavior;
        if (behavior != null && this.totalScrollRange != -1 && this.pendingAction == 0) {
            savedState = behavior.saveScrollState(AbsSavedState.EMPTY_STATE, this);
        } else {
            savedState = null;
        }
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
        if (savedState != null) {
            this.behavior.restoreScrollState(savedState, false);
        }
    }

    private boolean isLiftOnScrollCompatibleBackground() {
        return getBackground() instanceof MaterialShapeDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeLiftOnScrollWithColor$0(ColorStateList colorStateList, ColorStateList colorStateList2, MaterialShapeDrawable materialShapeDrawable, Integer num, ValueAnimator valueAnimator) {
        Integer num2;
        int layer = MaterialColors.layer(colorStateList.getDefaultColor(), colorStateList2.getDefaultColor(), ((Float) valueAnimator.getAnimatedValue()).floatValue());
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(layer));
        if (this.statusBarForeground != null && (num2 = this.statusBarForegroundOriginalColor) != null && num2.equals(num)) {
            DrawableCompat.setTint(this.statusBarForeground, layer);
        }
        if (!this.liftOnScrollListeners.isEmpty()) {
            for (LiftOnScrollListener liftOnScrollListener : this.liftOnScrollListeners) {
                if (materialShapeDrawable.getFillColor() != null) {
                    liftOnScrollListener.onUpdate(0.0f, layer);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeLiftOnScrollWithElevation$1(MaterialShapeDrawable materialShapeDrawable, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        materialShapeDrawable.setElevation(floatValue);
        Drawable drawable = this.statusBarForeground;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).setElevation(floatValue);
        }
        for (LiftOnScrollListener liftOnScrollListener : this.liftOnScrollListeners) {
            liftOnScrollListener.onUpdate(floatValue, materialShapeDrawable.getResolvedTintColor());
        }
    }

    private boolean setLiftableState(boolean z10) {
        if (this.liftable != z10) {
            this.liftable = z10;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    private boolean shouldDrawStatusBarForeground() {
        if (this.statusBarForeground != null && getTopInset() > 0) {
            return true;
        }
        return false;
    }

    private boolean shouldOffsetFirstChild() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) {
            return false;
        }
        return true;
    }

    private void startLiftOnScrollColorAnimation(float f10, float f11) {
        ValueAnimator valueAnimator = this.liftOnScrollColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, f11);
        this.liftOnScrollColorAnimator = ofFloat;
        ofFloat.setDuration(this.liftOnScrollColorDuration);
        this.liftOnScrollColorAnimator.setInterpolator(this.liftOnScrollColorInterpolator);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.liftOnScrollColorUpdateListener;
        if (animatorUpdateListener != null) {
            this.liftOnScrollColorAnimator.addUpdateListener(animatorUpdateListener);
        }
        this.liftOnScrollColorAnimator.start();
    }

    private void updateWillNotDraw() {
        setWillNotDraw(!shouldDrawStatusBarForeground());
    }

    public void addLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        this.liftOnScrollListeners.add(liftOnScrollListener);
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.listeners.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.listeners.add(baseOnOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearLiftOnScrollListener() {
        this.liftOnScrollListeners.clear();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (shouldDrawStatusBarForeground()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.currentOffset);
            this.statusBarForeground.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarForeground;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.behavior = behavior;
        return behavior;
    }

    int getDownNestedPreScrollRange() {
        int i10;
        int minimumHeight;
        int i11 = this.downPreScrollRange;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = layoutParams.scrollFlags;
                if ((i13 & 5) == 5) {
                    int i14 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((i13 & 8) != 0) {
                        minimumHeight = ViewCompat.getMinimumHeight(childAt);
                    } else if ((i13 & 2) != 0) {
                        minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                    } else {
                        i10 = i14 + measuredHeight;
                        if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                            i10 = Math.min(i10, measuredHeight - getTopInset());
                        }
                        i12 += i10;
                    }
                    i10 = i14 + minimumHeight;
                    if (childCount == 0) {
                        i10 = Math.min(i10, measuredHeight - getTopInset());
                    }
                    i12 += i10;
                } else if (i12 > 0) {
                    break;
                }
            }
        }
        int max = Math.max(0, i12);
        this.downPreScrollRange = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i10 = this.downScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                int i13 = layoutParams.scrollFlags;
                if ((i13 & 1) == 0) {
                    break;
                }
                i12 += measuredHeight;
                if ((i13 & 2) != 0) {
                    i12 -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
            i11++;
        }
        int max = Math.max(0, i12);
        this.downScrollRange = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.liftOnScrollTargetViewId;
    }

    @Nullable
    public MaterialShapeDrawable getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            return (MaterialShapeDrawable) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            if (childCount >= 1) {
                minimumHeight = ViewCompat.getMinimumHeight(getChildAt(childCount - 1));
            } else {
                minimumHeight = 0;
            }
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    int getPendingAction() {
        return this.pendingAction;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.statusBarForeground;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.totalScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = layoutParams.scrollFlags;
                if ((i13 & 1) == 0) {
                    break;
                }
                i12 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if (i11 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                    i12 -= getTopInset();
                }
                if ((i13 & 2) != 0) {
                    i12 -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
            i11++;
        }
        int max = Math.max(0, i12);
        this.totalScrollRange = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.haveChildWithInterpolator;
    }

    boolean hasScrollableChildren() {
        if (getTotalScrollRange() != 0) {
            return true;
        }
        return false;
    }

    public boolean isLiftOnScroll() {
        return this.liftOnScroll;
    }

    public boolean isLifted() {
        return this.lifted;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int i11;
        int i12;
        if (this.tmpStatesArray == null) {
            this.tmpStatesArray = new int[4];
        }
        int[] iArr = this.tmpStatesArray;
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z10 = this.liftable;
        int i13 = R.attr.state_liftable;
        if (!z10) {
            i13 = -i13;
        }
        iArr[0] = i13;
        if (z10 && this.lifted) {
            i11 = R.attr.state_lifted;
        } else {
            i11 = -R.attr.state_lifted;
        }
        iArr[1] = i11;
        int i14 = R.attr.state_collapsible;
        if (!z10) {
            i14 = -i14;
        }
        iArr[2] = i14;
        if (z10 && this.lifted) {
            i12 = R.attr.state_collapsed;
        } else {
            i12 = -R.attr.state_collapsed;
        }
        iArr[3] = i12;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearLiftOnScrollTargetView();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = true;
        if (ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        invalidateScrollRanges();
        this.haveChildWithInterpolator = false;
        int childCount2 = getChildCount();
        int i14 = 0;
        while (true) {
            if (i14 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i14).getLayoutParams()).getScrollInterpolator() != null) {
                this.haveChildWithInterpolator = true;
                break;
            } else {
                i14++;
            }
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.liftableOverride) {
            if (!this.liftOnScroll && !hasCollapsibleChild()) {
                z11 = false;
            }
            setLiftableState(z11);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int measuredHeight = getMeasuredHeight();
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    measuredHeight += getTopInset();
                }
            } else {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i11));
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        invalidateScrollRanges();
    }

    void onOffsetChanged(int i10) {
        this.currentOffset = i10;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.listeners.get(i11);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i10);
                }
            }
        }
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        if (ViewCompat.getFitsSystemWindows(this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        } else {
            windowInsetsCompat2 = null;
        }
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            updateWillNotDraw();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public boolean removeLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        return this.liftOnScrollListeners.remove(liftOnScrollListener);
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list == null || baseOnOffsetChangedListener == null) {
            return;
        }
        list.remove(baseOnOffsetChangedListener);
    }

    void resetPendingAction() {
        this.pendingAction = 0;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        MaterialShapeUtils.setElevation(this, f10);
    }

    public void setExpanded(boolean z10) {
        setExpanded(z10, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z10) {
        this.liftOnScroll = z10;
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.liftOnScrollTargetViewId = -1;
        if (view == null) {
            clearLiftOnScrollTargetView();
        } else {
            this.liftOnScrollTargetView = new WeakReference<>(view);
        }
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i10) {
        this.liftOnScrollTargetViewId = i10;
        clearLiftOnScrollTargetView();
    }

    public boolean setLiftable(boolean z10) {
        this.liftableOverride = true;
        return setLiftableState(z10);
    }

    public void setLiftableOverrideEnabled(boolean z10) {
        this.liftableOverride = z10;
    }

    public boolean setLifted(boolean z10) {
        return setLiftedState(z10, true);
    }

    boolean setLiftedState(boolean z10) {
        return setLiftedState(z10, !this.liftableOverride);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 == 1) {
            super.setOrientation(i10);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        boolean z10;
        Drawable drawable2 = this.statusBarForeground;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.statusBarForeground = drawable3;
            this.statusBarForegroundOriginalColor = extractStatusBarForegroundColor();
            Drawable drawable4 = this.statusBarForeground;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.statusBarForeground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.statusBarForeground, ViewCompat.getLayoutDirection(this));
                Drawable drawable5 = this.statusBarForeground;
                if (getVisibility() == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                drawable5.setVisible(z10, false);
                this.statusBarForeground.setCallback(this);
            }
            updateWillNotDraw();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i10) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f10);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z10;
        super.setVisibility(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    boolean shouldLift(@Nullable View view) {
        View findLiftOnScrollTargetView = findLiftOnScrollTargetView(view);
        if (findLiftOnScrollTargetView != null) {
            view = findLiftOnScrollTargetView;
        }
        if (view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.statusBarForeground) {
            return false;
        }
        return true;
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public void setExpanded(boolean z10, boolean z11) {
        setExpanded(z10, z11, true);
    }

    boolean setLiftedState(boolean z10, boolean z11) {
        if (!z11 || this.lifted == z10) {
            return false;
        }
        this.lifted = z10;
        refreshDrawableState();
        if (isLiftOnScrollCompatibleBackground()) {
            if (this.hasLiftOnScrollColor) {
                startLiftOnScrollColorAnimation(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                return true;
            } else if (this.liftOnScroll) {
                startLiftOnScrollColorAnimation(z10 ? 0.0f : this.appBarElevation, z10 ? this.appBarElevation : 0.0f);
                return true;
            } else {
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private void setExpanded(boolean z10, boolean z11, boolean z12) {
        this.pendingAction = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
