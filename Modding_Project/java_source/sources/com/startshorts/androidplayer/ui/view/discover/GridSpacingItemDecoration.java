package com.startshorts.androidplayer.ui.view.discover;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GridSpacingItemDecoration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GridSpacingItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private final int f47240a;

    /* renamed from: b  reason: collision with root package name */
    private final int f47241b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f47242c;

    public GridSpacingItemDecoration(int i10, int i11, boolean z10) {
        this.f47240a = i10;
        this.f47241b = i11;
        this.f47242c = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        int i10 = this.f47240a;
        int i11 = childAdapterPosition % i10;
        if (this.f47242c) {
            int i12 = this.f47241b;
            outRect.left = i12 - ((i11 * i12) / i10);
            outRect.right = ((i11 + 1) * i12) / i10;
            if (childAdapterPosition < i10) {
                outRect.top = i12;
            }
            outRect.bottom = i12;
            return;
        }
        int i13 = this.f47241b;
        outRect.left = (i11 * i13) / i10;
        outRect.right = i13 - (((i11 + 1) * i13) / i10);
        if (childAdapterPosition >= i10) {
            outRect.top = i13;
        }
    }
}
