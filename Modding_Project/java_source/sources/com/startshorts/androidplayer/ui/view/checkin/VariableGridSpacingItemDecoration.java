package com.startshorts.androidplayer.ui.view.checkin;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VariableGridSpacingItemDecoration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VariableGridSpacingItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private final int f47189a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f47190b;

    public VariableGridSpacingItemDecoration(int i10, boolean z10) {
        this.f47189a = i10;
        this.f47190b = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        GridLayoutManager gridLayoutManager;
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            gridLayoutManager = (GridLayoutManager) layoutManager;
        } else {
            gridLayoutManager = null;
        }
        if (gridLayoutManager == null) {
            return;
        }
        int spanCount = gridLayoutManager.getSpanCount();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams");
        GridLayoutManager.LayoutParams layoutParams2 = (GridLayoutManager.LayoutParams) layoutParams;
        int spanSize = layoutParams2.getSpanSize();
        int spanIndex = layoutParams2.getSpanIndex();
        int spanGroupIndex = gridLayoutManager.getSpanSizeLookup().getSpanGroupIndex(childAdapterPosition, spanCount);
        if (this.f47190b) {
            int i10 = this.f47189a;
            outRect.left = i10 - ((spanIndex * i10) / spanCount);
            outRect.right = ((spanIndex + spanSize) * i10) / spanCount;
            if (spanGroupIndex == 0) {
                outRect.top = i10;
            } else {
                outRect.top = 0;
            }
            outRect.bottom = i10;
            return;
        }
        int i11 = this.f47189a;
        outRect.left = (spanIndex * i11) / spanCount;
        outRect.right = i11 - (((spanIndex + spanSize) * i11) / spanCount);
        if (spanGroupIndex > 0) {
            outRect.top = i11;
        }
    }
}
