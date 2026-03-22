package com.bytedance.sdk.openadsdk.component.reward.view;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
/* loaded from: classes3.dex */
public class oJ extends SnapHelper {
    private OrientationHelper ZYk;
    private OrientationHelper oJ;
    private RecyclerView tB;

    private OrientationHelper ZYk(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.ZYk;
        if (orientationHelper == null || orientationHelper.getLayoutManager() != layoutManager) {
            this.ZYk = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.ZYk;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        this.tB = recyclerView;
        super.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @NonNull
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = {0, 0};
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = oJ(view, ZYk(layoutManager));
        } else if (layoutManager.canScrollVertically()) {
            iArr[1] = oJ(view, oJ(layoutManager));
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.tB.getContext()) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.oJ.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateTimeForScrolling(int i10) {
                return Math.min(100, super.calculateTimeForScrolling(i10));
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                oJ oJVar = oJ.this;
                int[] calculateDistanceToFinalSnap = oJVar.calculateDistanceToFinalSnap(oJVar.tB.getLayoutManager(), view);
                int i10 = calculateDistanceToFinalSnap[0];
                int i11 = calculateDistanceToFinalSnap[1];
                int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
                if (calculateTimeForDeceleration > 0) {
                    action.update(i10, i11, calculateTimeForDeceleration, this.mDecelerateInterpolator);
                }
            }
        };
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(@NonNull RecyclerView.LayoutManager layoutManager) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == linearLayoutManager.getItemCount() - 1) {
            return null;
        }
        OrientationHelper oJ = oJ(layoutManager);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayoutManager.getChildAt(i11);
            int abs = Math.abs(oJ.getDecoratedStart(childAt));
            if (abs < i10) {
                view = childAt;
                i10 = abs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        int i12;
        View findSnapView = findSnapView(layoutManager);
        int i13 = -1;
        if (findSnapView == null) {
            return -1;
        }
        int position = layoutManager.getPosition(findSnapView);
        if (layoutManager.canScrollVertically()) {
            if (i11 < 0) {
                i12 = position - 1;
            } else {
                i12 = position + 1;
            }
            i13 = i12;
        }
        return Math.min(layoutManager.getItemCount() - 1, Math.max(i13, 0));
    }

    private int oJ(View view, @NonNull OrientationHelper orientationHelper) {
        int decoratedStart = orientationHelper.getDecoratedStart(view);
        return decoratedStart >= orientationHelper.getStartAfterPadding() / 2 ? decoratedStart - orientationHelper.getStartAfterPadding() : decoratedStart;
    }

    private OrientationHelper oJ(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.oJ;
        if (orientationHelper == null || orientationHelper.getLayoutManager() != layoutManager) {
            this.oJ = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.oJ;
    }
}
